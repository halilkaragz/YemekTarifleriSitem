using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        string yemekId;
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["Id"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Yemekler Where Id = @p1", bgl.baglanti());
                if (String.IsNullOrEmpty(kategoriId))
                {
                    yemekId = "";
                }
                komut.Parameters.AddWithValue("@p1", kategoriId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }
    }
}