$Assembly = [Reflection.Assembly]::LoadWithPartialName('System.Drawing')
$path = 'c:\lumi\kfta\kfta-homepage\assets\kfta-location-map-trans.png'
$img = [System.Drawing.Image]::FromFile($path)
$newHeight = $img.Height - 350
$bmp = New-Object System.Drawing.Bitmap($img.Width, $newHeight)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.Color]::Transparent)
$rect = New-Object System.Drawing.Rectangle(0, 0, $img.Width, $newHeight)
$g.DrawImage($img, $rect, $rect, [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose()
$img.Dispose()
$bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
