Dim Log

Log="logs\\Log--" & Replace(FormatDateTime(Date, vbGeneralDate), "/", "-") & "-" & Replace(FormatDateTime(Time, vbShortTime), ":", "-") & ".log"
CreateObject("Wscript.Shell").Run "R\App\R-Portable\bin\R.exe CMD BATCH --vanilla --slave runApp.R" & " " & Log & " ", 0, False
