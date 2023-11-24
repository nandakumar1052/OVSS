<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="videos.aspx.vb" EnableSessionState="True" Inherits="OVSS.videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="videosstyle.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style5 {           
    width: 201px;
    height:608px;
    float:left;
}
        .search {
    margin-top: 10px;
    margin-left: 400px;
    width: 600px;
    height: 25px;
    border-radius:8px;
}
        
        .auto-style6 {
            width: 69%;
            height: 523px;
            margin-right: 0px;
            margin-top:2px;
            margin-left:11px;
        }
        .auto-style7 {
            height: 158px;
            width: 642px;
        }
        .auto-style13 {
            height: 7px;
            width: 642px;
        }
        .auto-style17 {
            
            margin-bottom:5px;
        }
        .likestyle{
            margin-top:7p:x;
        }
        .auto-style19 {
            margin-top: 10px;
        }
        .auto-style20 {
            margin-top: 5px;
        }
        .auto-style22 {
            height: 33px;
            width: 642px;
        }
        .auto-style23 {
            margin-top: 1px;
        }
        .auto-style27 {
            width: 100%;
        }
        .auto-style28 {
            height: 23px;
        }
        .auto-style29 {
            margin-left: 8px;
        }
        .auto-style30 {
            margin-left: 4px;
        }
        .auto-style32 {
            margin-top: 8px;
            //margin-left: 29px;
            float:right;
            height: 35px;
            width: 35px;
        }
        .n1{
    margin-left:50px;
    
}
         .bg{
            //background-image:linear-gradient(to left,#373B44,#4286f4);
            background-color:black;
        }
         .v4 {
    float: right;
    width:314px;
        background-image: linear-gradient(to right,#062e89,#030334);

}
         .su{
             border-radius:5px;
             background-image: linear-gradient(to left,#874ff6,#9a29f7);
            
         }
         .su:hover{
             background-image: linear-gradient(to left,#5326aa,#6004a9);
         }
         .searchbar {
    top: auto;
    left: auto;
    height: 50px;
    width: auto;
    background-image: linear-gradient(to right,#062e89,#030334);
    border-radius: 10px;
    margin-top:6px;
    margin-bottom:4px;
    }
        .auto-style34 {
            height: 14px;
            width: 642px;
        }
        .auto-style35 {
            height: 57px;
            width: 642px;
        }
        .panelcss {
    margin-top: 2px;
    width: 200px;
    height: 405px;
        background-image: linear-gradient(to right,#062e89,#030334);

}
        .ma{
            background-image:linear-gradient(to left,#333399,#021B79);
            height:inherit;
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
    .com{
        border-radius:5px;
        width:150px;
        margin-left:2px;
        margin-right:2px;
        margin-bottom:5px;
    }
    .menubtn {
    margin-top: 0px;
    margin-left: 10px;
    height: 40px;
    width: 40px;
    border-radius:40px;
}
    </style>
</head>
<body class="bg">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment] WHERE ([videolink] = @videolink)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label27" Name="videolink" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="searchbar">
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass ="menubtn" ImageAlign="AbsMiddle" ImageUrl="~/images/logo.png" />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="search"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass ="searchbtn" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" />
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="n1" ForeColor="White"></asp:Label>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass ="auto-style32" ImageUrl="~/images/Profile.png" ImageAlign="AbsMiddle" />
                             
             </div>
        </div>
        <div class="auto-style5">                                                                                                                                               
            <asp:Panel ID="Panel1" runat="server" CssClass ="ma">
                <asp:Button ID="Button1" runat="server" Text="HOME" CssClass="home" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Text="TRENDING" CssClass ="trending" ForeColor="White" />
                <asp:Button ID="Button3" runat="server" Text="WATCH LATER" CssClass ="download" ForeColor="White" />
                <asp:Button ID="Button4" runat="server" Text="CHANNEL" CssClass ="channel" ForeColor="White" />
                <asp:Button ID="Button5" runat="server" Text="LOGOUT" CssClass ="logout" ForeColor="White" />
            </asp:Panel>
        </div>
        <div class="v2">

        <table class="auto-style6">
            <tr style="border: thin solid #FFFFFF">
                <td class="auto-style7" style="border: medium solid #FFFFFF">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: solid solid none solid; border-width: thin; border-color: #FFFFFF;">
                    <asp:Label ID="Label13" runat="server" Text="Label" ForeColor="White"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="views" ForeColor="White"></asp:Label>
                &nbsp;
                    <asp:Label ID="Label27" runat="server" BackColor="White" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" style="border-style: none solid solid solid; border-width: thin; border-color: #FFFFFF;">
                    <asp:Label ID="Label15" runat="server" Text="Label" ForeColor="White" Font-Names="Baskerville Old Face" Font-Size="XX-Large" Font-Strikeout="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" style="border: thin solid #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton4" runat="server"  CssClass="auto-style23" Height="27px" ImageAlign="Middle" Width="27px" ImageUrl="~/images/image-removebg-preview (3).png" EnableViewState="True" PostBackUrl="~/videos.aspx" />
&nbsp;
                    <asp:Label ID="Label16" runat="server" Text="Like" ForeColor="White" CssClass="auto-style17" Height="16px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style17" Height="46px" ImageAlign="Middle" Width="42px" ImageUrl="~/images/image-removebg-preview.png" />
&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Dislike" ForeColor="White" Height="16px" CssClass="auto-style19"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:ImageButton ID="ImageButton6" runat="server" CssClass="auto-style17" Height="26px" ImageAlign="Middle" Width="26px" ImageUrl="~/images/image-removebg-preview (2).png" />
&nbsp;
                    <asp:Label ID="Label18" runat="server" Text="Watch Later" ForeColor="White" Height="16px" CssClass="auto-style20"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton7" runat="server" CssClass="auto-style17" Height="26px" ImageAlign="Middle" Width="26px" ImageUrl="~/images/image-removebg-preview (1).png" />
&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="comment" ForeColor="White" Height="16px" CssClass="auto-style20"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton10" runat="server" CssClass="auto-style17" Height="26px" ImageAlign="Middle" Width="26px" ImageUrl="~/images/image-removebg-preview.png" />
                    <asp:Label ID="Label31" runat="server" Text="Report" ForeColor="White" Height="16px" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35" style="border: thin solid #FFFFFF"&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageAlign="Middle" Width="30px" />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label20" runat="server" Text="Label" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="Label" ForeColor="White"></asp:Label>
&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="Subscribers" ForeColor="White"></asp:Label>
&nbsp;
                    <asp:Button ID="Button6" runat="server" Text="Subscribe" Width="79px" BackColor="Red" ForeColor="White" />
                </td>
            </tr>
            </table>
            
    </div>
        <div class="v4">
            <asp:Panel ID="Panel3" runat="server" ScrollBars="Both" Height="200px">
                <asp:Label ID="Label1" runat="server" Text="Comment" ForeColor="White"></asp:Label><asp:TextBox ID="TextBox3" runat="server" CssClass="com"></asp:TextBox><asp:Button ID="Button7" runat="server" Text="Submit" CssClass="su" ForeColor="White" />
                <asp:DataList ID="DataList2" runat="server" DataKeyField="videolink" DataSourceID="SqlDataSource2" CssClass="auto-style30" Height="517px" Width="237px" >
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td style="border: thin solid #000000">
                                    <asp:Label ID="Label28" runat="server" Font-Size="Medium" Text='<%# Eval("name") %>' ForeColor="White"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label29" runat="server" Font-Size="Small" Text='<%# Eval("dates") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: none solid solid solid; border-width: thin; border-color: #000000">
                                    <asp:Label ID="Label30" runat="server" Font-Size="Large" Text='<%# Eval("comment") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
    <div class="v3">
        <asp:Panel ID="Panel2" runat="server" CssClass ="panelcss" BackColor="Gray" Width="315px" ScrollBars="Vertical">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style29" DataKeyField="videolink" ShowFooter="False" ShowHeader="False" Width="279px">
                <ItemTemplate>
                    <table class="auto-style27">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl='<%# Eval("videolink") %>' CommandName="Closer" CommandArgument='<%# Eval("videolink") %>' Width="279px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("videoname") %>' ForeColor="White" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text='<%# Eval("views") %>' ForeColor="White" Font-Size="Small"></asp:Label>
                                &nbsp;<asp:Label ID="Label26" runat="server" Text="views" ForeColor="White" Font-Size="Small"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
     </div>
    </form>
</body>
</html>
