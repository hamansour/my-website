<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="ggg.WebForm33" %>

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
            <asp:ImageButton ID="ImageButton4" runat="server" Height="66px" ImageUrl="~/icon/exit.png" PostBackUrl="~/login.aspx" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="202px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="198px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            ...مرحبا بك في دليل أطباء مدينة&nbsp; مصراته...<br />
            <asp:Label ID="Label1" runat="server" Font-Size="X-Small" ForeColor="#CC0000" Text="هذا الطبيب غير موجود، تأكد من الاسم أو ابحث في التخصصات" Visible="False"></asp:Label>
            <br />
            ادخل اسم الطبيب&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#E8E8FF" BorderColor="#000066" ForeColor="#000066" Height="37px" Width="283px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/icon/search.png" Width="147px" OnClick="ImageButton1_Click1" />
&nbsp;<br />
            <br />
            أو اختر التخصص<br />
            <br />
            <asp:ImageButton ID="ImageButton5" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/1.png" Width="88px" OnClick="ImageButton5_Click" />
&nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/10.png" Width="88px" OnClick="ImageButton6_Click" />
&nbsp;<asp:ImageButton ID="ImageButton7" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/11.png" Width="88px" OnClick="ImageButton7_Click" />
&nbsp;<asp:ImageButton ID="ImageButton8" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/12.png" Width="88px" OnClick="ImageButton8_Click" />
&nbsp;
            <asp:ImageButton ID="ImageButton14" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/5.png" Width="88px" OnClick="ImageButton14_Click" />
&nbsp;
            <asp:ImageButton ID="ImageButton9" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/13.png" Width="77px" OnClick="ImageButton9_Click" />
&nbsp;<asp:ImageButton ID="ImageButton11" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/2.png" Width="88px" OnClick="ImageButton11_Click" />
            <br />
            <asp:ImageButton ID="ImageButton10" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/14.png" Width="88px" OnClick="ImageButton10_Click" />
&nbsp;
            <asp:ImageButton ID="ImageButton13" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/4.png" Width="88px" OnClick="ImageButton13_Click" />
            <asp:ImageButton ID="ImageButton12" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/3.png" Width="88px" OnClick="ImageButton12_Click" />
            <asp:ImageButton ID="ImageButton15" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/6.png" Width="88px" OnClick="ImageButton15_Click" />
&nbsp;<asp:ImageButton ID="ImageButton16" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/7.png" Width="88px" OnClick="ImageButton16_Click" />
&nbsp;<asp:ImageButton ID="ImageButton17" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/8.png" Width="88px" OnClick="ImageButton17_Click" />
&nbsp;<asp:ImageButton ID="ImageButton18" runat="server" ForeColor="#000066" Height="100px" ImageUrl="~/pic/9.png" Width="88px" OnClick="ImageButton18_Click" />
            <br />
        </div>
    </form>
</body>
</html>
