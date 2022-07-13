using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
	public partial class KategoriDetay : System.Web.UI.Page
	{
		SqlSinifi bgl = new SqlSinifi();
		string kategoriId;
		protected void Page_Load(object sender, EventArgs e)
		{
			kategoriId = Request.QueryString["Id"];
			if (String.IsNullOrEmpty(kategoriId))
			{
				kategoriId = "";
			}

			SqlCommand komut = new SqlCommand("Select * From Yemekler Where KategoriId = @p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", kategoriId);
			SqlDataReader dr = komut.ExecuteReader();
			DataList2.DataSource = dr;
			DataList2.DataBind();
		}
	}
}