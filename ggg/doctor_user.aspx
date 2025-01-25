<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_user.aspx.cs" Inherits="ggg.WebForm77" %>

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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton5" runat="server" Height="60px" ImageUrl="~/icon/loghome.png" PostBackUrl="~/user_home.aspx" Width="60px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/icon/exit.png" PostBackUrl="~/login.aspx" Width="70px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="161px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="160px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Image ID="d_image" runat="server" Height="59px" ImageUrl="~/icon/Default.png" Width="65px" />
&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#660033" Text="Label"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#663300" Text="Label"></asp:Label>
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#000066" Text="Label"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center" Width="678px" >
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="ClinicName" HeaderText="اسم العيادة" SortExpression="ClinicName" />
                    <asp:BoundField DataField="Day" HeaderText="اليوم" SortExpression="Day" />
                    <asp:BoundField DataField="StartTime" HeaderText="وقت البداية" SortExpression="StartTime" />
                    <asp:BoundField DataField="EndTime" HeaderText="وقت النهاية" SortExpression="EndTime" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MisrataDoctorsConnectionString %>" SelectCommand="SELECT [ClinicName], [Day], [StartTime], [EndTime] FROM [Appointments]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
