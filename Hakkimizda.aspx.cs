using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select Metin From Hakkimizda", bgl.baglanti() );
            SqlDataReader dataReader = komut.ExecuteReader();
            DataList2.DataSource = dataReader;
            DataList2.DataBind();
        }
    }
}