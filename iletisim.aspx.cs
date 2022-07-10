using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{  
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert Into Mesajlar (Gonderen, Baslik, Mail, Icerik) values " +
                " (@pGonderen, @pBaslik, @pMail, @pIcerik) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@pGonderen", txAdSoyad.Text);
            komut.Parameters.AddWithValue("@pBaslik", txKonu.Text);
            komut.Parameters.AddWithValue("@pMail", txMail.Text);
            komut.Parameters.AddWithValue("@pIcerik", txMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}