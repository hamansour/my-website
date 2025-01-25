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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            // إخفاء رسالة الخطأ عند تحميل الصفحة
            Label1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            // تحقق من أن المستخدم أدخل رقم العضوية ورقم الهاتف
            if (string.IsNullOrWhiteSpace(TextBox2.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                // عرض رسالة خطأ
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('يرجى إدخال رقم العضوية ورقم الهاتف.');", true);
                return;
            }

            // الاتصال بقاعدة البيانات
            //  string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            //string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    // استعلام مع معاملات مُعلمة (Parameterized Query)
                    string query = "SELECT d_Id, PhoneNumber, Name FROM doctor WHERE d_Id = @d_Id AND PhoneNumber = @PhoneNumber";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // إضافة المعاملات
                        cmd.Parameters.AddWithValue("@d_Id", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", TextBox1.Text);

                        // فتح الاتصال
                        con.Open();

                        // قراءة البيانات باستخدام SqlDataReader
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    // تخزين رقم العضوية واسم الطبيب في الجلسة لاستخدامها في الصفحات الأخرى
                                    Session["doctor_id"] = reader["d_Id"].ToString();
                                    Session["doctor_name"] = reader["Name"].ToString();
                                }

                                // إعادة التوجيه إلى صفحة الطبيب الرئيسية
                                Response.Redirect("doctor_home.aspx");
                            }
                            else
                            {
                                // عرض رسالة للمستخدم إذا لم يتم العثور على رقم العضوية أو رقم الهاتف
                                Label1.Visible = true;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // معالجة أي أخطاء أثناء الاتصال بقاعدة البيانات
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ: {ex.Message}');", true);
                }
            }
        }
    }
}
