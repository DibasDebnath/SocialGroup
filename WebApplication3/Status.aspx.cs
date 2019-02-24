using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        public void Load_Grid()
        {
            SqlConnection con = new SqlConnection(conStr);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select Status , Name , DateTime from [dbo].[Status] ORDER BY SID DESC";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Log"] != null)
            {
                if (Session["Log"].Equals("Logged"))
                {
                    Load_Grid();
                }
            }
            else
            {
                Response.Redirect("~/Logged Out.aspx");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session.Remove("Name");
            Session.Remove("ID");
            Session.Remove("Log");
            Response.Redirect("~/Logged Out.aspx");
                
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DateTime Now = System.DateTime.UtcNow;

                SqlConnection con = new SqlConnection(conStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = @"INSERT INTO [dbo].[Status]
           ([Name]
           ,[Status]
           ,[DateTime])
     VALUES('" + Session["Name"].ToString() + "','" + TextBox1.Text + "','" + Now.ToString() + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Load_Grid();
            }
            
        }
       
    }

}