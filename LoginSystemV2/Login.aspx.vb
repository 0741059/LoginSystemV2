Imports System.Data.SqlClient
Imports System.Drawing

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login(ByVal sender As Object, ByVal e As EventArgs)
        Dim conn As SqlConnection = New SqlConnection()
        conn.ConnectionString = "Data Source=d202.sql.uict.nz;Initial Catalog=0741059;Integrated Security=True"
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand("select * from accounts where First_Name=@First_Name and Password=@Password", conn)
        cmd.Parameters.AddWithValue("@First_Name", txtName.Text)
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text)
        Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()
        da.Fill(dt)

        cmd.ExecuteNonQuery()

        If dt.Rows.Count > 0 Then
            Server.Transfer("~/Dashboard.aspx")
        Else
            Label2.ForeColor = Color.Red
            Label2.Text = "*Your Username or Password is incorrect"
        End If

    End Sub

End Class