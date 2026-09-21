$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Remove the 50,000원 lines (negative lookbehind for '1' to avoid replacing 150,000원)
$html = [regex]::Replace($html, '(?s)<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">\s*<span>비용: 50,000원</span>', '<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">')

# Also if it's '가격: 50,000원'
$html = [regex]::Replace($html, '(?s)<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">\s*<span>가격: 50,000원</span>', '<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">')

# Replace images for Weekly Talks based on episode number
$map = @{
    '[1화]' = 'https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[2화]' = 'https://images.unsplash.com/photo-1584916201218-f4242ceb4809?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[3화]' = 'https://images.unsplash.com/photo-1623998021451-37f0ab43588f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[4화]' = 'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[5화]' = 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[6화]' = 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[7화]' = 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
    '[8화]' = 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80'
}

foreach ($key in $map.Keys) {
    # Find <img src="..."> before $key
    $pattern = '(?s)<img src="[^"]+" class="w-full h-full object-cover"[^>]*>(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[' + $key.Substring(1, 2) + '\])'
    $replacement = '<img src="' + $map[$key] + '" class="w-full h-full object-cover" alt="Weekly Talk Image">'
    $html = [regex]::Replace($html, $pattern, $replacement)
}

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
