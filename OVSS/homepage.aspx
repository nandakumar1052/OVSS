<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="OVSS.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="homepagestyle.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <title></title>
    <style type="text/css">
        .bg{

             background-image:url('images/regi.jpg');
             background-repeat:no-repeat;
             background-size:cover;
        }
        .center {
    position: absolute;
    top: 10%;
    left: 38%;
    background: fixed;
    background-image:linear-gradient(to left,#41295a,#2F0743);
    opacity: 0.9;
    padding: 50px;
    padding-top:10px;
    width: 240px;
    height: 400px;
    border-radius: 20px;
}
        .register {
   margin-top: 20px;
            font-family: Roboto-Light, sans-serif;
            font-size: large;
            color: whitesmoke;
            background-image:linear-gradient(to left,#e50707,#c6040c);
            height: 40px;
            width: 242px;
            border-style: none;
            border-radius: 10px;
            margin-top: 15px;
}

    .register:hover {
        background-image:linear-gradient(to left,#9b0308,#790408);
    }
    .login {
    margin-top: 20px;
    font-family: Roboto-Light, sans-serif;
    font-size: large;
    color: whitesmoke;
    background-image:linear-gradient(to left,#3333FF,#333399);
    height: 40px;
    width: 242px;
    border-style: none;
    border-radius: 10px;
    margin-top: 0px;
}
.login:hover {
    background-image:linear-gradient(to left,#2c2cb5,#05055b);
}
.password {
    padding-top: 10px;
    border-bottom: inset;
    border-bottom-color: white;
    margin-bottom:20px;
}

    .password input {
        background: none;
        height: 40px;
        width: 200px;
        border: none;
        text-align: center;
        font-family: Arial, Times, sans-serif;
        font-size:15px;
        color:whitesmoke;
        
        outline: none;
    }
    .images{
        border-radius:81px;
    }
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: larger;
            color: whitesmoke;
            top: 20px;
            padding-left: 52px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style2 {
            border-radius: 81px;
            margin-left: 30px;
        }
        .auto-style3 {
            margin-top: 0px;
            margin-bottom: 9px;
        }
        .auto-style4 {
            margin-top: 4px;
        }
    </style>
</head>
<body class="bg">
  <form id="form1" runat="server">
    <div class="center">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" Height="81px" Width="81px" CssClass="auto-style2" />
            <h1 style="font-family: Harrington; font-size: xx-large;" class="auto-style3">&nbsp;&nbsp;&nbsp; Login</h1>
        </div>
        <div class="email">
            <asp:Label ID="Label1" runat="server" Text="Enter the username" ForeColor="White"></asp:Label>   <asp:TextBox ID="Email" runat="server" ForeColor="White"></asp:TextBox>
        </div><br />
        <div class="password">
            <asp:Label ID="Label2" runat="server" Text="Enter the password" ForeColor="White"></asp:Label>   <asp:TextBox ID="Password" runat="server" ForeColor="White" CssClass="auto-style4" Height="30px"></asp:TextBox>
        </div><br />
        <div class="login" >
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login"/>
        </div>
        <div >
            <asp:Button ID="Button2" runat="server" Text="register" CssClass="register"/>
        </div>
    </div>
</form>
</body>
</html>
