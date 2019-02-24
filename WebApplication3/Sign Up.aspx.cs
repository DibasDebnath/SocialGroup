using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Log"] != null)
            {
                if (Session["Log"].Equals("Logged"))
                {
                    Response.Redirect("~/Logged In.aspx");
                }
                else
                {
                    Calendar1.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                }
                
            }
            else
            {
                Calendar1.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
            }
             
        }
        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            Label6.Text = Calendar1.SelectedDate.ToShortDateString();
            

            DateTime Born = Calendar1.SelectedDate;
            DateTime Now = System.DateTime.Today;

            System.TimeSpan T = (Now - Born);
            int a = T.Days / 365;
            Label5.Text = Convert.ToString(a);
            TextBox15.Text = Convert.ToString(Born);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == true)
                Calendar1.Visible = false;
            else
                Calendar1.Visible = true;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Label7.Visible = false;
                string EnPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox13.Text, "MD5");

                SqlConnection con = new SqlConnection(conStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = @"INSERT INTO [dbo].[Users]
           ([Name]
           ,[Gender]
           ,[DBO]
           ,[Age]
           ,[Religion]
           ,[Email]
           ,[Phone]
           ,[Password])
     VALUES('" + TextBox14.Text + "','" + DropDownList1.Text + "','" + TextBox15.Text + "','" + Label5.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + EnPass + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Label8.Visible = true;

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.CommandText = "SELECT MAX(Id) FROM [dbo].[Users]";
                Label9.Text = Convert.ToString(cmd.ExecuteScalar());
            }
            else
            {
                Label7.Visible = true;               
            }
            
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = Convert.ToString(args.Value);
            char[] ar = a.ToArray();
            int v = 0;
            if (ar[0] != '1' || ar.Length != 10)
                v = 1;
            int i;
            for (i = 0; i < ar.Length; i++)
            {
                if (char.IsDigit(ar[i]))
                {}
                else
                    v = 1;
            }
            if (v == 1)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = Convert.ToString(args.Value);
            char[] ar = a.ToArray();
            int v1 = 1, v2 = 1;
            int i;
            for (i = 0; i < ar.Length; i++)
            {
                if (char.IsDigit(ar[i]))
                    v1 = 0;
                if (char.IsUpper(ar[i]))
                    v2 = 0;
                
            }
            if (v1 == 1 || v2 ==1)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = Convert.ToString(args.Value);
            char[] ar = a.ToArray();
            if ( ar.Length < 5 )
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = Convert.ToString(args.Value);
            char[] ar = a.ToArray();
            int v1 = 0,v2=0;
            int i;
            for (i = 0; i < ar.Length; i++)
            {
                if (char.IsLetter(ar[i]) || ar[i] == ' ')
                { }
                else
                    v1 = 1;
                if (ar.Length < 5)
                {
                    v2=1;
                }
            }
            if (v1 == 1 || v2 == 1)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            Calendar1.Visible = true;
        }
    }

    
    
}