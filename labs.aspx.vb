Imports Common
Imports dbOp
Partial Class labs
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

            executeDB("insert into login (eid, log, logintime) values (" & Session("eid") & " , 'LAB.aspx Page Access : at " & Now.ToString() & " - " & Request.UserHostAddress & "', current_timestamp)", "logdb")

            If Not Page.IsPostBack Then
                Dim testid = "1"
                If Not Request.Params("testid") Is Nothing Then testid = Request.Params("testid")
                cssmenu.InnerHtml = makemenu(2)
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
        divLabName.InnerHtml = "<h1>" & getDBsingle("select lab from netra_labs where labid = " & labid & " limit 1") & "</h1>"
        slider.InnerHtml = "<li><img src='images/lab" & labid & ".jpg'  /></li>"
        ddlTest.DataSource = getDBTable("select testid, test from netra_test where labid=" & labid)
        ddlTest.DataBind()
        ddlTest.SelectedValue = testid
        divspecs.InnerHtml = "<li><strong>Valid Till</strong> <span>2018</span></li>" &
                                        "<li><strong>Rating</strong> <span>4/5</span></li>" &
                                        "<li><strong>Total Tests</strong> <span>" & totaltest & "</span></li>"

        divinfo.InnerHtml = "<h2>" & ddlTest.SelectedItem.Text & " Test Detail: </h2> <p> Units for test are in " & unit & ". Test Detail not available. Yet to be added.</p>"
        divDetail.InnerHtml = "<h2>" & ddlTest.SelectedItem.Text & " Test Description: </h2> <p> Test Description & Methodology not available. Yet to be added.</p>"
    End Sub

    Private Sub ddlTest_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlTest.SelectedIndexChanged
        Response.Redirect("labs.aspx?testid=" & ddlTest.SelectedValue)
    End Sub

    Private Sub btnBook_Click(sender As Object, e As EventArgs) Handles btnBook.Click
        Response.Redirect("client.aspx?testid=" & ddlTest.SelectedValue)
    End Sub
End Class
