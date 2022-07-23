using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class TarifDetay : System.Web.UI.Page
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
                SqlCommand komut = new SqlCommand("select * from tarifler where id = @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }

                bgl.baglanti().Close();

                //kategoriler dropdownlist için kodlar
                SqlCommand dropDwcommand = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
                SqlDataReader sqlDataReader = dropDwcommand.ExecuteReader();
                DropDownList2.DataTextField = "Ad";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataSource = sqlDataReader;
                DropDownList2.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {//Durum güncelle
            SqlCommand komut = new SqlCommand("update tarifler set durum=1 where Id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği ekleme
            SqlCommand sqlCommand = 
                new SqlCommand("insert into Yemekler (Ad, Malzeme, Tarif, KategoriId) values (@p1,@p2, @p3, @p4)", bgl.baglanti());

            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DropDownList2.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p5", id);
            sqlCommand.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}