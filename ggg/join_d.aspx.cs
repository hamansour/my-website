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
    public partial class WebForm22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

        }

        //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            // الحصول على القيم المدخلة من الحقول
            string doctorId = d_no.Text;
            string name = d_name.Text;
            string email = d_mail.Text;
            string phoneNumber = d_phon.Text;
            // string specialization = d_spe.SelectedValue;
            string specialization = d_spe.SelectedItem.Text;

            string cv = d_cv.Text;
            string yearsOfExperience = d_exp.Text;

            // الصورة الافتراضية
            byte[] imageBytes = null;
            if (d_img.HasFile)
            {
                using (System.IO.Stream fs = d_img.PostedFile.InputStream)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(fs))
                    {
                        imageBytes = br.ReadBytes((int)fs.Length);
                    }
                }
            }
            else
            {
                // قراءة الصورة الافتراضية
                string defaultImagePath = Server.MapPath("~/icon/Default.png");
                imageBytes = System.IO.File.ReadAllBytes(defaultImagePath);
            }

            // التحقق من إدخال جميع الحقول المطلوبة باستثناء الحقول الاختيارية (البريد الإلكتروني)
            if (string.IsNullOrEmpty(doctorId) || string.IsNullOrEmpty(name) || string.IsNullOrEmpty(phoneNumber) || string.IsNullOrEmpty(specialization) || string.IsNullOrEmpty(yearsOfExperience))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('الرجاء إدخال جميع الحقول المطلوبة.');", true);
                return;
            }

            // إعداد اتصال قاعدة البيانات
            //  string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctorsConnectionString"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    string query = @"
                INSERT INTO doctor (d_Id, Name, Email, Image, PhoneNumber, Specialization, CV, YearsOfExperience)
                VALUES (@d_Id, @Name, @Email, @Image, @PhoneNumber, @Specialization, @CV, @YearsOfExperience)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@d_Id", doctorId);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", string.IsNullOrEmpty(email) ? (object)DBNull.Value : email);
                        cmd.Parameters.AddWithValue("@Image", imageBytes);
                        cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        cmd.Parameters.AddWithValue("@Specialization", specialization);
                        cmd.Parameters.AddWithValue("@CV", string.IsNullOrEmpty(cv) ? (object)DBNull.Value : cv);
                        cmd.Parameters.AddWithValue("@YearsOfExperience", yearsOfExperience);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('تم التسجيل بنجاح يمكنك الآن تسجيل الدخول.');", true);
                        Response.Redirect("regist_d.aspx");
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ أثناء التسجيل: {ex.Message}');", true);
                }
            }
        }



    }
}