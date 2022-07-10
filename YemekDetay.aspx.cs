using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string yemekId;
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["Id"];
            //if String.IsNullOrEmpty(yemekId) then
            if (String.IsNullOrEmpty(yemekId))
            {
                yemekId = "";
            }
            SqlCommand komut = new SqlCommand("SELECT AD FROM YEMEKLER WHERE Id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
                Label3.Text = dr[0].ToString();
            bgl.baglanti().Close();

            //Yorumları çekme
            SqlCommand komut2 = new SqlCommand("Select * From Yorumlar Where YemekId=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert Into Yorumlar (AdSoyad, Mail, Yorum, YemekId) values " +
               " (@pAdSoyad, @pMail, @pYorum, @pYemekId) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@pAdSoyad", TextBox1.Text);
            komut.Parameters.AddWithValue("@pMail", TextBox2.Text);
            komut.Parameters.AddWithValue("@pYorum", TextBox3.Text);
            komut.Parameters.AddWithValue("@pYemekId", yemekId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}