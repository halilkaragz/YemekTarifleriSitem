using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand sqlCommand = new SqlCommand("Select * From Yorumlar", bgl.baglanti());
            SqlDataReader dr = sqlCommand.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
           
            bgl.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}