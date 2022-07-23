using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();
            }
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
            SqlCommand command = new SqlCommand("update Hakkimizda Set Metin = @p1", bgl.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}