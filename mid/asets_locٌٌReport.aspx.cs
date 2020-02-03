using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;

namespace mid
{
    public partial class asets_locٌٌReport : System.Web.UI.Page
    {
        ICDBTrdAEntities i = new ICDBTrdAEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath("asets_locRep.rpt"));

            //var ciReportConnection = new ConnectionInfo //////// moved to global file as global variable
            //{
            //    ServerName = "ASP1"/*"sql5042.site4now.net"*/,
            //    DatabaseName = "ICDBTrdA"/* "DB_A4D8A9_infosasics"*/,

            //    //UserID = "DB_A4D8A9_infosasics_admin",
            //    //Password = "i12345678910"

            //};

            TextObject to = (TextObject)report.ReportDefinition.ReportObjects["username"];
            to.Text = Session["username"].ToString();
            report.SetDataSource(todatatable.ToDataTable(i.FixdAsetsLoc.ToList()));


            foreach (CrystalDecisions.CrystalReports.Engine.Table table in report.Database.Tables)
                {
                    table.LogOnInfo.ConnectionInfo = Global.ciReportConnection;
                    table.ApplyLogOnInfo(table.LogOnInfo);
                }
                //report.Subreports[0].ReportDefinition.ReportObjects["Picture3"].
            for (int i = 0; i < report.Subreports.Count; i++)
            {
                foreach (CrystalDecisions.CrystalReports.Engine.Table table in report.Subreports[i].Database.Tables)
                {
                    table.LogOnInfo.ConnectionInfo = Global.ciReportConnection;
                    table.ApplyLogOnInfo(table.LogOnInfo);
                }
            }

            if (this.CrystalReportViewer1.LogOnInfo != null)
                {
                    TableLogOnInfos tlInfo = this.CrystalReportViewer1.LogOnInfo;
                    foreach (TableLogOnInfo tbloginfo in tlInfo)
                    {
                        tbloginfo.ConnectionInfo = Global.ciReportConnection;
                    }
                }

                CrystalReportViewer1.ReportSource = report;
                CrystalReportViewer1.ToolPanelView = CrystalDecisions.Web.ToolPanelViewType.None;
                /* ConnectionInfo myConnectionInfo = new ConnectionInfo();

                 ReportDocument rd = new ReportDocument();
                 rd.Load(Server.MapPath("branchRep.rpt"));

                 Tables t = rd.Database.Tables;

                 foreach (CrystalDecisions.CrystalReports.Engine.Table me in t)
                 {
                     TableLogOnInfo i = me.LogOnInfo;
                     myConnectionInfo.DatabaseName = "DB_A4D8A9_infosas";
                     myConnectionInfo.ServerName = "sql5047.site4now.net";
                     myConnectionInfo.UserID = "DB_A4D8A9_infosas_admin";
                     myConnectionInfo.Password = "i12345678910";

                     i.ConnectionInfo = myConnectionInfo;
                     me.ApplyLogOnInfo(i);
                 }


                 CrystalReportViewer1.ReportSource = rd;
                 */
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //report.PrintOptions.PrinterName = TextBox1.Text;
            //report.PrintToPrinter(1, true, 1, 1);
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {

        }
    }
}