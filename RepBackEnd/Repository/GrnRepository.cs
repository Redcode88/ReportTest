using RepBackEnd.Core;
using RepBackEnd.DataConfig;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RepBackEnd.Repository
{
    public static class GrnRepository
    {
        //get data connection from XML file 
        private static string conn =
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        public static dynamic GetGRN(int ID)
        {
            SqlParameter param = new SqlParameter("ID", ID);
            SQLDAL.ConnectionString = conn;
            return SQLDAL.ReturnDataTableByProcedure("[dbo].[GetGRNData]", param).ToListOfType<ReportGrn>();
        }

        public static dynamic GetPr(int PRID)
        {
            SqlParameter param = new SqlParameter("PRID", PRID);
            SQLDAL.ConnectionString = conn;
            return SQLDAL.ReturnDataTableByProcedure("[dbo].[sp_Get_PrData]", param);

        }

        public static dynamic GetMR(int MRID)
        {
            SqlParameter param = new SqlParameter("MRID", MRID);
            SQLDAL.ConnectionString = conn;
            return SQLDAL.ReturnDataTableByProcedure("[dbo].[MaterialRequest]", param);
        }

    }
}
