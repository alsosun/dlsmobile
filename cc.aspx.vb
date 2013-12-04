Imports System.Data

Partial Class cc
    Inherits System.Web.UI.Page
    Public gr As String
    Public sb As String
    Public ar As String
    Public str As String
    'Public path As String = HttpContext.Current.Server.MapPath("\test\bin\resources\ont\")
    Public path As String = HttpContext.Current.Server.MapPath("resources\core\")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub hspop(ByVal gr As String)
        stranddd.Items.Clear()
        Dim doc As New System.Xml.XmlDocument()
        doc.Load(path & areadd.SelectedItem.ToString & "\corecur.XML")
        'add subjects data

        Dim sbList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/grade/subjects[@id='" & gr & "']")
        stranddd.Items.Add("select")
        For Each subjects As System.Xml.XmlNode In sbList

            stranddd.Items.Add(subjects.InnerText)

        Next

        ar = areadd.SelectedItem.ToString
        ViewState("area") = ar
        ViewState("grade") = gr
    End Sub

    Protected Sub popstrand()
        stranddd.Items.Clear()
        Dim doc As New System.Xml.XmlDocument()
        ar = ViewState("area")
        doc.Load(path & ar & "\corecur.XML")
        'add subjects data
        gr = ViewState("grade")
        Dim sbList As System.Xml.XmlNodeList = doc.SelectNodes("/curriculum/grade/subjects[@id='" & gr & "']")

        For Each subjects As System.Xml.XmlNode In sbList

            stranddd.Items.Add(subjects.InnerText)

        Next
        gradedd.Enabled = False
        ar = areadd.SelectedItem.ToString
        'ViewState("area") = ar
        ViewState("grade") = gr
    End Sub

    Protected Sub areadd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles areadd.SelectedIndexChanged
        stranddd.Items.Clear()
        gradedd.Items.Clear()

        Dim mchk As String = areadd.SelectedItem.ToString
        If mchk = "select" Then
            Exit Sub
        End If
        If mchk.Contains("HS") Then
            gradedd.Visible = False
            gr = "HS"
            hspop(gr)
            Exit Sub
        End If
        gradedd.Visible = True
        ar = areadd.SelectedItem.ToString
        popgrade(ar)

    End Sub

    Protected Sub gradedd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gradedd.SelectedIndexChanged
        stranddd.Items.Clear()
        gr = gradedd.SelectedItem.ToString()
        If gr = "select" Then
            Exit Sub
        End If
        hspop(gr)
    End Sub

    Protected Sub stranddd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles stranddd.SelectedIndexChanged

        sb = stranddd.SelectedItem.ToString
        If sb = "select" Then
            Exit Sub
        End If
        gr = ViewState("grade")
        ar = ViewState("area")
        Dim dt As New DataTable()
        dt.Columns.Add("ID", GetType(String))
        dt.Columns.Add("Standard", GetType(String))

        Dim doc As New System.Xml.XmlDocument()

        doc.Load(path & "\" & ar & "\" & sb & "\" & gr & ".XML")
        Dim idList As System.Xml.XmlNodeList = doc.SelectNodes("/LearningStandards/LearningStandardItem/StatementCodes/StatementCode")

        For Each overall As System.Xml.XmlNode In idList

            Dim dtrow As DataRow = dt.NewRow()
            dtrow("ID") = overall.InnerText
            dtrow("Standard") = overall.ParentNode.NextSibling.FirstChild.InnerText
            dt.Rows.Add(dtrow)
        Next
        Dim dtlrow As DataRow = dt.NewRow()
        dtlrow("ID") = "citation"
        dtlrow("Standard") = "Adapted from Common Core State Standards XML files @ www.corestandards.org"
        dt.Rows.Add(dtlrow)
        outGV.DataSource = dt
        outGV.DataBind()

    End Sub

    Protected Sub popgrade(ByVal ar As String)
        gradedd.Items.Add("select")
        gradedd.Items.Add("K")

        If ar = "Language Arts" Then
            Dim i As Integer = 1
            Do Until i = 13
                gradedd.Items.Add(i)
                i = i + 1
            Loop
        Else
            Dim i As Integer = 1
            Do Until i = 9
                gradedd.Items.Add(i)
                i = i + 1
            Loop
        End If


        ViewState("area") = ar
    End Sub
End Class