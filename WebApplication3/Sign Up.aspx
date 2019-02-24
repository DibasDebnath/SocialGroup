<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="WebApplication3.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Please Enter Your Informations Below"></asp:Label>
    &nbsp;</p>
    <p>
        <table style="width: 84%; height: 66px;">
            <tr>
                <td style="width: 178px; height: 27px">Name*</td>
                <td style="height: 27px; width: 232px;">
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox14" ErrorMessage="Atleast 5 Charecter and Does not Contain Number or Sign" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox14" ErrorMessage="Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px; height: 24px;">Gender*</td>
                <td style="height: 24px; width: 232px;">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px; height: 215px;">Date of Birth*</td>
                <td style="margin-left: 40px; width: 232px; height: 215px;">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="21px" ImageUrl="~/Images/calendar.png" OnClick="ImageButton1_Click" Width="20px" />
                    <asp:TextBox ID="TextBox15" runat="server" Visible="False"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="205px" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td style="height: 215px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px; height: 22px;">Age</td>
                <td style="width: 232px; height: 22px">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 178px">Religion*</td>
                <td style="width: 232px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Muslim</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Buddha</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px">E-Mail ID*</td>
                <td style="width: 232px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px">Phone Number</td>
                <td style="width: 232px">+880<asp:TextBox ID="TextBox11" runat="server" Width="142px"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="Phone Number not eligible" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px">New Password*</td>
                <td style="width: 232px">
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox12" ControlToValidate="TextBox13" ErrorMessage="Password Did not Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 178px">Confirm Password*</td>
                <td style="width: 232px">
                    <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox13" ErrorMessage="Atleast one number and a Capital Letter Required" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox13" ErrorMessage="Password Should be atleast 5 charecters Long" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            </table>
    </p>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Confirm" />
    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Error Problem Signing Up"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" ForeColor="#009933" Text="Congrats You Have Succesfully Loged In, Please Remember Your ID for Log in :  "></asp:Label>
    <asp:Label ID="Label9" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>
