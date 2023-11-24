Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class homepage
    Inherits System.Web.UI.Page

    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim i As String
    Private Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub


    Private Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        If Email.Text <> "" And Password.Text <> "" Then
            Dim cmd As New SqlCommand

            If con.State = ConnectionState.Open Then

                con.Close()

            End If

            Try

                con.Open()
                cmd.Connection = con
                cmd.CommandText = "select Username,Password,Name,Dob from Logins where Username= " & " (@Username)"
                Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
                ps.Direction = ParameterDirection.Input
                ps.Value = Email.Text
                cmd.Parameters.Add(ps)
                dr = cmd.ExecuteReader
                Do While dr.Read
                    i = dr("Password")
                Loop
                If Password.Text = i Then
                    Session("user") = Email.Text
                    Response.Redirect("dashboard.aspx")
                Else
                    MsgBox("Wrong Password!!!")
                End If
            Catch ex As Exception

            End Try
        Else
            MsgBox("Enter username and password")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Registration.aspx")
    End Sub

End Class