<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="trending.aspx.vb" Inherits="OVSS.trending" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="trendingcss.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style5 {
            float: left;
            width: 1011px;
            margin-left: 5px;
            margin-top: 5px;
            background-color:black;
        }
        .auto-style6 {
            width: 950px;
        }
        .panelcss
        {
            background-image:linear-gradient(to left,#333399,#021B79);
            height:inherit;
            
        }
        .v1 {
    width: 201px;
    height:3000px;
    float:left;
}
    .searchbar {
    top: auto;
    left: auto;
    height: 50px;
    width: auto;
    background-image: linear-gradient(to right,#062e89,#030334);
    border-radius: 10px;
}
    .search{
    margin-top:10px;
    margin-left:400px;
    width:600px;
    height:25px;
    border-radius:10px;
}
    .trending {
    margin-top: 2px;
    margin-left: 0px;
    height: 45px;
    width: 200px;
    border: none;
    background-image: linear-gradient(to left,#21025f,#2a004d);
}
.trending:hover {
    background-image: linear-gradient(to left,#170141,#200139);
}
.download {
    margin-top: 2px;
    margin-left: 0px;
    height: 45px;
    width: 200px;
    border: none;
    background-image: linear-gradient(to left,#21025f,#2a004d);
}
.download:hover {
    background-image: linear-gradient(to left,#170141,#200139);
}
.channel {
    margin-top: 2px;
    margin-left: 0px;
    height: 45px;
    width: 200px;
    border: none;
    background-image: linear-gradient(to left,#21025f,#2a004d);
}
.channel:hover {
    background-image: linear-gradient(to left,#170141,#200139);
}
.logout {
    margin-top: 2px;
    margin-left: 0px;
    height: 45px;
    width: 200px;
    border: none;
    background-image: linear-gradient(to left,#21025f,#2a004d);
}
.logout:hover {
    background-image: linear-gradient(to left,#170141,#200139);
}
.searchbtn{
    margin-top:2px;
    left:auto;
    
    height:30px;
    width:30px;
    
}
.searchbtn:hover{
    background-color:blue;
}
        .home {
    margin-top: 15px;
    margin-left: 0px;
    height: 45px;
    width: 200px;
    border: none;
    background-image: linear-gradient(to left,#21025f,#2a004d);
    opacity: 0.8;
}
    .home:hover {
        background-image: linear-gradient(to left,#170141,#200139);
    }
    .menubtn {
    margin-top: 0px;
    margin-left: 10px;
    height: 40px;
    width: 40px;
    border-radius:40px;
}
    .iconbtn {
    margin-top: -35px;
            //margin-left: 10px;
            float:right;
            height: 35px;
            width: 35px;
            margin-right:5px;
            margin-bottom:10px;
}
    .bg{
        background-color:black;
    }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos] ORDER BY [views] DESC">
        </asp:SqlDataSource>
        <div class="searchbar">
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass ="menubtn" ImageAlign="AbsMiddle" ImageUrl="~/images/logo.png" />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="search"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass ="searchbtn" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" /> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <asp:ImageButton ID="ImageButton3" runat="server" CssClass ="iconbtn" ImageUrl="~/images/Profile.png" ImageAlign="AbsMiddle" />
                             
             </div>
        </div>
        <div class="v1">                                                                                                                                               
            <asp:Panel ID="Panel1" runat="server" CssClass ="panelcss">
                <asp:Button ID="Button1" runat="server" Text="HOME" CssClass="home" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Text="TRENDING" CssClass ="trending" ForeColor="White" />
                <asp:Button ID="Button3" runat="server" Text="DOWNLOADS" CssClass ="download" ForeColor="White" />
                <asp:Button ID="Button4" runat="server" Text="CHANNEL" CssClass ="channel" ForeColor="White" />
                <asp:Button ID="Button5" runat="server" Text="LOGOUT" CssClass ="logout" ForeColor="White" />
            </asp:Panel>
        </div>
        <div class="auto-style5">
            <asp:Panel ID="Panel2" runat="server" BackColor="Black" Width="990px">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="videolink" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1023px" BackColor="Black" CssClass="auto-style4">
                <ItemTemplate>
                    <table class="auto-style1" style="background-color: #000000">
                        <tr>
                            <td class="auto-style2" style="border: thin solid #FFFFFF">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%# Eval("videolink") %>' CommandName="Openrs" CommandArgument='<%# Eval("videolink") %>'/>
                            </td>
                            <td class="auto-style6" style="border: thin solid #FFFFFF; background-color: #000000">
                                <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text='<%# Eval("videoname") %>' ForeColor="White" CssClass="video"></asp:Label>
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Size="Small" Text='<%# Eval("views") %>' ForeColor="White"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="views" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
