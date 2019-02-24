<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log in.aspx.cs" Inherits="WebApplication3.Log_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Log In" Font-Size="Larger"></asp:Label>
    <br />
    <table class="nav-justified" style="width: 67%">
        <tr>
            <td style="width: 115px">ID</td>
            <td style="width: 115px">
                <asp:TextBox ID="TextBox1" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" EnableViewState="False" ErrorMessage="Enter Only Number" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 115px">Password</td>
            <td style="height: 23px; width: 115px">
                <asp:TextBox ID="TextBox2" runat="server" Width="237px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        </table>
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="#009933" Text="Log in Succes"></asp:Label>
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Log in Failed"></asp:Label>
    <br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Log in" />
<br />
<br />
Your Informations<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
</asp:GridView>
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete Account" />
    <br />
</asp:Content>
