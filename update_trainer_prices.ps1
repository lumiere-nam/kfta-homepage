$trainer = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_trainer.html", [System.Text.Encoding]::UTF8)
$trainer = [regex]::Replace($trainer, '(<div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">교육비</div><div class="w-2/3 p-4 bg-white flex items-center text-kftaRed font-bold">).*?( <span class="text-xs text-gray-500 font-normal ml-2">\(발급비 별도\))', '${1}2,700,000원${2}')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_trainer.html", $trainer, [System.Text.Encoding]::UTF8)

$master = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_master.html", [System.Text.Encoding]::UTF8)
$master = [regex]::Replace($master, '(<div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">교육비</div><div class="w-2/3 p-4 bg-white flex items-center text-kftaRed font-bold">).*?( <span class="text-xs text-gray-500 font-normal ml-2">\(발급비 별도\))', '${1}3,000,000원${2}')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_master.html", $master, [System.Text.Encoding]::UTF8)
