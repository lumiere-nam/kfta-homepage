$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# The original text I used to create the DIY card:
$oldDiv = '<div class="w-full h-48 bg-[#D1C9BB] flex items-center justify-center text-[#3B4B38] font-serif text-2xl font-bold">Cosmetics DIY</div>'
$newImg = '<img src="assets/class_oneday_diy.jpg" class="w-full h-48 object-cover" alt="화장품 DIY">'

$a = $a.Replace($oldDiv, $newImg)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)
