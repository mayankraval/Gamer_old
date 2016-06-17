﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="Project1.User_Controls.Navbar" %>
<%--
 * @authors: Mayank Raval and  Akhil Thakkar
 * @date: June 8, 2016
 * @version : 0.0.1 
 * @Description : provides common navigation control for every web page in site.
--%>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
       <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
         <a class="navbar-brand" href="Default.aspx"><img height="47" width="47" src="../Assests/images/LOGO.png" id="logo" runat="server" /></a>
         <a class="navbar-brand" href="Default.aspx"><h3>AM Gamer</h3></a>

        </div>>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li id="home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li id="login" runat="server"><a href="Login.aspx"><i class="fa fa-sign-in fa-lg"></i> Login</a></li>
                <li id="register" runat="server"><a href="Register.aspx"><i class="fa fa-user-plus fa-lg"></i> Register</a></li>
                <li id="game" runat="server"><a href="GameDetails.aspx"><i class="fa fa-gamepad fa-lg"></i> Game</a></li>
                <li id="editgame" runat="server"><a href="EditGame.aspx"><i class="fa fa-gamepad fa-lg"></i> Edit Game</a></li>
                <li id="contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg"></i> Contact</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
  
</nav>