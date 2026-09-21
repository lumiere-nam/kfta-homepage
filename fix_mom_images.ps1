$momHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", [System.Text.Encoding]::UTF8)

# Fix Hero background
$momHtml = $momHtml.Replace('bg-[url(''https://images.unsplash.com/photo-1490481651871-ab68de25d43d?ixlib=rb-4.0.3&auto=format&fit=crop&w=2000&q=80'')]' , 'bg-[url(''assets/class_mom_profile.png'')]')

# Fix Project Overview image
$momHtml = $momHtml.Replace('src="https://images.unsplash.com/photo-1512413914595-6435fb080829?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"', 'src="assets/class_mom_profile.png"')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", $momHtml, [System.Text.Encoding]::UTF8)
