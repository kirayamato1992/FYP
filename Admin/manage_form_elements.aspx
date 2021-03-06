﻿<%@ Page Title="Auto SCAR &amp; TAT - Manage Form Elements" Language="C#" MasterPageFile="~/Admin.Site.Master" EnableEventValidation="false" AutoEventWireup="true" Inherits="Admin_manage_form_elements" Codebehind="manage_form_elements.aspx.cs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <!-- Manage Form Elements Page for admin: Allows Admin to edit/add/remove form element values -->
<div class="right-panel">
    <div class="right-panel-inner">
        <div class="col-md-12">
            <div class="panel panel-info">
                <div class="panel-heading">
                   Modify Form Elements  
                </div>
                <div class="panel-body" style="padding-top:10pt">
                    <form class="form-horizontal pad10" action="#" method="post">
                            <div class="form-group">
                                <asp:Label ID="formElements" Font-Bold="true" CssClass="col-lg-2 control-label" runat="server" />
                                <div class="col-lg-10">
                                <asp:DropDownList ID="lstElements" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                </div>
                            </div>
                            <br /><br />
                            <div class="form-group">
                                <asp:Label ID="lblModifyElement" Font-Bold="true" CssClass="col-lg-2 control-label" runat="server" Text="New Element Name"/>
                                <div class="col-lg-10">
                                <asp:TextBox ID="txtModifyElement" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <br /><br />
                        <div id="messageBox" title="jQuery MessageBox In Asp.net" style="display: none;">
                                    
                                </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Modify Element" OnClick="Click_Modify"/>
                                    <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" Text="Delete Element" OnClick="Click_Delete"/>
                                </div>
                            </div>

							
                    </form>
                </div>
            </div>
        </div><!--/.col-md-12-->
    </div>
</div>
    <script type="text/javascript">
        // For Modify Confirmation
        $(function () {

            $("#<%=btnSubmit.ClientID%>").on("click", function (event) {
             event.preventDefault();
             $("#messageBox").dialog({
                 resizable: false,
                 title: "Modify Element Confirmation",
                 open: function () {
                     var markup = "Are you sure you want to modify the selected element?";
                     $(this).html(markup);
                 },
                 height: 200,

                 modal: true,
                 buttons: {
                     Ok: function () {
                         $(this).dialog("close");
                         __doPostBack($('#<%= btnSubmit.ClientID %>').attr('name'), '');
                         },
                         Cancel: function () {
                             $(this).dialog("close");

                         }
                     }
                 });
         });
     });

        // For Delete Confirmation
        $(function () {

            $("#<%=btnDelete.ClientID%>").on("click", function (event) {
                event.preventDefault();
                $("#messageBox").dialog({
                    resizable: false,
                    title: "Delete Element Confirmation",
                    open: function () {
                        var markup = "Are you sure you want to delete the selected element?";
                        $(this).html(markup);
                    },
                    height: 200,

                    modal: true,
                    buttons: {
                        Ok: function () {
                            $(this).dialog("close");
                            __doPostBack($('#<%= btnDelete.ClientID %>').attr('name'), '');
                     },
                     Cancel: function () {
                         $(this).dialog("close");

                     }
                 }
             });
            });
        });

         // For Alert
         function messageBox(message) {
             $("#messageBox").dialog({
                 modal: true,
                 height: 300,
                 width: 500,
                 title: "Manage Element Status",
                 open: function () {
                     var markup = message;
                     $(this).html(markup);
                 },
                 buttons: {
                     Close: function () {
                         $(this).dialog("close");
                     }
                 },

             });
             return false;
         }
    </script>
</asp:Content>