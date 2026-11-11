# Script: tong_hop.ps1
# Tac gia: Dang Dinh Hieu
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > tong_hong.txt
gc logs/studio.log | select-string "status=404" >> tong_hop.txt
gc logs/studio.log | select-string "status=500" | Measure-Object >> tong_hop.txt
Write-host "Hoan thanh!"