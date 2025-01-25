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
    public partial class WebForm88 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            if (!IsPostBack)
            {
                // التحقق من وجود اسم التخصص في الجلسة
                if (Session["Specialization"] != null)
                {
                    string specialization = Session["Specialization"].ToString();
                    Label1.Text = "التخصص: " + specialization;

                    // تحميل بيانات الأطباء
                    LoadDoctors(specialization);
                }
                else
                {
                    Label1.Text = "لم يتم تحديد تخصص.";
                }
            }
        }

        private void LoadDoctors(string specialization)
        {
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT d_Id, Name FROM doctor WHERE Specialization = @Specialization";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Specialization", specialization);

                    try
                    {
                        con.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable doctorsTable = new DataTable();
                        adapter.Fill(doctorsTable);

                        GridView1.DataSource = doctorsTable;
                        GridView1.DataBind();
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "حدث خطأ أثناء تحميل البيانات: " + ex.Message;
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectDoctor")
            {
                // الحصول على رقم الصف
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // التحقق من أن الصف موجود
                if (rowIndex >= 0 && rowIndex < GridView1.Rows.Count)
                {
                    // الحصول على رقم الطبيب من DataKeys
                    string doctorId = GridView1.DataKeys[rowIndex].Value.ToString();

                    // الحصول على اسم الطبيب من العمود الأول
                    string doctorName = GridView1.Rows[rowIndex].Cells[0].Text;

                    // تخزين اسم الطبيب ورقمه في الجلسة
                    Session["doctor_name"] = doctorName;
                    Session["doctor_id"] = doctorId;

                    // إعادة التوجيه إلى صفحة "doctor_home.aspx"
                    Response.Redirect("doctor_user.aspx");
                }
            }
        }

    }
}
