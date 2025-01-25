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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            Label1.Visible = false;

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            // تحقق من أن المستخدم أدخل رقم الهاتف و الاسم
            if (string.IsNullOrWhiteSpace(phonn.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                // عرض رسالة خطأ
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('يرجى إدخال رقم الهاتف والاسم.');", true);
                return;
            }

            // اتصال بقاعدة البيانات
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctors"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    // التحقق من وجود المستخدم في قاعدة البيانات
                    string checkQuery = "SELECT phon FROM [user] WHERE phon = @phon";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@phon", phonn.Text);
                        con.Open();

                        // قراءة البيانات
                        using (SqlDataReader reader = checkCmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                // إذا كان رقم الهاتف موجوداً، عرض رسالة
                                Label1.Visible = true;
                            }
                            else
                            {
                                // إغلاق القارئ قبل إعادة فتح الاتصال
                                reader.Close();

                                // إذا لم يكن رقم الهاتف موجودًا، إضافة المستخدم
                                string insertQuery = "INSERT INTO [user] (phon, name) VALUES (@phon, @name)";
                                using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                                {
                                    // إضافة المعاملات
                                    insertCmd.Parameters.AddWithValue("@phon", phonn.Text);
                                    insertCmd.Parameters.AddWithValue("@name", TextBox2.Text);

                                    // تنفيذ الاستعلام
                                    int rowsAffected = insertCmd.ExecuteNonQuery();
                                    if (rowsAffected > 0)
                                    {
                                        // إذا تم إضافة المستخدم بنجاح، الانتقال إلى صفحة المستخدم
                                        Session["user_phon"] = phonn.Text;
                                        Response.Redirect("user_home.aspx");
                                    }
                                    else
                                    {
                                        // في حال حدوث مشكلة أثناء الإضافة
                                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('حدث خطأ أثناء إضافة البيانات.');", true);
                                    }
                                }
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