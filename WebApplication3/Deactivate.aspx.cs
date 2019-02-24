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
    public partial class Deactivate : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = Convert.ToString(args.Value);
            char[] ar = a.ToArray();
            int v = 0;
            if (ar.Length < 0)
                v = 1;
            int i;
            for (i = 0; i < ar.Length; i++)
            {
                if (char.IsDigit(ar[i]))
                { }
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string EnteredPass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");

                SqlConnection con = new SqlConnection(conStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" ", con);
                cmd.CommandText = "SELECT Password FROM [dbo].[Users] WHERE ID = '" + TextBox1.Text + "'";
                string OldPass = Convert.ToString(cmd.ExecuteScalar());
                if (EnteredPass.Equals(OldPass))
                {

                    cmd.CommandText = "DELETE FROM [dbo].[Users] WHERE ID = '" + TextBox1.Text + "'";
                    cmd.ExecuteScalar();
                    Label2.Visible = true;
                }
                else
                {
                    Label3.Visible = true;
                }
            }
        }
    }
}