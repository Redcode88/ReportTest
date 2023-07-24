using CrystalDecisions.Shared;
using CrystalReport.ReportDocs;
using CrystalDecisions.CrystalReports.Engine;
using RepBackEnd.Repository;
using System;
using System.Web.UI;
namespace CrystalReport
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Grd.Columns.Clear();
                //var data = GrnRepository.GetGRN(1);
                //Grd.DataSource = data;
                //Grd.DataBind();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            
            
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Grndoc rep = new Grndoc();
                var RepData = GrnRepository.GetGRN(int.Parse(Txt_se.Text));
                rep.SetDataSource(RepData);
                rep.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, $"GrnReport{DateTime.Now.ToShortDateString()}");
                Response.End();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void Btn_Search_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(Txt_se.Text))
                {
                    Grd.Columns.Clear();
                    var data = GrnRepository.GetGRN(int.Parse(Txt_se.Text));
                    Grd.DataSource = data;
                    Grd.DataBind();
                    if (Grd.Rows.Count == 0)
                    {
                        Response.Write("<h4 Id='alr'> No data belong to this id <h4/>");
                    }
                  
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please type Id for search operation !')", true);
                    Txt_se.Focus();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}