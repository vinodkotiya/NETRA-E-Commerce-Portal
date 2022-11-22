Imports Common
Imports dbOp
Partial Class contact
    Inherits System.Web.UI.Page

    Private Sub contact_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            ' Session("eid") = "9383"
            '  Session.Clear()



            '  If Session("eid") Is Nothing Then

            '   Response.Redirect("login.aspx?redirectafterlogin=Default.aspx&dummy=1")
            '     Response.Redirect("lock.aspx?day=" & Now.Day)
            'End If
            '  End If

            executeDB("insert into login (eid, log, logintime) values (" & Session("eid") & " , 'Contact.aspx Page Access : at " & Now.ToString() & " - " & Request.UserHostAddress & "', current_timestamp)", "logdb")

            If Not Page.IsPostBack Then
                'Dim PICurl = "http://10.0.236.26:8090/bday/photos/" + Session("eid").ToString.PadLeft(8, "0") + ".jpg"
                cssmenu.InnerHtml = makemenu(4)
                divfooter.InnerHtml = getFooter()
            End If
        Catch e1 As Exception
            Response.Write("<div id='bottomline'>" & e1.Message & "</div>")
        End Try
    End Sub
End Class
