
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" EnableSessionState="True" Inherits="OVSS.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="dashcss.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            //background-image:linear-gradient(to left,#373B44,#4286f4);
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            margin-top: 8px;
            //margin-left: 10px;
            float:right;
            height: 35px;
            width: 35px;
            margin-right:5px;
        }
        .n1{
    margin-left:50px;

    
}
        .bg{
            //background-image:linear-gradient(to left,#373B44,#4286f4);
            background-color:black;
        }
        .panelcss
        {
            background-image:linear-gradient(to left,#333399,#021B79);
            height:inherit;
            
        }
        .v1 {
    width: 201px;
    height:1000px;
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
    </style>
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    </head>
<body class="bg">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos]"></asp:SqlDataSource>
        <div class="searchbar">
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass ="menubtn" ImageAlign="AbsMiddle" ImageUrl="~/images/logo.png" />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="search"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass ="searchbtn" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" />        
                <asp:Label ID="Label4" runat="server" CssClass="n1" Text="Label" ForeColor="White"></asp:Label>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass ="auto-style4" ImageUrl="~/images/Profile.png" ImageAlign="AbsMiddle" />
                             
             </div>
        </div>

        <div class="v1">                                                                                                                                               
            <asp:Panel ID="Panel1" runat="server" CssClass ="panelcss">
                <asp:Button ID="Button1" runat="server" Text="HOME" CssClass="home" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Text="TRENDING" CssClass ="trending" ForeColor="White" />
                <asp:Button ID="Button3" runat="server" Text="WATCH LATER" CssClass ="download" ForeColor="White" />
                <asp:Button ID="Button4" runat="server" Text="CHANNEL" CssClass ="channel" ForeColor="White" />
                <asp:Button ID="Button5" runat="server" Text="LOGOUT" CssClass ="logout" ForeColor="White" />
            </asp:Panel>
        </div>
            <div class="v2">
                
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" DataKeyField="videolink" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" style="margin-left: 204px; margin-top: 0px" Width="833px" Height="222px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:ImageButton ID="ImageButton4" runat="server" 5qeImageUrl='<%# Eval("videolink") %>' Width="270px" Height="150px" ImageAlign="Middle" CommandName="opener" CommandArgument='<%# Eval("videolink") %>' ImageUrl='<%# Eval("videolink") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("videoname") %>' Font-Size="X-Large" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("views") %>' ForeColor="White"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text="views" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
                
                </div>
    </form>
</body>
</html>
