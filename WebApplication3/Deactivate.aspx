<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deactivate.aspx.cs" Inherits="WebApplication3.Deactivate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Enter ID And Password Again to Confirm</p>
    <p>
        &nbsp;</p>
    <p>
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
        </table>&nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="#33CC33" Text="Deactivision Succesful"></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Error Deactivating"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirm" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
