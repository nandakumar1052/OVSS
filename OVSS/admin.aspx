<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="OVSS.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .v3{
            float:right;
        }
        .panelcss {
            margin-top: 2px;
            width: 200px;
            height: 605px;
            background-color: dimgrey;
        }

        .auto-style1 {
            float: left;
            margin-left: 0px;
        }

        .auto-style2 {
            float:left;
        }

        .auto-style3 {
            height: 364px;
            margin-left: 574px;
        }

        .auto-style4 {
            width: 281px;
        }
        .auto-style5 {
            width: 343px;
            margin-left: 37px;
        }
        .auto-style6 {
            width: 281px;
            height: 221px;
        }

    </style>
</head>
<body style="height: 109px">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videos] WHERE ([report] &gt; @report) ORDER BY [report] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="report" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="0" Visible="False"></asp:Label>
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Height="141px" Width="541px" AutoGenerateColumns="False" DataKeyNames="videolink" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True">
                <Columns>
                    <asp:BoundField DataField="videolink" HeaderText="videolink" ReadOnly="True" SortExpression="videolink" />
                    <asp:BoundField DataField="videoname" HeaderText="videoname" SortExpression="videoname" />
                    <asp:BoundField DataField="views" HeaderText="views" SortExpression="views" />
                    <asp:BoundField DataField="likes" HeaderText="likes" SortExpression="likes" />
                    <asp:BoundField DataField="dislikes" HeaderText="dislikes" SortExpression="dislikes" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                    <asp:BoundField DataField="report" HeaderText="report" SortExpression="report" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="auto-style3">
            <table class="auto-style5" style="border: thin solid #FFFFFF">
            <tr style="border: thin solid #FFFFFF">
                <td class="auto-style6" style="border: medium solid #FFFFFF">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr style="border: thin solid #FFFFFF">
                <td class="auto-style4" style="border: medium solid #FFFFFF">
                    <asp:Button ID="Button1" runat="server" Text="Delete" Width="117px" />
                </td>
            </tr>
                </table>
        </div>
        <br />
        <br />
    </form>
</body>
</html>
