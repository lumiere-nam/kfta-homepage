$Assembly = [Reflection.Assembly]::LoadWithPartialName('System.Drawing')
$img = [System.Drawing.Image]::FromFile('assets/kfta-location-map-trans.png')
Write-Host "Width: $($img.Width), Height: $($img.Height)"
$img.Dispose()
