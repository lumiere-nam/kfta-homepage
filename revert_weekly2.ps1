$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Find each block and replace the img src manually.
# Since there is only one "Weekly Talks" section, we can just replace the 8 images in sequence from the first match.
# Or better, we can just match the titles.

$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[1화\] 책)', '${1}assets/class_weekly_reading2.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[2화\] 애착_스카프)', '${1}assets/class_weekly_scarf2.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[3화\] 애착_벨트)', '${1}assets/class_weekly_belt.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[4화\] 애착_가방)', '${1}assets/class_weekly_bag2.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[5화\] 애착_안경)', '${1}assets/class_weekly_shoes.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[6화\] 애착_신발)', '${1}assets/class_weekly_framework.png$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[7화\] 애착_주얼리)', '${1}https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?q=80&w=600&auto=format&fit=crop$2')
$html = [regex]::Replace($html, '(?s)(<img src=")[^"]+(" class="w-full h-full object-cover" alt="[^"]*"></div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[8화\] 애착_시그니처)', '${1}assets/class_weekly_framework.png$2')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
