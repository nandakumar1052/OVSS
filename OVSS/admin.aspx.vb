Imports System.Data.SqlClient

Public Class admin
    Inherits System.Web.UI.Page
    Dim li, ls As String
    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim qry As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        li = GridView1.SelectedRow.Cells(7).Text
        Session("mee") = GridView1.SelectedRow.Cells(1).Text
        MsgBox(li)
        Dim lp As String = "<video width=""500"" height=""300"" controls><source src=""" & li & """" & "type=""video/mp4""></video>"
        Literal1.Text = lp
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        ls = Session("mee")
        MsgBox(ls)
        qry = "Delete from videos where videolink = '" & ls & "'"
        cmd = New SqlCommand(qry, con)
        cmd.ExecuteNonQuery()
        MsgBox("success")
    End Sub
End Class