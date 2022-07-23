using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class TarifDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Id"];
            if (string.IsNullOrEmpty(id))
            {
                id = "";
            }

            SqlCommand komut = new SqlCommand("select * from tarifler where id = @p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}