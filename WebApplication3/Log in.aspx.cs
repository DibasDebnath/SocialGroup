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
    public partial class Log_in : System.Web.UI.Page
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
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Button4.Visible = false;
                }
            }
            else
            {
                Label2.Visible = false;
                Label3.Visible = false;
                Button4.Visible = false;
            }
           
           
        }

        public void Load_Grid()
        {
            SqlConnection con = new SqlConnection(conStr);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select * from [dbo].[Users] WHERE ID = '" + TextBox1.Text + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
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
                    Label2.Visible = true;
                    Load_Grid();
                    Button4.Visible = true;
                    Session["ID"] = TextBox1.Text;
                    cmd.CommandText = "SELECT Name FROM [dbo].[Users] WHERE ID = '" + TextBox1.Text + "'";
                    Session["Name"] = Convert.ToString(cmd.ExecuteScalar());
                    Session["Log"] = "Logged";
                }
                else
                {
                    Label3.Visible = true;
                }
            }
            
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
            Response.Redirect("~/Deactivate.aspx");
        }
    }
}