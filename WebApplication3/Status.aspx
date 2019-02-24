<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="WebApplication3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Update Your Status:"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="52px" Width="252px"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="Update" OnClick="Button4_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Log Out" />
</p>
    <p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Status Must not Exeed 200 Charecters" ForeColor="Red" ValidationExpression="^.{1,200}$"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
</p>
    <p>
    <br />
</p>
<p>
</p>
</asp:Content>
