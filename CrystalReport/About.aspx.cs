using CrystalDecisions.Shared;
using CrystalReport.ReportDocs;
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
    public partial class About : Page
    {
        private string conn =
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Searchmr_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(Txt_se_mr.Text))
                {
                    Grdmr.Columns.Clear();
                    var data = GrnRepository.GetMR(int.Parse(Txt_se_mr.Text));
                    Grdmr.DataSource = data;
                    Grdmr.DataBind();
                    if (Grdmr.Rows.Count == 0)
                    {
                        Response.Write("<h4 Id='alr'> No data belong to this id <h4/>");
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please type Id for search operation !')", true);
                    Grdmr.Focus();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void BtnPrintmr_Click(object sender, EventArgs e)
        {
            try
            {
                Mrdoc rep = new Mrdoc();
                SqlConnection cn = new SqlConnection(conn);
                SqlCommand cmd = new SqlCommand("[dbo].[MaterialRequest]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MRID", int.Parse(Txt_se_mr.Text));
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "nn");
                rep.SetDataSource(ds);
                rep.SetParameterValue("@MRID", Txt_se_mr.Text);
                rep.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, $"MaterialRequisition_Report{DateTime.Now.ToShortDateString()}");
                Response.End();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            //catch (Exception ex)
            //{
            //    // Log the exception details for troubleshooting.
            //    // You can log to a file, database, or use a logging library like log4net or Serilog.
            //    // Replace "YourLogFilePath.log" with the actual path for log files.
            //    string logFilePath = Server.MapPath("~/log/logfile.txt");
            //    System.IO.File.AppendAllText(logFilePath, DateTime.Now + ": " + ex.ToString() + Environment.NewLine);

            //    // Rethrow the exception to display the error message to the user.
            //    throw;
            //}
        }
    }
}