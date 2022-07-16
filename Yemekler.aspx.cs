using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            //yemek listesi
            SqlCommand komut = new SqlCommand("Select * From Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            Panel2.Visible = false;
            Panel4.Visible = false;

            //kategoriler dropdownlist için kodlar
            SqlCommand dropDwcommand = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
            SqlDataReader drDw = dropDwcommand.ExecuteReader();
            DropDownList1.DataTextField = "Ad";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataSource = drDw;
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}