using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class YorumDetay : System.Web.UI.Page
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

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select C.AdSoyad, C.Mail, C.Yorum, Y.Ad YemekAdi From Yorumlar C " +
                    " Inner Join Yemekler Y On Y.Id=C.YemekId " +
                    " Where C.Id=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    AdSoyadTxt.Text = dr[0].ToString();
                    MailTxt.Text = dr[1].ToString();
                    IcerikTxt.Text = dr[2].ToString();
                    YemekTxt.Text = dr[3].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Yorumlar Set yorum=@p1, onay=@p2 where Id=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", IcerikTxt.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}