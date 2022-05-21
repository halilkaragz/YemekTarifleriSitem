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
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["Id"];
            SqlCommand komut = new SqlCommand("SELECT AD FROM YEMEKLER WHERE Id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
                Label3.Text = dr[0].ToString();
            bgl.baglanti().Close();
        }
    }
}