Imports System.Data.SqlClient
Imports System.Drawing
Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Register(ByVal sender As Object, ByVal e As EventArgs)
        Dim conn As SqlConnection = New SqlConnection()
        conn.ConnectionString = "Data Source=d202.sql.uict.nz;Initial Catalog=0741059;Integrated Security=True"
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand("Insert into accounts" & "(First_Name, Last_Name, Email, Password) " & "values (@First_Name, @Last_Name, @Email,@Password)", conn)
        cmd.Parameters.AddWithValue("@First_Name", txtFirstName.Text)
        cmd.Parameters.AddWithValue("@Last_Name", txtLastName.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text)

        If CheckBox1.Checked Then
            cmd.ExecuteNonQuery()
            txtFirstName.Text = ""
            txtLastName.Text = ""
            txtEmail.Text = ""
            txtPassword.Text = ""
            CheckBox1.Checked = False
            Label2.ForeColor = Color.Green

            Label2.Text = "Registered Successfully !!!"
        Else
            Label2.ForeColor = Color.Red
            Label2.Text = "*Accept the Terms of Use & Privacy Policy"
        End If


    End Sub

End Class