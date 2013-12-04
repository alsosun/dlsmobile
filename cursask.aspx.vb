Public Class cursask
    Inherits System.Web.UI.Page

    Public path As String = HttpContext.Current.Server.MapPath("resources\sask\")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub gradedd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gradedd.SelectedIndexChanged
        subdd.Items.Clear()
        Dim gr As String
        gr = gradedd.SelectedItem.ToString
        If gr = "select" Then
            Exit Sub
        End If
        popsub(gr)
    End Sub
    Protected Sub popsub(ByVal gr As String)

        Dim doc As New System.Xml.XmlDocument()
        doc.Load(path & "saskcur.dls")
        'add subjects data

        subdd.Items.Add("select")
        Dim sbList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/grade/subjects[@id='" & gr & "']")

        For Each subjects As System.Xml.XmlNode In sbList
            subdd.Items.Add(subjects.InnerText)

        Next
        ViewState("grade") = gr
    End Sub

    Protected Sub subdd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles subdd.SelectedIndexChanged
        Dim sb As String
        sb = subdd.SelectedItem.ToString
        If sb = "select" Then
            Exit Sub
        End If
        popout(sb)
    End Sub

    Protected Sub popout(ByVal sb As String)

        Dim doc As New System.Xml.XmlDocument()
        Dim gr As String
        gr = ViewState("grade")
        doc.Load(path & sb & "_education_" & gr & ".dls")
        'outlabel.Text = "Grade " & gr & " " & sb & " Outcomes"
        ' data table
        Dim dt As New DataTable()
        dt.Columns.Add("ID", GetType(String))
        dt.Columns.Add("Outcome", GetType(String))

        'add sibling nodes as data
        Dim idList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/outcomes/goal_section/outcome/identifier")

        'Dim i As Integer = 0
        For Each identifier As System.Xml.XmlNode In idList
            Dim dtrow As DataRow = dt.NewRow()
            dtrow("ID") = identifier.InnerText
            dtrow("Outcome") = identifier.NextSibling.InnerText
            dt.Rows.Add(dtrow)
        Next

        Dim dtlrow As DataRow = dt.NewRow()
        dtlrow("ID") = "citation"
        dtlrow("Outcome") = "Adapted from Saskatchewan Ministry of Education @ www.curriculum.gov.sk.ca/"
        dt.Rows.Add(dtlrow)

        outGV.DataSource = dt
        outGV.DataBind()
    End Sub
End Class