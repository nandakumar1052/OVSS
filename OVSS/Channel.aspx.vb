Imports System.IO
Imports System.Data.SqlClient
Public Class Channel
    Inherits System.Web.UI.Page
    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim a As String
    Dim b As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label4.Text = Session("user").ToString()
    End Sub


    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        If FileUpload2.HasFile = True Then
            Session("vi1") = FileUpload2.FileName
            FileUpload2.SaveAs(Server.MapPath("~/images/" + FileUpload2.FileName))

            Dim ls As String = "images/" + FileUpload2.FileName
            Dim lp As String = "<image width=""400"" height=""300"" src=""" & ls & """" & "/>"
            Literal2.Text = lp
            MsgBox(a)
        Else
            MsgBox("select file")
        End If

    End Sub

    Protected Sub Button6_Click1(sender As Object, e As EventArgs) Handles Button6.Click
        If FileUpload1.HasFile = True Then
            Session("vi2") = FileUpload1.FileName
            FileUpload1.SaveAs(Server.MapPath("~/videos/" + FileUpload1.FileName))

            Dim lm As String = "videos/" + FileUpload1.FileName
            Dim lp As String = "<video width=""400"" height=""300"" controls><source src=""" & lm & """" & "type=""video/mp4""></video>"
            Literal1.Text = lp
            MsgBox("file Uploaded")
            MsgBox(b)
        Else
            MsgBox("select file")
        End If
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If TextBox4.Text <> "" Then

            Try
                con.Open()
                cmd.Parameters.Clear()
                cmd.CommandText = "insert into videos(videolink,videoname,views,likes,dislikes,name,link,report) values(@vl,@vn,@v,@l,@d,@n,@li,@rp)"
                cmd.Connection = con
                Dim p As New SqlParameter("@vl", SqlDbType.NVarChar)
                p.Value = "~/images/" & Session("vi1").ToString()
                Dim q As New SqlParameter("@vn", SqlDbType.NVarChar)
                q.Value = TextBox4.Text
                Dim r As New SqlParameter("@v", SqlDbType.Int)
                r.Value = 0
                Dim rs As New SqlParameter("@rp", SqlDbType.Int)
                rs.Value = 0
                Dim s As New SqlParameter("@l", SqlDbType.Int)
                s.Value = 0
                Dim t As New SqlParameter("@d", SqlDbType.Int)
                t.Value = 0
                Dim u As New SqlParameter("@n", SqlDbType.NVarChar)
                u.Value = Label4.Text
                Dim v As New SqlParameter("@li", SqlDbType.NVarChar)
                v.Value = "videos/" & Session("vi2").ToString()
                cmd.Parameters.Add(p)
                cmd.Parameters.Add(q)
                cmd.Parameters.Add(s)
                cmd.Parameters.Add(t)
                cmd.Parameters.Add(u)
                cmd.Parameters.Add(v)
                cmd.Parameters.Add(r)
                cmd.Parameters.Add(rs)
                Dim da As New SqlDataAdapter
                da.InsertCommand = cmd
                da.InsertCommand.ExecuteNonQuery()
                MsgBox("Uploaded")
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MsgBox("enter videoname")
        End If
    End Sub
End Class