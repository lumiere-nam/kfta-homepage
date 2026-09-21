$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\checkout.html", [System.Text.Encoding]::UTF8)

$pattern = '(?s)if\(itemName\.includes\("Level 1"\)\) price = "1,500,000";\s*else if\(itemName\.includes\("Level 2"\)\) price = "2,000,000";\s*else if\(itemName\.includes\("Level 3"\)\) price = "2,500,000";\s*else if\(itemName\.includes\("Trainer"\) && !itemName\.includes\("Master"\)\) price = "2,700,000";\s*else if\(itemName\.includes\("Master Trainer"\)\) price = "3,000,000";\s*else price = "1,000,000"; // default fallback'

$replacement = @"
if(itemName.includes("Level 1") || itemName.includes("레벨1")) price = "2,000,000";
            else if(itemName.includes("Level 2") || itemName.includes("레벨2")) price = "2,300,000";
            else if(itemName.includes("Level 3") || itemName.includes("레벨3")) price = "2,500,000";
            else if((itemName.includes("Trainer") || itemName.includes("트레이너")) && !itemName.includes("Master") && !itemName.includes("마스터")) price = "2,700,000";
            else if(itemName.includes("Master Trainer") || itemName.includes("마스터 트레이너")) price = "3,000,000";
            else price = "1,000,000"; // default fallback
"@

$html = [regex]::Replace($html, $pattern, $replacement)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\checkout.html", $html, [System.Text.Encoding]::UTF8)
