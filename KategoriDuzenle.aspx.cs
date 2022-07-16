using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string kategoriId;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["Id"];

            if (Page.IsPostBack == false)
            {
            SqlCommand komut = new SqlCommand("Select * From Kategoriler Where Id = @p1", bgl.baglanti());
            if (String.IsNullOrEmpty(kategoriId))
            {
                kategoriId = "";
            }
            komut.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update kategoriler Set Ad = @p1, Adet = @p2 Where Id=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", kategoriId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}