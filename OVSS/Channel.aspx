<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Channel.aspx.vb" Inherits="OVSS.Channel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="channelcss.css" />
    <!--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style6 {
            margin-top: 8px;
            //margin-left: 29px;
            float:right;
            }
        .n1{
            margin-left:50px
        }
        .auto-style7 {
            width: 840px;
            height: 359px;
        }
        .auto-style8 {
            width: 337px;
        }
        .auto-style9 {
            margin-left: 92px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style12 {
            margin-left: 320px;
        }
        .auto-style13 {
            margin-left: 45px;
        }
        .auto-style17 {
            margin-left: 21px;
        }
        .auto-style18 {
            margin-left: 24px;
        }
        .auto-style19 {
            margin-top: 2px;
            background-color: dimgrey;
            //margin-right: 0px;
            float:right
        }
        .auto-style20 {
            float: right;
            height: 564px;
            margin-left: 0px;
            margin-right: 6px;
            width:280px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #000000">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label4" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="searchbar">
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass ="menubtn" ImageAlign="AbsMiddle" ImageUrl="~/images/hamburger-menu.png" />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="search"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass ="searchbtn" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" />
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="n1" ForeColor="White"></asp:Label>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass ="auto-style6" ImageUrl="~/images/search-icon.png" ImageAlign="AbsMiddle" Width="16px" />
                             
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
        <div class="v2" style="border: 2px solid #FFFFFF">

            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal><br /></br>
                        <asp:Button ID="Button6" runat="server" Text="view" />
                    </td>
                    <td>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal></br><br />
                        <asp:Button ID="Button7" runat="server" Text="view" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Video path"></asp:Label>
                                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FF3300" CssClass="auto-style17" ForeColor="White" Width="203px" />
        
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Thumbnail path"></asp:Label>
                                <asp:FileUpload ID="FileUpload2" runat="server" BackColor="#FF3300" CssClass="auto-style18" ForeColor="White" Width="203px"/>
        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" ForeColor="White" Text="Video name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" Height="20px" Width="435px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button8" runat="server" CssClass="auto-style12" Text="Upload" Width="157px" />
                    </td>
                </tr>
            </table>

        </div>
        <div class="auto-style20">
        <asp:Panel ID="Panel2" runat="server" CssClass ="auto-style19" BackColor="Gray" Width="280px" ScrollBars="Vertical" Height="560px">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style29" DataKeyField="videolink" ShowFooter="False" ShowHeader="False" Width="255px" Height="558px" style="margin-left: 0px; margin-right: 0px">
                <ItemTemplate>
                    <table class="auto-style27">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl='<%# Eval("videolink") %>' CommandName="Closer" CommandArgument='<%# Eval("videolink") %>' Width="255px" />
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
