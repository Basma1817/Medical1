﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="astareaReport.aspx.cs" Inherits="mid.astareaReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style = "margin: 0 172px;">
        
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelView="None" ToolPanelWidth="200px" Width="1104px" HasRefreshButton="True" ReuseParameterValuesOnRefresh="True" ToolbarStyle-BackColor="White" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <report filename="astareaRep.rpt">
            </report>
        </CR:CrystalReportSource>
    </div>
    </form>
</body>
</html>
