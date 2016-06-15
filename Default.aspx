﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project1.Default" %>

<%-- 
    File : Default.aspx
    Author : Mayank Raval(200300508) Akhil Thakkar(200300312)
    Web Site : http://amgamer.azurewebsites.net/
    Description : Shows the Score card with the List of games and scores with top player and high score. 
                 Also it shoes game stage --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Game Scorecard</h1>
                <a href="Login.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Login to Edit</a>

                <label for="PageSizeDropDownList">Records per page: </label>
                <asp:DropDownList ID="PageSizeDropDownList" runat="server" AutoPostBack="true" 
                    CssClass="btn btn-default btn-sm dropdown-toggle" OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="5" Value="5" />
                    <asp:ListItem Text="All" Value="10000" />
                </asp:DropDownList>

                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" 
                    ID="GameGridView" AutoGenerateColumns="false" DataKeyNames="GameID"
                    AllowPaging="true" PageSize="3" OnPageIndexChanging="GameGridView_PageIndexChanging"
                    AllowSorting="true" OnSorting="GameGridView_Sorting" OnRowDataBound="GameGridView_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" SortExpression="GameID" />
                        <asp:BoundField DataField="Description" HeaderText="Description" Visible="true" SortExpression="Description" />
                        <asp:BoundField DataField="totalScore" HeaderText="Total Score" Visible="true" SortExpression="TotalScore"/>
                        <asp:BoundField DataField="Spectators" HeaderText="Spectators" Visible="true" SortExpression="Spectators"/>
                        <asp:BoundField DataField="WinningTeam" HeaderText="Winning Team" Visible="true" SortExpression="WinningTeam"/>
                     </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
