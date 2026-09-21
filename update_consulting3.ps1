$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", [System.Text.Encoding]::UTF8)

$oldHeadline = "<strong>'어떤 옷을 입어야 나를 가장 잘 보여줄까?'</strong> 고민하시나요?"
$newHeadline = "<strong>'어떤 옷을 입어야 나를 가장 잘 보여줄까?'</strong><br>고민하시나요?"

$oldItem = "핵심 아이템(신발, 이너, 액세서리, 재킷 등)"
$newItem = "핵심 아이템(옷, 가방, 신발, 액세서리 등)"

$c = $c.Replace($oldHeadline, $newHeadline)
$c = $c.Replace($oldItem, $newItem)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $c, [System.Text.Encoding]::UTF8)
