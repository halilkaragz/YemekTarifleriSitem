using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            if (string.IsNullOrEmpty(id))
            {
                id = "";
            }
            SqlCommand komut = new SqlCommand("Select * From Mesajlar Where Id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                BaslikTxt.Text = dr[1].ToString();
                Mailtxt.Text = dr[2].ToString();
                Mesajtxt.Text = dr[3].ToString();                
                GonderenTxt.Text = dr[4].ToString();

                bgl.baglanti().Close();
            }

        }
    }
}