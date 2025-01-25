<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_home.aspx.cs" Inherits="ggg.WebForm55" %>

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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="66px" ImageUrl="~/icon/exit.png" PostBackUrl="~/login.aspx" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="161px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="160px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            ...مرحبا بك في دليل أطباء مدينة&nbsp; مصراته...<br />
            <asp:Image ID="d_image" runat="server" Height="59px" ImageUrl="~/icon/Default.png" Width="65px" />
&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#660033" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; لإضـــــافــــــة أو تعديــــل المواعيــــــــد<br />
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; اسم المصحة&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; اليوم&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; التوقيت من&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; إلى
            <br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#E8E8FF" BorderColor="#000066" Font-Size="Small" Height="36px" Width="173px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="ListBox1" runat="server" Height="36px" Rows="1" Width="90px">
                <asp:ListItem>السبت</asp:ListItem>
                <asp:ListItem>الاحد</asp:ListItem>
                <asp:ListItem>الثنين</asp:ListItem>
                <asp:ListItem>الثلاثاء</asp:ListItem>
                <asp:ListItem>الاربعاء</asp:ListItem>
                <asp:ListItem>الخميس</asp:ListItem>
                <asp:ListItem>الجمعة</asp:ListItem>
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#E8E8FF" BorderColor="#000066" Font-Size="Small" Height="36px" TextMode="Time" Width="96px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BackColor="#E8E8FF" BorderColor="#000066" Font-Size="Small" Height="36px" TextMode="Time" Width="102px"></asp:TextBox>
            &nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/icon/add.png" Width="119px" OnClick="ImageButton5_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center" Width="678px" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="ClinicName" HeaderText="اسم العيادة" SortExpression="ClinicName" />
                    <asp:BoundField DataField="Day" HeaderText="اليوم" SortExpression="Day" />
                    <asp:BoundField DataField="StartTime" HeaderText="وقت البداية" SortExpression="StartTime" />
                    <asp:BoundField DataField="EndTime" HeaderText="وقت النهاية" SortExpression="EndTime" />
                    <asp:ButtonField ButtonType="Image" CommandName="Delete" ImageUrl="~/icon/delet.png" Text="حذف">
                    <ControlStyle Height="35px" Width="80px" />
                    </asp:ButtonField>
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
