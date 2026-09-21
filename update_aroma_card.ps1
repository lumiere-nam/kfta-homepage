$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

$oldDiv = '<div class="w-full h-48 bg-[#E8E3D9] flex items-center justify-center text-[#3B4B38] font-serif text-2xl font-bold">Aromatherapy</div>'
$newImg = '<img src="assets/class_aroma_new.png" class="w-full h-48 object-cover" alt="감정 아로마테라피">'

$a = $a.Replace($oldDiv, $newImg)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)
