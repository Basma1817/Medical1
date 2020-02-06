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
    public partial class mainbranchdivReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                var report = new ReportDocument();
                report.Load(Server.MapPath("mainbranchdivRep.rpt"));

                //var ciReportConnection = new ConnectionInfo //////// moved to global file as global variable
                //{
                //    ServerName = "ASP1"/*"sql5042.site4now.net"*/,
                //    DatabaseName = "ICDBTrdA"/* "DB_A4D8A9_infosasics"*/,

                //    //UserID = "DB_A4D8A9_infosasics_admin",
                //    //Password = "i12345678910"
                //};

                foreach (CrystalDecisions.CrystalReports.Engine.Table table in report.Database.Tables)
                {
                    table.LogOnInfo.ConnectionInfo = Global.ciReportConnection;
                    table.ApplyLogOnInfo(table.LogOnInfo);
                }

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
    }
}