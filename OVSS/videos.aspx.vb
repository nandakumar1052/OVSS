Imports System.Data
Imports System.Data.SqlClient
Imports System.Windows
Public Class videos
    Inherits System.Web.UI.Page
    Dim l, d, v,i As Integer
    Dim n, vn, li, m As String
    Dim Logincon = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\OVSS\OVSS\App_Data\Login.mdf;Integrated Security=True"
    Dim con As New SqlConnection(Logincon)
    Dim name As String
    Dim g As Integer = 0

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Dim p As String = Session("m").ToString()
        Dim cmd As New SqlCommand
        Dim lp As Integer
        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select * from videos where videolink= " & " (@Username)"
            Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            dr = cmd.ExecuteReader
            Do While dr.Read
                lp = dr("likes")
            Loop
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try
            If (p = "0") Then
                name = Session("name1").ToString()
            Else
                name = Session("name2").ToString()
            End If
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "update videos set likes='" & lp + 1 & "' where videolink=" & " (@UP)"
            Dim ps As New SqlParameter("@UP", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        Dim p As String = Session("m").ToString()
        Dim pq As Integer
        Dim cmd As New SqlCommand

        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select * from videos where videolink= " & " (@Username)"
            Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            dr = cmd.ExecuteReader

            Do While dr.Read
                pq = dr("dislikes")
            Loop
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try
            If (p = "0") Then
                name = Session("name1").ToString()
            Else
                name = Session("name2").ToString()
            End If
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "update videos set dislikes='" & pq + 1 & "' where videolink=" & " (@UP)"
            Dim ps As New SqlParameter("@UP", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Session("text") = TextBox1.Text
        Response.Redirect("searchpage.aspx")
    End Sub

    Protected Sub DataList1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub ImageButton7_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton7.Click
        If Panel3.Visible = False Then
            Panel3.Visible = True
        Else
            Panel3.Visible = False
        End If

    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton6.Click

        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try
            con.Open()
            cmd.Parameters.Clear()
            cmd.CommandText = "insert into watches(videolink,videoname,name) values(@v,@m,@n)"
            cmd.Connection = con
            Dim pi As New SqlParameter("@v", SqlDbType.NVarChar)
            pi.Value = name
            Dim pf As New SqlParameter("@m", SqlDbType.NVarChar)
            pf.Value = vn
            Dim pl As New SqlParameter("@n", SqlDbType.NVarChar)
            pl.Value = n
            cmd.Parameters.Add(pi)
            cmd.Parameters.Add(pf)
            cmd.Parameters.Add(pl)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()

            MsgBox("Added To WatchLater")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("watchlater.aspx")
    End Sub

    Protected Sub ImageButton10_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton10.Click
        Dim lk As Integer
        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select * from videos where videolink= " & " (@Username)"
            Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            dr = cmd.ExecuteReader
            Do While dr.Read
                lk = dr("report")
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
            cmd.CommandText = "update videos set report='" & lk + 1 & "' where videolink=" & " (@UP)"
            Dim ps As New SqlParameter("@UP", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = name
            cmd.Parameters.Add(ps)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("dashboard.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("trending.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("Channel.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("homepage.aspx")
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click

        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Dim pp As Integer
        Try

            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select * from Logins where Username= " & " (@Un)"
            Dim ps As New SqlParameter("@Un", SqlDbType.NVarChar)
            ps.Direction = ParameterDirection.Input
            ps.Value = n
            cmd.Parameters.Add(ps)
            dr = cmd.ExecuteReader

            Do While dr.Read
                pp = dr("subscriber")
            Loop
            MsgBox(pp)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Try

            con.Open()
            cmd.Parameters.Clear()
            cmd.CommandText = "update Logins set subscriber='" & pp + 1 & "' where Username=" & " (@UP)"
            cmd.Connection = con
            Dim pi As New SqlParameter("@UP", SqlDbType.NVarChar)
            pi.Value = n
            cmd.Parameters.Add(pi)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()
            MsgBox("subscribed")

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


        con.Close()
    End Sub

    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label3.Text = Session("user").ToString()
        If (Session("name1") <> Nothing) Then
            Dim p As String = Session("m").ToString()
            If (p = "0") Then
                name = Session("name1").ToString()
            Else
                name = Session("name2").ToString()
            End If

            Dim cmd As New SqlCommand

            If con.State = ConnectionState.Open Then

                con.Close()

            End If

            Try

                con.Open()
                cmd.Connection = con
                cmd.CommandText = "select * from videos where videolink= " & " (@Username)"
                Dim ps As New SqlParameter("@Username", SqlDbType.NVarChar)
                ps.Direction = ParameterDirection.Input
                ps.Value = name
                cmd.Parameters.Add(ps)
                dr = cmd.ExecuteReader
                Do While dr.Read
                    l = dr("likes")
                    d = dr("dislikes")
                    v = dr("views")
                    li = dr("link")
                    n = dr("name")
                    vn = dr("videoname")
                Loop
                Dim lp As String = "<video width=""800"" height=""400"" controls><source src=""" & li & """" & "type=""video/mp4""></video>"
                Literal1.Text = lp
                Label13.Text = v
                Label15.Text = vn
                Label16.Text = l
                Label17.Text = d
                Label20.Text = n
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            Label27.Text = name
            Dim pm As Integer = 0
            If con.State = ConnectionState.Open Then

                con.Close()

            End If
            Try

                con.Open()
                cmd.Connection = con
                cmd.CommandText = "select * from Logins where Username= " & " (@UP)"
                Dim ps As New SqlParameter("@UP", SqlDbType.NVarChar)
                ps.Direction = ParameterDirection.Input
                ps.Value = n
                cmd.Parameters.Add(ps)
                dr = cmd.ExecuteReader
                Do While dr.Read
                    Label21.Text = dr("subscriber")
                Loop

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try

        End If
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click


        If con.State = ConnectionState.Open Then

            con.Close()

        End If

        Try
            con.Open()
            cmd.Parameters.Clear()
            cmd.CommandText = "insert into Comment(videolink,comment,name,dates) values(@v,@m,@n,@d)"
            cmd.Connection = con
            Dim pi As New SqlParameter("@v", SqlDbType.NVarChar)
            pi.Value = name
            Dim pf As New SqlParameter("@m", SqlDbType.NVarChar)
            pf.Value = TextBox3.Text
            Dim pl As New SqlParameter("@n", SqlDbType.NVarChar)
            pl.Value = n
            Dim pa As New SqlParameter("@d", SqlDbType.DateTime)
            pa.Value = DateTime.Now.ToString()
            cmd.Parameters.Add(pi)
            cmd.Parameters.Add(pf)
            cmd.Parameters.Add(pl)
            cmd.Parameters.Add(pa)
            Dim da As New SqlDataAdapter
            da.InsertCommand = cmd
            da.InsertCommand.ExecuteNonQuery()
            MsgBox("success")
            TextBox3.Text = ""

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Button7.OnClientClick = "return false"
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
        If (e.CommandName = "Closer") Then
            Session("name2") = e.CommandArgument.ToString()
            Session("m") = "1"
            Response.Redirect("videos.aspx?id=" + e.CommandArgument.ToString())
        End If
    End Sub

End Class