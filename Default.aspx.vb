Imports dbOp
Imports Common
Partial Class _Default
    Inherits System.Web.UI.Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            ' Session("eid") = "9383"
            '  Session.Clear()



            '  If Session("eid") Is Nothing Then

            '   Response.Redirect("login.aspx?redirectafterlogin=Default.aspx&dummy=1")
            '     Response.Redirect("lock.aspx?day=" & Now.Day)
            'End If
            '  End If

            executeDB("insert into login (eid, log, logintime) values (" & Session("eid") & " , 'Default.aspx Page Access : at " & Now.ToString() & " - " & Request.UserHostAddress & "', current_timestamp)", "logdb")

            If Not Page.IsPostBack Then
                'Dim PICurl = "http://10.0.236.26:8090/bday/photos/" + Session("eid").ToString.PadLeft(8, "0") + ".jpg"
                cssmenu.InnerHtml = makemenu(1)
                ddlLab.DataSource = getDBTable("select labid,lab from netra_labs where 1")
                ddlLab.DataBind()
                ddlTest.DataSource = getDBTable("select testid, test from netra_test where labid=" & ddlLab.SelectedValue)
                ddlTest.DataBind()
                LoadLabs()
                divFooter.InnerHtml = getfooter
            End If
        Catch e1 As Exception
            Response.Write("<div id='bottomline'>" & e1.Message & "</div>")
        End Try
    End Sub
    '
    Sub LoadLabs()
        Dim labs1 = "<div class='col-1-3'>" &
        "					<div class='wrap-col'>" &
"	<div class='item t-center'><div class='item-container'>	<a href='single.html'><div class='item-caption'>	<div class='item-caption-inner'><div class='item-caption-inner1'><span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span></div>	</div>	</div>	<img src='images/car1.jpg' /></a></div>	<div class='item-info'>	<a href='single.html'><h3>1</h3></a><p>32,000 km €78,400</p></div> </div>" &
                                "</div>" &
                        "</div>"
        Dim labs = ""
        Dim mydt = getDBTable("select labid, lab from netra_labs where 1 order by labid ")
        'Dim i = 1
        'Dim labsetof2 = ""
        'For Each r In mydt.Rows

        '    If i Mod 2 = 1 Then labsetof2 = "<div class='wrap-col'>"

        '    Dim singlelab = "	<div class='item t-center'><div class='item-container'>	<a href='single.html'><div class='item-caption'>	<div class='item-caption-inner'><div class='item-caption-inner1'><span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span></div>	</div>	</div>	<img src='images/car1.jpg' /></a></div>	<div class='item-info'>	<a href='single.html'><h3>" & r(1) & "</h3></a><p>32,000 km €78,400</p></div> </div>"
        '    labsetof2 = labsetof2 & singlelab
        '    If i Mod 2 = 0 Then
        '        labsetof2 = labsetof2 & "</div>"
        '        labs = labs & "<div class='col-1-3'>" & labsetof2 & "</div>"
        '        labsetof2 = ""
        '    End If

        '    i = i + 1
        'Next
        For Each r In mydt.Rows
            Dim labname = r(1)
            If labname.ToString.Length < 30 Then labname = labname & "<br/>."
            Dim totaltest = getDBsingle("select count(test) from netra_test where labid = " & r(0))
            Dim testid = getDBsingle("select testid from netra_test where labid = " & r(0) & " limit 1")
            labs = labs & "<div class='col-1-3'>" &
        "					<div class='wrap-col'>" &
"	<div class='item t-center'><div class='item-container'>	<a href='labs.aspx?testid=" & testid & "'><div class='item-caption'>	<div class='item-caption-inner'><div class='item-caption-inner1'><span>Select the desired test out of " & totaltest & " tests from this Lab.</span></div>	</div>	</div>	<img src='images/lab" & r(0) & ".jpg'  /></a></div>	<div class='item-info'>	<a href='labs.aspx?testid=" & testid & "'><h3>" & labname & "</h3></a><p>Total Tests: " & totaltest & "</p></div> </div>" &
                                "</div>" &
                        "</div>"
        Next
        divLab.InnerHtml = labs
    End Sub

    Protected Sub ddlLab_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlLab.SelectedIndexChanged
        ddlTest.DataSource = getDBTable("select testid, test from netra_test where labid=" & ddlLab.SelectedValue)
        ddlTest.DataBind()
        '    Response.Redirect("ww.goog")
    End Sub

    Private Sub btnBook_Click(sender As Object, e As EventArgs) Handles btnBook.Click
        Response.Redirect("labs.aspx?testid=" & ddlTest.SelectedValue)
    End Sub
End Class
