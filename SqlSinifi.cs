using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public class SqlSinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Server=(localdb)\mssqllocaldb;Database=dbo_yemekTarifi;Trusted_Connection=true");
            baglan.Open();
            return baglan;
        }
    }
}