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
    public partial class WebForm33 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          // AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~"));

            Label1.Visible = false;
        }

       
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            // الحصول على الاسم المدخل في TextBox1
            string doctorName = TextBox1.Text.Trim();

            if (string.IsNullOrEmpty(doctorName))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('الرجاء إدخال اسم الطبيب للبحث.');", true);
                return;
            }

            // إعداد اتصال قاعدة البيانات
            // string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Misrata Doctors;Integrated Security=true";
            // string connectionString = ConfigurationManager.ConnectionStrings["MisrataDoctors"].ConnectionString;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MisrataDoctors.mdf;Integrated Security=True;Connect Timeout=30;";


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    string query = "SELECT d_Id, Name FROM doctor WHERE Name = @Name";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", doctorName);

                        con.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // إذا تم العثور على الطبيب
                                string doctorId = reader["d_Id"].ToString();
                                string doctorFullName = reader["Name"].ToString();

                                // إنشاء الجلسات
                                Session["doctor_id"] = doctorId;
                                Session["doctor_name"] = doctorFullName;

                                // الانتقال إلى صفحة doctor_user.aspx
                                Response.Redirect("doctor_user.aspx");
                            }
                            else
                            {
                                // إذا لم يتم العثور على الطبيب
                                Label1.Visible = true;
                                // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('الطبيب غير مشترك في التطبيق.');", true);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('حدث خطأ أثناء البحث عن الطبيب: {ex.Message}');", true);
                }
            }
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "الباطنة، والجهاز الهضمي"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب العظام"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب الأورام"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب الجلدية"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب العيون"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب الغدد"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب الأسنان"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب أنف، وأذن، وحنجرة"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب جراحة القلب، والأوعية الدموية"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب النفسي"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب المخ، والأعصاب"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "طب الأطفال"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "نساء"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {
            // تعيين اسم التخصص يدويًا في الكود
            string specialization = "مسالك"; // على سبيل المثال يمكنك تغيير هذا إلى أي تخصص تريده

            // تخزين اسم التخصص في الـ Session
            Session["Specialization"] = specialization;

            // إعادة توجيه المستخدم إلى صفحة "Specialty.aspx"
            Response.Redirect("Specialty.aspx");
        }
    }
}