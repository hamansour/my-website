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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            Label1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            // تحقق من أن المستخدم أدخل رقم هاتف
            if (string.IsNullOrWhiteSpace(phonn.Text))
            {
                // عرض رسالة خطأ
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('يرجى إدخال رقم الهاتف.');", true);
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
                    // استعلام مع معاملات مُعلمة (Parameterized Query)
                    string query = "SELECT phon FROM [user] WHERE phon = @phon";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@phon", phonn.Text);

                        // فتح الاتصال
                        con.Open();

                        // قراءة البيانات
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    Session["user_phon"] = reader["phon"].ToString();
                                }

                                // الانتقال إلى صفحة المستخدم
                                Response.Redirect("user_home.aspx");
                            }
                            else
                            {
                                // عرض رسالة للمستخدم إذا لم يتم العثور على رقم الهاتف
                                Label1.Visible=true;
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

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}
