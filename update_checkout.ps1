$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\checkout.html", [System.Text.Encoding]::UTF8)

$html = $html.Replace('if(itemName.includes("Level 1")) price = "870,000";', 'if(itemName.includes("Level 1")) price = "1,500,000";')
$html = $html.Replace('else if(itemName.includes("Level 2")) price = "1,200,000";', 'else if(itemName.includes("Level 2")) price = "2,000,000";')
$html = $html.Replace('else if(itemName.includes("Level 3")) price = "1,500,000";', 'else if(itemName.includes("Level 3")) price = "2,500,000";')
$html = $html.Replace('else if(itemName.includes("Trainer") && !itemName.includes("Master")) price = "1,850,000";', 'else if(itemName.includes("Trainer") && !itemName.includes("Master")) price = "2,700,000";')
$html = $html.Replace('else if(itemName.includes("Master Trainer")) price = "2,000,000";', 'else if(itemName.includes("Master Trainer")) price = "3,000,000";')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\checkout.html", $html, [System.Text.Encoding]::UTF8)
