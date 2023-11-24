<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="searchpage.aspx.vb" Inherits="OVSS.searchpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="searchpagecss.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 109%;
            height: 59px;
        }
        .auto-style2 {
            width: 104px;
            height: 70px;
        }
        .auto-style3 {
            height: 47px;
        }
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style5 {
            float: left;
            width: 990px;
            margin-left: 5px;
            margin-top: 5px;
        }
        .auto-style6 {
            margin-top: 8px;
            //margin-left: 29px;
            float:right;
            height: 35px;
            width: 35px;
        }
        .n1{
            margin-left:50px
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos] WHERE ([videoname] LIKE '%' + @videoname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="videoname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="searchbar">
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass ="menubtn" ImageAlign="AbsMiddle" ImageUrl="~/images/hamburger-menu.png" />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="search"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass ="searchbtn" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" />
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="n1" ForeColor="White"></asp:Label>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass ="auto-style6" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" />
                             
             </div>
        </div>
        <div class="v1">                                                                                                                                               
            <asp:Panel ID="Panel1" runat="server" CssClass ="panelcss">
                <asp:Button ID="Button1" runat="server" Text="HOME" CssClass="home" />
                <asp:Button ID="Button2" runat="server" Text="TRENDING" CssClass ="trending" />
                <asp:Button ID="Button3" runat="server" Text="WATCH LATER" CssClass ="download" />
                <asp:Button ID="Button4" runat="server" Text="CHANNEL" CssClass ="channel" />
                <asp:Button ID="Button5" runat="server" Text="LOGOUT" CssClass ="logout" />
            </asp:Panel>
        </div>
        <div class="auto-style5">
            <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" Width="990px">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="videolink" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1023px" BackColor="#999999" CssClass="auto-style4">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2" style="border: thin solid #FFFFFF">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%# Eval("videolink") %>' CommandName="Openers" CommandArgument='<%# Eval("videolink") %>'/>
                            </td>
                            <td class="auto-style3" style="border: thin solid #FFFFFF; background-color: #808080">
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
