<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Specialty.aspx.cs" Inherits="ggg.WebForm88" %>

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
            <asp:ImageButton ID="ImageButton5" runat="server" Height="60px" ImageUrl="~/icon/loghome.png" PostBackUrl="~/user_home.aspx" Width="60px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="58px" ImageUrl="~/icon/exit.png" PostBackUrl="~/login.aspx" Width="65px" style="margin-bottom: 5px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="202px" ImageAlign="Middle" ImageUrl="~/pic/Picture1.png" Width="198px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#660033" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center" Width="581px"  OnRowCommand="GridView1_RowCommand" DataKeyNames="d_Id">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="اسم الطبيب" />
                    <asp:ButtonField Text="المواعيد" CommandName="SelectDoctor" />
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;
            &nbsp;<br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
