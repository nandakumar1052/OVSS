<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="OVSS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Registration.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <title></title>
    <style type="text/css">
        .auto-style4 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style9 {
            margin-left: 7px;
        }
        .auto-style13 {
            width: 88px;
            height: 50px;
        }
        .auto-style15 {
            width: 88px;
            height: 54px;
        }
        .auto-style17 {
            width: 88px;
            height: 59px;
        }
        .auto-style19 {
            width: 88px;
            height: 21px;
        }
        .auto-style21 {
            width: 38%;
            height: 282px;
            border-style: none;
            margin-left: 343px;
            margin-right: 0px;
            margin-top: 164px;
            margin-bottom: 0px;
            background-color: black;
        }
        .auto-style23 {
            width: 130px;
            height: 49px;
        }
        .auto-style24 {
            width: 130px;
            height: 50px;
        }
        .auto-style25 {
            width: 130px;
            height: 54px;
        }
        .auto-style26 {
            width: 130px;
            height: 59px;
        }
        .auto-style27 {
            width: 40%;
            height: 19px;
            margin-left: 344px;
            margin-top: 139px;
        }
        .auto-style29{
            margin-left: 345px;
            margin-top: 20px;
            height:30px;
            font-family: Roboto-Light, sans-serif;
            font-size: large;
            color: whitesmoke;
            background-image:linear-gradient(to left,#3333FF,#333399);
            border-radius:10px;
        }
        .auto-style29:hover{
            background-image:linear-gradient(to left,#2c2cb5,#05055b);
        }
        .auto-style331{
            margin-left: 130px;
            margin-top: 20px;
            font-family: Roboto-Light, sans-serif;
            font-size: large;
            color: whitesmoke;
             background-image:linear-gradient(to left,#e50707,#c6040c);
            border-radius:10px;
        }
        .auto-style331:hover{
            background-image:linear-gradient(to left,#9b0308,#790408);
        }
        .auto-style28 {
            border-radius: 20px;
            width: 38%;
            height: 382px;
            border-style: none;
            margin-left: 343px;
            margin-right: 0px;
            margin-top: 11px;
            margin-bottom: 0px;
            background-image:linear-gradient(to left,#41295a,#2F0743);
            opacity:0.9;
        }
        .auto-style30 {
            margin-left: 90px;
            margin-top: 0px;
        }
        .auto-style32 {
            border-radius: 15px;
            width: 38%;
            height: 44px;
            margin-left: 344px;
            margin-top: 59px;
            background-image:linear-gradient(to left,#41295a,#2F0743);
            opacity:0.8;
        }
        .auto-style33 {
            width: 332px;
            height:60px;
            

        }
        .auto-style36 {
            border-radius: 24px;
            text-align: center;
            margin-left: 7px;
            margin-top: 7px;
            margin-bottom: 4px;
            padding-top: 0px;
        }
        .auto-style37 {
            width: 130px;
            height: 21px;
            padding-right: 5px;
        }
        .auto-style38 {
            width: 88px;
            height: 55px;
        }
        .auto-style39 {
            width: 130px;
            height: 55px;
        }
        body {
    background-image:url(/images/reg.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    margin-left: 50px;
    padding: 0;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    height: 100vh;
    overflow: hidden;
}
        .auto-style332 {
            border-radius: 10px;
            text-align: center;
            margin-left: 7px;
        }
        .auto-style334 {
            margin-left: 15px;
        }
        .auto-style335 {
            border-radius: 24px;
            text-align: center;
            margin-left: 15px;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server" class="body">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <table class="auto-style32" border="0">
          <tr>
              <td class="auto-style33">
                <asp:Label ID="Label6" runat="server" BorderStyle="None" CssClass="auto-style30" Font-Names="Harrington" Font-Size="XX-Large" ForeColor="WhiteSmoke" Height="24px" Text="Registration" Width="133px"></asp:Label>
              </td>
          </tr>
      </table>
    <table class="auto-style28" border="0">
        <tr>
            <td class="auto-style38">&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BorderStyle="None" CssClass="auto-style4" Font-Names="Harrington" Font-Size="Large" ForeColor="WhiteSmoke" Height="24px" Text="Name" Width="50px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="auto-style332" Height="30px" Width="203px" Font-Names="Harrington" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label2" runat="server" BorderStyle="None" CssClass="auto-style334" Font-Names="Harrington" Font-Size="Large" ForeColor="WhiteSmoke" Text="Date Of Birth" Width="113px"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" CssClass="auto-style36" Height="30px" Width="203px" TextMode="Date" Font-Names="Harrington" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" BorderStyle="None" CssClass="auto-style334" Font-Names="Harrington" Font-Size="Large" ForeColor="WhiteSmoke" Text="Email ID" Width="76px"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" CssClass="auto-style332" Height="30px" Width="203px" Font-Names="Harrington" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" BorderStyle="None" CssClass="auto-style334" Font-Names="Harrington" Font-Size="Large" ForeColor="WhiteSmoke" Text="Password" Width="81px"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" CssClass="auto-style332" Height="30px" Width="203px" Font-Names="Harrington" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label5" runat="server" BorderStyle="None" CssClass="auto-style335" Font-Names="Harrington" Font-Size="Large" ForeColor="WhiteSmoke" Text="Confirm Password" Width="151px"></asp:Label>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" CssClass="auto-style332" Height="30px" Width="203px" Font-Names="Harrington" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
    </table>
      <asp:Button ID="Button1" runat="server" Text="Register" BorderStyle="None" CssClass="auto-style29" Height="40px" Width="180px" Font-Names="Harrington"/>
      <asp:Button ID="Button2" runat="server" Text="Cancel" BorderStyle="None" CssClass="auto-style331" Height="40px" Width="180px" Font-Names="Harrington"/>
</form>
    </body>
</html>
