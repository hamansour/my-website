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
    public partial class WebForm55 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            // تحقق من إذا كان المستخدم قد سجل الدخول عبر رقم العضوية
            if (Session["doctor_id"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            // عرض اسم الطبيب في Label1
            if (!IsPostBack)
            {
                Label1.Text = "أهلاً بك دكتور، " + Session["doctor_name"].ToString();

                // عرض صورة الطبيب في Image1
                ShowDoctorImage();

                // عرض جدول المواعيد للطبيب
                ShowAppointments();
            }
        }

        private void ShowDoctorImage()
        {
            string doctorId = Session["doctor_id"].ToString();
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    string query = "SELECT Image FROM doctor WHERE d_Id = @d_Id";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@d_Id", doctorId);

                        con.Open();

                        var result = cmd.ExecuteScalar();

                        if (result != DBNull.Value)
                        {
                            byte[] imageBytes = (byte[])result;
                            d_image.ImageUrl = "data:image/jpeg;base64," + Convert.ToBase64String(imageBytes);
                        }
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ في تحميل الصورة: {ex.Message}');", true);
                }
            }
        }

        private void ShowAppointments()
        {
            string doctorId = Session["doctor_id"].ToString();
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            //  string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    string query = "SELECT ClinicName, Day, StartTime, EndTime FROM Appointments WHERE d_id = @d_Id";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@d_Id", doctorId);

                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ في تحميل المواعيد: {ex.Message}');", true);
                }
            }
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string doctorId = Session["doctor_id"].ToString();
            string clinicName = TextBox1.Text; // اسم العيادة
            string day = ListBox1.SelectedValue; // اليوم المختار
            string startTime = TextBox2.Text; // وقت البداية
            string endTime = TextBox3.Text; // وقت النهاية
            string currentDate = DateTime.Now.ToString("yyyy-MM-dd"); // وقت الإضافة

            // التحقق من الإدخالات
            if (string.IsNullOrEmpty(clinicName) || string.IsNullOrEmpty(day) || string.IsNullOrEmpty(startTime) || string.IsNullOrEmpty(endTime))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('الرجاء إدخال جميع الحقول.');", true);
                return;
            }

            //string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    string query = @"
                INSERT INTO Appointments (d_id, ClinicName, Day, StartTime, EndTime, LastUpdated)
                VALUES (@d_id, @ClinicName, @Day, @StartTime, @EndTime, @LastUpdated)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@d_id", doctorId);
                        cmd.Parameters.AddWithValue("@ClinicName", clinicName);
                        cmd.Parameters.AddWithValue("@Day", day);
                        cmd.Parameters.AddWithValue("@StartTime", TimeSpan.Parse(startTime)); // تحويل النص إلى وقت
                        cmd.Parameters.AddWithValue("@EndTime", TimeSpan.Parse(endTime)); // تحويل النص إلى وقت
                        cmd.Parameters.AddWithValue("@LastUpdated", currentDate);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('تمت إضافة الموعد بنجاح.');", true);
                    }

                    // تحديث الـ GridView
                    ShowAppointments();
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ أثناء إضافة الموعد: {ex.Message}');", true);
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                // الحصول على القيم من الصف المحذوف
                string clinicName = GridView1.Rows[e.RowIndex].Cells[0].Text;
                string day = GridView1.Rows[e.RowIndex].Cells[1].Text;
                string startTime = GridView1.Rows[e.RowIndex].Cells[2].Text;

                // إعداد اتصال قاعدة البيانات
                // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
                // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = @"
                DELETE FROM Appointments 
                WHERE ClinicName = @ClinicName 
                  AND Day = @Day 
                  AND StartTime = @StartTime";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@ClinicName", clinicName);
                        cmd.Parameters.AddWithValue("@Day", day);
                        cmd.Parameters.AddWithValue("@StartTime", TimeSpan.Parse(startTime));

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                // رسالة نجاح
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('تم حذف الموعد بنجاح.');", true);

                // تحديث GridView
                ShowAppointments();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ أثناء حذف الموعد: {ex.Message}');", true);
            }
        }

    }
}