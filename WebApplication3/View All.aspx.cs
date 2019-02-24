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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(conStr);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select * from [dbo].[Users]";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
    }
    }
}