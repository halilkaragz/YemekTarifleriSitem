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
}