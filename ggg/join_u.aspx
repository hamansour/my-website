<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="join_u.aspx.cs" Inherits="ggg.WebForm11" %>

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
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="62px" ImageUrl="~/icon/loghome.png" PostBackUrl="~/login.aspx" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="202px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="198px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="#CC0000" Text="&quot;رقم الهاتف مستخدم من قبل، إذا كنت قد سجلت في التطبيق يمكنك الدخول مباشرة.&quot;






" Visible="False"></asp:Label>
            <br />
            <br />
            لتسجيل في التطبيق الرجاء ادخال <br />
            <br />
            رقم الهاتف<br />
            <asp:TextBox ID="phonn" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="283px"></asp:TextBox>
            <br />
            <br />
            اسم المستخدم<br />
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="283px"></asp:TextBox>
            <br />
            <br />
            <br />
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
