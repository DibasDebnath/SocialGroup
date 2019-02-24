<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View All.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        These are all the users in the Database</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField />
        <asp:BoundField DataField="ID" HeaderText="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" />
        <asp:BoundField DataField="DBO" HeaderText="Date of Birth" />
        <asp:BoundField DataField="Age" HeaderText="Age" />
        <asp:BoundField DataField="Religion" HeaderText="Religion" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" />
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
</asp:GridView>&nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
