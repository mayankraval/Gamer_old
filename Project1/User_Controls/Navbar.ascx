<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="Project1.User_Controls.Navbar" %>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>--%>
            <a class="navbar-brand" href="Default.aspx"><img height="50" width="50" src="../Assests/images/LOGO.png" id="logo" runat="server" /> Project</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li id="home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li id="login" runat="server"><a href="Login.aspx"><i class="fa fa-sign-in fa-lg"></i> Login</a></li>
                <li id="register" runat="server"><a href="Register.aspx"><i class="fa fa-user-plus fa-lg"></i> Register</a></li>
                <li id="game" runat="server"><a href="game.aspx"><i class="fa fa-gamepad fa-lg"></i> Game</a></li>
                <li id="contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg"></i> Contact</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
  
</nav>