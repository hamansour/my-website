using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.Sql;

namespace ggg
{
    public partial class WebForm77 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            if (!IsPostBack)
            {
                // التحقق من وجود بيانات الجلسة
                if (Session["doctor_id"] != null && Session["doctor_name"] != null)
                {
                    string doctorId = Session["doctor_id"].ToString();
                    string doctorName = Session["doctor_name"].ToString();

                    // تعبئة اسم الطبيب
                    Label1.Text = "اسم الطبيب: " + doctorName;

                    // تحميل بيانات الطبيب والمواعيد
                    LoadDoctorDetails(doctorId);
                }
                else
                {
                    // إذا لم تكن الجلسة موجودة، الرجوع إلى صفحة تسجيل الدخول
                    Response.Redirect("login.aspx");
                }
            }
        }

        private void LoadDoctorDetails(string doctorId)
        {
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    // جلب بيانات الطبيب
                    string doctorQuery = "SELECT Email, CV, image FROM doctor WHERE d_Id = @d_Id";
                    using (SqlCommand cmd = new SqlCommand(doctorQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@d_Id", doctorId);

                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // تعبئة الحقول
                                Label2.Text = "البريد الإلكتروني: " + (reader["Email"] != DBNull.Value ? reader["Email"].ToString() : "لا يوجد بريد إلكتروني");
                                Label3.Text = "السيرة الذاتية: " + (reader["CV"] != DBNull.Value ? reader["CV"].ToString() : "لا توجد سيرة ذاتية");

                                // ضبط صورة الطبيب
                                if (reader["image"] != DBNull.Value)
                                {
                                    byte[] imageData = (byte[])reader["image"]; // الحصول على بيانات الصورة
                                    string base64Image = Convert.ToBase64String(imageData); // تحويل الصورة إلى Base64
                                    d_image.ImageUrl = "data:image/png;base64," + base64Image; // تعيين الصورة
                                }
                                else
                                {
                                    // استخدام الصورة الافتراضية إذا لم توجد صورة
                                    d_image.ImageUrl = "~/icon/Default.png";
                                }
                            }
                        }
                    }


                    // جلب مواعيد الطبيب
                    LoadDoctorAppointments(con, doctorId);
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ أثناء تحميل البيانات: {ex.Message}');", true);
                }
            }
        }

        private void LoadDoctorAppointments(SqlConnection con, string doctorId)
        {
            string appointmentsQuery = "SELECT ClinicName, Day, StartTime, EndTime FROM Appointments WHERE d_id = @d_id";

            using (SqlCommand cmd = new SqlCommand(appointmentsQuery, con))
            {
                cmd.Parameters.AddWithValue("@d_id", doctorId);

                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    DataTable appointmentsTable = new DataTable();
                    adapter.Fill(appointmentsTable);

                    // ربط البيانات بـ GridView
                    GridView1.DataSource = appointmentsTable;
                    GridView1.DataBind();
                }
            }
        }
    }
}