Imports System.Data
Partial Class ont
    Inherits System.Web.UI.Page
    Public gr As String
    Public sb As String
    Public str As String
    Public path As String = HttpContext.Current.Server.MapPath("resources\ont\")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub popsub(ByVal gr As String)

        Dim doc As New System.Xml.XmlDocument()
        doc.Load(path & "oncur.xml")
        'add subjects data

        subdd.Items.Add("select")
        Dim sbList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/grade/subjects[@id='" & gr & "']")

        For Each subjects As System.Xml.XmlNode In sbList

            subdd.Items.Add(subjects.InnerText)
        Next
        ViewState("grade") = gr
    End Sub

    Private Sub popstrand(ByVal sb As String)
        If sb = "select" Then
            Exit Sub
        End If
        Dim doc As New System.Xml.XmlDocument()
        stranddd.Items.Clear()
        gr = gradedd.SelectedItem.ToString
        sb = subdd.SelectedItem.ToString
        doc.Load(path & "grade_" & gr & "_" & sb & ".XML")

        'add strand nodes as data

        Dim stList As System.Xml.XmlNodeList = doc.SelectNodes("//strand_text")
        stranddd.Items.Add("select")
        For Each strand As System.Xml.XmlNode In stList

            stranddd.Items.Add(strand.InnerText)

        Next

    End Sub

    Protected Sub popout(ByVal str As String)

        Dim doc As New System.Xml.XmlDocument()
        gr = ViewState("grade")
        sb = ViewState("subject")
        doc.Load(path & "grade_" & gr & "_" & sb & ".xml")
        'outlabel.Text = "Grade " & gr & " " & sb & " Outcomes"
        ' data table
        Dim dt As New DataTable()
        dt.Columns.Add("ID", GetType(String))
        dt.Columns.Add("Overalls", GetType(String))

        'add sibling nodes as data
        Dim idList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/strand[@id='" & str & "']/overalls/overall/overall_text")


        For Each identifier As System.Xml.XmlNode In idList
            Dim dtrow As DataRow = dt.NewRow()
            dtrow("ID") = identifier.ParentNode.Attributes.ItemOf("id").Value
            dtrow("Overalls") = identifier.InnerText
            dt.Rows.Add(dtrow)
        Next
        Dim dtlrow As DataRow = dt.NewRow()
        dtlrow("ID") = "citation"
        dtlrow("Overalls") = "Adapted from Ontario Ministry of Education @ www.edu.gov.on.ca/eng/teachers/curriculum.html"
        dt.Rows.Add(dtlrow)
        outGV.DataSource = dt
        outGV.DataBind()
    End Sub

    Protected Sub gradedd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gradedd.SelectedIndexChanged
        stranddd.Items.Clear()
        subdd.Items.Clear()
        gr = gradedd.SelectedItem.ToString()
        If gr = "select" Then
            Exit Sub
        End If
        popsub(gr)
    End Sub

    Protected Sub subdd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles subdd.SelectedIndexChanged
        stranddd.Items.Clear()
        sb = subdd.SelectedItem.ToString
        gr = gradedd.SelectedItem.ToString
        ViewState("grade") = gr
        ViewState("subject") = sb
        popstrand(sb)
    End Sub

    Protected Sub stranddd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles stranddd.SelectedIndexChanged
        str = stranddd.SelectedItem.ToString
        If str = "select" Then
            Exit Sub
        End If
        ViewState("strand") = str
        popout(str)
    End Sub


End Class
