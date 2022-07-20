using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string islem = "";
        string id = "";
        protected object Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                //silme
                id = Request.QueryString["Id"];
                if (string.IsNullOrEmpty(id))
                {
                    id = "";
                }
                islem = Request.QueryString["islem"]; ;


                //kategoriler dropdownlist için kodlar
                SqlCommand dropDwcommand = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
                SqlDataReader drDw = dropDwcommand.ExecuteReader();
                ddlKategori.DataTextField = "Ad";
                ddlKategori.DataValueField = "Id";
                ddlKategori.DataSource = drDw;
                ddlKategori.DataBind();
            }
            //yemek listesi
            SqlCommand komut = new SqlCommand("Select * From Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            Panel2.Visible = false;
            Panel4.Visible = false;

            if (islem=="sil")
            {
                SqlCommand sqlCommand = new SqlCommand("Delete From Yemeler Where Id=@p1", bgl.baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", id);
                sqlCommand.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into yemekler " +
                " (ad, malzeme, tarif, kategoriId) values (@p1, @p2, @p3, @p4) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txbYemekAdi.Text);
            komut.Parameters.AddWithValue("@p2", txbMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txbYemekTarifi.Text);
            komut.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}