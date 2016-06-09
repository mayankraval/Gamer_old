<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project1.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Game Scorecard</h1>
                <table id="gamescorecard" runat="server" class="table table-striped">
                    <tr>
                        <th>Game Id</th>
                        <th>Game Name</th>
                        <th>Game Stage</th>
                        <th>Top Player</th>
                        <th>Highest Score</th>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>

                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>

                </table>
                <!-- <asp:GridView runat="server" ID="GameGridView" AutoGenerateColumns="false"
                    CssClass="table table-striped table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                        <asp:BoundField DataField="Game Name" HeaderText="Game Name" Visible="true" />
                        <asp:BoundField DataField="GameStage" HeaderText="Game Stage" Visible="true" />
                        <asp:BoundField DataField="TopPlayer" HeaderText="Top Player" Visible="true"/>
                        <asp:BoundField DataField="Score" HeaderText="Score" Visible="true"/>


                    </Columns>
                </asp:GridView>-->

            </div>
        </div>
    </div>

</asp:Content>
