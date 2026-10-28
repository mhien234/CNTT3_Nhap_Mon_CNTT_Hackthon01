#Tac gia: Tran Minh Hien
#Ngay tao: 28/10/2026

Write-Host "Dang loc log..."

"===BAO CAO LOI===" > .\logs.\auto_report.txt

Get-Content .\logs.\furniture.log | Select-String "ERROR" >> .\logs.\auto_report.txt

Write-Host "HOAN THANH"