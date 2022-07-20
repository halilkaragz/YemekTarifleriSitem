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
                if (String.IsNullOrEmpty(yemekId))
                {
                    yemekId = "";
                }
                komut.Parameters.AddWithValue("@p1", yemekId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();

                //kategoriler dropdownlist için kodlar
                SqlCommand dropDwcommand = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
                SqlDataReader sqlDataReader = dropDwcommand.ExecuteReader();
                DropDownList1.DataTextField = "Ad";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataSource = sqlDataReader;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand =  new SqlCommand("Update Yemekler Set " +
                "Ad=@p1, Malzeme=@p2, Tarif=@p3, KategoriId = @p4" +
                " Where Id=@p5", bgl.baglanti());

            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p5", yemekId);
            sqlCommand.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}