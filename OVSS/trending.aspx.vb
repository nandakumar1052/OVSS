Imports System.Data
Imports System.Data.SqlClient
Public Class trending
    Inherits System.Web.UI.Page

    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim i As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label4.Text = Session("user").ToString()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("dashboard.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("trending.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("watchlater.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("Channel.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("homepage.aspx")
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Session("text") = TextBox1.Text
        Response.Redirect("searchpage.aspx")
    End Sub

    Private Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        Dim cmd As New SqlCommand

        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select views from videos where videolink=" & " (@Username)"
            Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = e.CommandArgument.ToString()
            cmd.Parameters.Add(ps)
            dr = cmd.ExecuteReader
            Do While dr.Read
                i = dr("views")
            Loop
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "update videos set views='" & i + 1 & "' where videolink=" & " (@U)"
            Dim ps As New SqlParameter("@U", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = e.CommandArgument.ToString()
            cmd.Parameters.Add(ps)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        Session("name1") = e.CommandArgument.ToString()
            Session("m") = "0"

        Response.Redirect("videos.aspx?id=" + e.CommandArgument.ToString())

    End Sub
End Class