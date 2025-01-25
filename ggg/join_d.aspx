<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="join_d.aspx.cs" Inherits="ggg.WebForm22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 628px;
            width: 689px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div dir="rtl" style="height: 625px; background-color: #E8E8FF; text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: normal; font-style: normal; color: #000066; width: 690px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="62px" ImageUrl="~/icon/loghome.png" PostBackUrl="~/login.aspx" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="202px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="198px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="#CC0000" Text="&quot;رقم العضوية غير صحيح أو مستخدم، إذا كنت مسجلاً يمكنك الدخول مباشرة.&quot;






" Visible="False"></asp:Label>
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            لتسجيل في التطبيق الرجاء ادخال البيانات<br />
            <asp:Panel ID="Panel1" runat="server" Height="62px" Width="688px">
                &nbsp;&nbsp;&nbsp; رقم عضوية النقابة&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            رقم الهاتف&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; الاســـــــم<br />
                <asp:TextBox ID="d_no" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="190px"></asp:TextBox>
                &nbsp;
                <asp:TextBox ID="d_phon" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="220px"></asp:TextBox>
                &nbsp;
                <asp:TextBox ID="d_name" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="220px"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel2" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; سنوات الخبرة&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; البريد الالكتروني&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; السيرة الذاتية<br />
                <asp:TextBox ID="d_exp" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="190px"></asp:TextBox>
                &nbsp;
                <asp:TextBox ID="d_mail" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="220px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="d_cv" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="220px"></asp:TextBox>
            </asp:Panel>
&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; التخصص&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; الصورة الشخصية&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="d_spe" runat="server" Width="241px">
                 <asp:ListItem Text="طب الأطفال" Value="1"></asp:ListItem>
    <asp:ListItem Text="طب الأسنان" Value="2"></asp:ListItem>
    <asp:ListItem Text="الطب النفسي" Value="3"></asp:ListItem>
    <asp:ListItem Text="طب جراحة القلب، والأوعية الدموية" Value="4"></asp:ListItem>
    <asp:ListItem Text="الطب العام" Value="5"></asp:ListItem>
    <asp:ListItem Text="طب العيون" Value="6"></asp:ListItem>
    <asp:ListItem Text="طب المخ، والأعصاب" Value="7"></asp:ListItem>
    <asp:ListItem Text="الباطنة، والجهاز الهضمي" Value="8"></asp:ListItem>
    <asp:ListItem Text="نساء" Value="9"></asp:ListItem>
    <asp:ListItem Text="مسالك" Value="10"></asp:ListItem>
    <asp:ListItem Text="طب العظام" Value="11"></asp:ListItem>
    <asp:ListItem Text="طب الأورام" Value="12"></asp:ListItem>
    <asp:ListItem Text="طب الجلدية" Value="13"></asp:ListItem>
    <asp:ListItem Text="طب الغدد" Value="14"></asp:ListItem>
    <asp:ListItem Text="طب أنف، وأذن، وحنجرة" Value="15"></asp:ListItem>

            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="d_img" runat="server" Width="265px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="49px" ImageUrl="~/icon/re.png" Width="263px" OnClick="ImageButton2_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
