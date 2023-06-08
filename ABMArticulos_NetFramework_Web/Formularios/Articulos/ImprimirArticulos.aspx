﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ImprimirArticulos.aspx.cs" Inherits="ABMArticulos_NetFramework_Web.Formularios.Articulos.ImprimirArticulos" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="col-md-12">
        <div class="widget stacked">

            <div class="widget-header">
                <i class="icon-wrench"></i>
                <h3>Reportes</h3>
            </div>
            <!-- /widget-header -->

            <div class="widget-content">
                
                <rsweb:reportviewer id="ReportViewer1" width="100%" runat="server" font-names="Verdana" font-size="8pt" waitmessagefont-names="Verdana" waitmessagefont-size="14pt" sizetoreportcontent="True">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>--%>

                </rsweb:reportviewer>
                   
            </div>
            <!-- /widget-content -->

        </div>

    </div>
</asp:Content>
