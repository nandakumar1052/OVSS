Imports System.Data.SqlClient
Public Class Registration
    Inherits System.Web.UI.Page

    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim qry As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If con.State = ConnectionState.Open Then
            con.Close()
        End If
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Then
            MsgBox("column cannot be empty", MsgBoxStyle.Information)
        Else
            If TextBox3.Text = TextBox4.Text Then

                Try
                    con.Open()
                    cmd.Parameters.Clear()
                    qry = "insert into Logins(Username,Password,Name,Dob) values(@u,@p,@n,@d)"
                    cmd.Connection = con
                    cmd.CommandText = qry
                    Dim u1 As New SqlParameter("@u", SqlDbType.NVarChar)
                    u1.Value = TextBox2.Text
                    Dim p1 As New SqlParameter("@p", SqlDbType.NVarChar)
                    p1.Value = TextBox3.Text
                    Dim n1 As New SqlParameter("@n", SqlDbType.NVarChar)
                    n1.Value = TextBox1.Text
                    Dim d1 As New SqlParameter("@d", SqlDbType.Date)
                    d1.Value = TextBox5.Text
                    cmd.Parameters.Add(u1)
                    cmd.Parameters.Add(p1)
                    cmd.Parameters.Add(n1)
                    cmd.Parameters.Add(d1)
                    Dim da As New SqlDataAdapter
                    da.InsertCommand = cmd
                    da.InsertCommand.ExecuteNonQuery()
                    Response.Redirect("homepage.aspx")

                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            Else
                MsgBox("Password and Confirm Password Must Be same")
            End If

        End If
    End Sub
End Class