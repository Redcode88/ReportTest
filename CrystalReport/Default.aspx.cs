using CrystalDecisions.Shared;
using CrystalReport.ReportDocs;
using RepBackEnd.DataConfig;
using RepBackEnd.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrystalReport
{
    public partial class _Default : Page
    {
        private string conn =
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Searchpr_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(Txt_se_pr.Text))
                {
                    Grdpr.Columns.Clear();
                    var data = GrnRepository.GetPr(int.Parse(Txt_se_pr.Text));
                    Grdpr.DataSource = data;
                    Grdpr.DataBind();
                    if (Grdpr.Rows.Count == 0)
                    {
                        Response.Write("<h4 Id='alr'> No data belong to this id <h4/>");
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please type Id for search operation !')", true);
                    Grdpr.Focus();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void BtnPrint_Click(object sender, EventArgs e)
        {
            try
            {
                Prep rep = new Prep();
                SqlConnection cn = new SqlConnection(conn);
                SqlCommand cmd = new SqlCommand("[dbo].[sp_Get_PrData]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PRID", Txt_se_pr.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "nn");
                rep.SetDataSource(ds);
                rep.SetParameterValue("PrintedBy", "Mohamed Mohsen");
                rep.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, $"PrReport{DateTime.Now.ToShortDateString()}");
                Response.End();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}