' Macro vba editar tablas y figuras
' https://www.r-bloggers.com/r-markdown-how-to-format-tables-and-figures-in-docx-files/
' Reescribir en formato vbs

' ' Tablas
' Sub FormatTables()
'  Dim tbl As Table
'  For Each tbl In ActiveDocument.Tables
'  tbl.AutoFormat wdTableFormatGrid2
'  tbl.Range.Font.Name = "Arial"
'  tbl.Range.Font.Size = 8
'  tbl.Range.ParagraphFormat.SpaceBefore = 6
'  tbl.Range.ParagraphFormat.SpaceAfter = 10
'  tbl.Range.Cells.SetHeight RowHeight:=18, HeightRule:=wdRowHeightExactly
'  Next
' End Sub

' ' Figuras
' Sub FormatFigures()
' Dim shp As InlineShape
' For Each shp In ActiveDocument.InlineShapes
'  shp.ScaleHeight = 45
'  shp.ScaleWidth = 45
' Next
' End Sub

' Ecuaciones
' https://github.com/rstudio/rmarkdown/issues/103

'
' vbscript
'

Option Explicit

Dim WordApp
Dim WordDoc

'Create a Microsoft Word Object and make it invisible.
Set WordApp = CreateObject("Word.Application")
WordApp.Visible = FALSE
Set WordDoc = WordApp.Documents.Open("c:\Users\matias.rebolledo\Documents\Biotopos\informe_2019\word\resumen_word.docx")

' Tablas
Sub FormatTables()
'set tbl = WordDoc.Table
 For Each tbl In WordDoc.Tables
 tbl.AutoFormat wdTableFormatGrid1
 tbl.Range.Font.Name = "Arial"
 tbl.Range.Font.Size = 8
 tbl.Range.ParagraphFormat.SpaceBefore = 6
 tbl.Range.ParagraphFormat.SpaceAfter = 10
'tbl.Range.Cells.SetHeight RowHeight:=18, HeightRule:=wdRowHeightExactly
 Next
End Sub

'grabar
WordDoc.Saved = TRUE
WordDoc.Close
WordApp.Quit
