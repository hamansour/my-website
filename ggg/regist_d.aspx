<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regist_d.aspx.cs" Inherits="ggg.WebForm3" %>

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
        <div dir="rtl" style="height: 625px; background-color: #E8E8FF; text-align: center; font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: normal; font-style: normal; color: #000066; width: 690px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="62px" ImageUrl="~/icon/loghome.png" PostBackUrl="~/login.aspx" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="175px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="179px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            ...لتسجيل الدخول الرجاء ادخال ...<br />
            <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="#CC0000" Text="رقم الهاتف او عضوية النقابة غير صحيح ، او الاشتراك في التطبيق اولا" Visible="False"></asp:Label>
            <br />
            <br />
            رقم الهاتف<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="283px"></asp:TextBox>
            <br />
            <br />
            رقم عضوية النقابة<br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="283px"></asp:TextBox>
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/icon/login.png" Width="194px" OnClick="ImageButton1_Click" />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="42px" ImageUrl="~/icon/re.png" Width="250px" PostBackUrl="~/join_d.aspx" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
