﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrentStock.aspx.cs" Inherits="POS.Web.Reports.CurrentStock" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="800px" Height="600px"></rsweb:ReportViewer>
    </form>
</body>
</html>
