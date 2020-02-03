﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.Reporting;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace mid
{
    public partial class cstmReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                ///////////////////////////// apply connection string  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                var report = new ReportDocument();
                report.Load(Server.MapPath(Session["reportname"].ToString()));
                report.DataSourceConnections.Clear();
            TextObject to = (TextObject)report.ReportDefinition.ReportObjects["title"];
            to.Text = Session["title"].ToString();
            //////////////////////////load data\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(Session["dbquery"].ToString()))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        //   cmd.Parameters.AddWithValue("@Dlv_Stor", drpBranch.SelectedValue);
                        //SqlDataReader dr = cmd.ExecuteReader();
                        var adapter = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);
                        //DataRow dr = ds.Tables[0].NewRow();
                        //DataSet dst = new DataSet();
                        //dst.Tables[0] = ds.Tables[0].Clone();
                        //dst.Tables[0].Rows.Clear();
                        //dst.Tables[0].Rows.Add(dr);
                        //foreach (DataRow drw in ds.Tables[0].Rows)
                        //{
                        //    dst.Tables[0].ImportRow(drw);
                        //}

                        report.SetDataSource(ds.Tables[0]);
                        //report.Refresh();
                        con.Close();
                    }
                }
            }
            catch (Exception s)
            {
                HttpContext.Current.Response.Write("Error Occured " + s.Message);
            }
            //////////////////////////END\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            //var ciReportConnection = new ConnectionInfo //////// moved to global file
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
                //CrystalReportViewer1.RefreshReport();
                CrystalReportViewer1.DataBind();
                CrystalReportViewer1.ToolPanelView = CrystalDecisions.Web.ToolPanelViewType.None;
            
        }
    }
}