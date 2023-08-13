' Tablas
Sub FormatTables()
 Dim tbl As Table
 For Each tbl In ActiveDocument.Tables
 tbl.AutoFormat wdTableFormatGrid1
 tbl.Range.Font.Name = "Arial"
 tbl.Range.Font.Size = 8
 tbl.Range.ParagraphFormat.SpaceBefore = 6
 tbl.Range.ParagraphFormat.SpaceAfter = 10
 tbl.Range.Cells.SetHeight RowHeight:=18, HeightRule:=wdRowHeightExactly
 Next
End Sub

Sub EquationItalics()
 Dim equation As OMath
 For Each equation In ActiveDocument.OMaths
'equation.Range.Font.Italic = False
 equation.Range.Font.Name = "Cambria Math"
 Next equation
End Sub
