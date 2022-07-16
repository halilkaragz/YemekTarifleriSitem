using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id;
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Id"];
                islem = Request.QueryString["islem"];

                if (string.IsNullOrEmpty(id))
                {
                    id = "";
                }
            }
            SqlCommand komut = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

            //silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Kategoriler Where Id=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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
            SqlCommand insertCommand = new SqlCommand("Insert Into Kategoriler (Ad) Values (@pAd)", bgl.baglanti());
            insertCommand.Parameters.AddWithValue("@pAd", txbKategoriAdi.Text);
            SqlDataReader dr = insertCommand.ExecuteReader();
            bgl.baglanti().Close();
        }
    }
}