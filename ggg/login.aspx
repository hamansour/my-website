<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ggg.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="manifest" href="<%= ResolveUrl("~/manifest.json") %>" />

    <title></title>
    <style type="text/css">

        #form1 {
            height: 628px;
            width: 689px;
        }
    </style>
     <!-- تسجيل Service Worker -->
    <script>
        if ('serviceWorker' in navigator) {
            navigator.serviceWorker.register('sw.js')
                .then(registration => {
                    console.log('Service Worker registered:', registration);
                })
                .catch(error => {
                    console.error('Service Worker registration failed:', error);
                });
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div dir="rtl" style="height: 625px; background-color: #E8E8FF; text-align: center; font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: normal; font-style: normal; color: #000066; width: 690px;">
            <asp:Image ID="Image1" runat="server" Height="287px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="280px" />
            <br />
            <br />
            ...مرحبا بك في دليل أطباء مدينة&nbsp; مصراته...<br />
            <br />
            ... للاستفادة من خدمات التطبيق، يرجى تسجيل الدخول كطبيب أو مستخدم ....<br />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="52px" ImageUrl="~/icon/doctor.png" Width="160px" PostBackUrl="~/regist_d.aspx" />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="52px" ImageUrl="~/icon/user.png" Width="160px" PostBackUrl="~/regist_u.aspx" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
