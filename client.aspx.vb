Imports Common
Imports dbOp
Partial Class client
    Inherits System.Web.UI.Page

    Private Sub lab_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            ' Session("eid") = "9383"
            '  Session.Clear()



            '  If Session("eid") Is Nothing Then

            '   Response.Redirect("login.aspx?redirectafterlogin=Default.aspx&dummy=1")
            '     Response.Redirect("lock.aspx?day=" & Now.Day)
            'End If
            '  End If

            executeDB("insert into login (eid, log, logintime) values (" & Session("eid") & " , 'client.aspx Page Access : at " & Now.ToString() & " - " & Request.UserHostAddress & "', current_timestamp)", "logdb")

            If Not Page.IsPostBack Then
                Dim testid = "1"
                If Not Request.Params("testid") Is Nothing Then
                    testid = Request.Params("testid")
                Else
                    Response.Redirect("labs.aspx")
                    Exit Sub
                End If

                cssmenu.InnerHtml = makemenu(4)
                loadLab(testid)
                divfooter.InnerHtml = getFooter()
            End If
        Catch e1 As Exception
            Response.Write("<div id='bottomline'>" & e1.Message & "</div>")
        End Try
    End Sub
    Sub loadLab(ByVal testid As String)
        Dim labid = getDBsingle("select labid from netra_test where testid = " & testid & " limit 1")
        Dim totaltest = getDBsingle("select count(test) from netra_test where labid = " & labid)
        Dim unit = getDBsingle("select unit from netra_test where testid = " & testid & " limit 1")
        divLabName.InnerHtml = "<h1>Client Registration/Verification Before Booking</h1>"




    End Sub

    Private Sub btnLoad_Click(sender As Object, e As EventArgs) Handles btnLoad.Click
        divspecs.InnerHtml = "<li><strong>Name</strong> <span>2018</span></li>" &
             "<li><strong>Company</strong> <span>4/5</span></li>" &
                                       "<li><strong>Email</strong> <span>4/5</span></li>" &
                                       "<li><strong>Contact</strong> <span>kk</span></li>"
    End Sub
End Class
