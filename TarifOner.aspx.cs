using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();      

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = 
                new SqlCommand("insert into Tarifler (Ad, Malzeme, Yapilis, Resim, Sahip, SahipMail) Values (@t1, @t2, @t3, @t4, @t5, @t6)", bgl.baglanti());

            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", fuResim.FileName);
            komut.Parameters.AddWithValue("@t5", txtOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır");
        }
    }
}