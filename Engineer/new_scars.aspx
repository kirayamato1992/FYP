﻿<%@ Page Title="Auto SCAR &amp; TAT - New SCARS" Language="C#" MasterPageFile="~/Engineer.Site.Master" AutoEventWireup="true" CodeFile="~/Engineer/new_scars.aspx.cs" Inherits="Engineer_new_scars" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="right-panel">
    <div class="right-panel-inner">
        <div class="col-md-12">

            <div class="panel panel-info">
                <div class="panel-heading">
                    New SCAR
                </div>
                <div class="panel-body">
                	<div class="col-md-6">
                	<p style="padding-top:10pt"> | <asp:HyperLink runat="server" ID="show10records" Text="Show 10 records" Target="_self" NavigateUrl="#" /> | <asp:HyperLink runat="server" ID="HyperLink1" Text="Show 50 records" Target="_self" NavigateUrl="#" /> | 
                    </div>
                            <div class="row">
                                <div class="col-md-3"  style="padding-top:10pt">
                                    <asp:DropDownList CssClass="form-control" ID="lstFilter" runat="server">  
                                        <asp:ListItem Selected="True">Please select...</asp:ListItem>
                                    </asp:DropDownList>
                            	</div>
                                <div class="col-md-3"  style="padding-top:10pt">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="searchTxt" runat="server" placeholder="Search For..." />
                                        <span class="input-group-btn">
                                            <asp:LinkButton CssClass="btn btn-default" ID="btnSearch" runat="server">
                                                   <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                    </p>
                    <form class="form-horizontal pad10" action="#" method="post">
                            <div class="form-group">
                                <div class="col-lg-12" style="padding-left:25pt; padding-right:30pt; padding-top:15pt">
                                	<!-- Table -->
  									<table class="table">
                                    	<thead>
                                        	<tr>
                                                <th>CAR Number</th>
                                                <th style="padding-left:30pt">Defect Name</th>
                                                <th style="padding-left:30pt">Description</th>
                                                <th style="padding-left:30pt">Creation Date</th>
                                                <th style="padding-left:30pt">SCAR Type</th>
                                                <th style="padding-left:30pt">Level of Escalation</th>
                                                <th style="padding-left:30pt">Days Till Next Escalation</th>
                                          	</tr>
                                        </thead>
    									<tbody>
                                        	<tr>
                                                <td><a href="scars_forms.html">P-SOQANP-140916</a></td>
                                                <td style="padding-left:30pt">INSUFF SOLDER</td>
                                                <td style="padding-left:30pt">Insufficient amount of solder on a lead, pad or terminal</td>
                                                <td style="padding-left:30pt">22/10/2014</td>
                                                <td style="padding-left:30pt">2</td>
                                                <td style="padding-left:30pt">1</td>
                                                <td style="padding-left:30pt">4</td>
                                          	</tr>
                                          	<tr>
                                            	<td>Q-COBDP-142633</td>
                                                <td style="padding-left:30pt">FRACTURED SOLDER</td>
                                                <td style="padding-left:30pt">Stressed solder torn away through the PCB</td>
                                                <td style="padding-left:30pt">24/10/2014</td>
                                                <td style="padding-left:30pt">2</td>
                                            	<td style="padding-left:30pt">1</td>
                                                <td style="padding-left:30pt">6</td>
                                          	</tr>
                                        </tbody>
  									</table>
                                </div>
                            </div> 
                    </form>
                    <nav style="padding-right:30pt">
                        <ul class="pagination pull-right">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div><!--/.col-md-12-->
    </div>
</div>

</asp:Content>
