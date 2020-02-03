using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using CrystalDecisions.Shared;

namespace mid
{
    public class Global : HttpApplication
    {
        // Global Variables
        static public ConnectionInfo ciReportConnection = new ConnectionInfo
        {
            ServerName = @"ASP1\INFOSAS",
            DatabaseName = "ICDBTrdA",
            UserID = "sa",
            Password = "ics@gits",

            ////ServerName = "sql5014.site4now.net",
            ////DatabaseName = "DB_A4D8A9_infosasics",

            ////UserID = "DB_A4D8A9_infosasics_admin",
            ////Password = "i12345678910",
            Type = ConnectionInfoType.SQL
    };

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Global.ciReportConnection.IntegratedSecurity = false;

        }
    }
}