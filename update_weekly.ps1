$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Remove the 50,000원 lines (negative lookbehind for '1' to avoid replacing 150,000원)
$html = [regex]::Replace($html, '\s*<span>[^<]*?(?<!1)50,000원</span>', '')

# Replace images for Weekly Talks sequentially
# 1. Reading time (Books)
$html = $html.Replace('src="assets/class_weekly_reading2.png"', 'src="https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"')
# 2. Scarf
$html = $html.Replace('src="assets/class_weekly_scarf2.png"', 'src="https://images.unsplash.com/photo-1584916201218-f4242ceb4809?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"')
# 3. Belt
$html = $html.Replace('src="assets/class_weekly_belt.png"', 'src="https://images.unsplash.com/photo-1623998021451-37f0ab43588f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"')
# 4. Bag
$html = $html.Replace('src="assets/class_weekly_bag2.png"', 'src="https://images.unsplash.com/photo-1590874103328-eac38a683ce7?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"')
# 5. Glasses
# Let's find out what the 5th image was. If it's not known, we can do a regex replace for all remaining `class_weekly_*` images.
$html = [regex]::Replace($html, 'src="assets/class_weekly_[^"]+"', 'src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
