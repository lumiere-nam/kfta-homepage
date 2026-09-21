$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", [System.Text.Encoding]::UTF8)

# The Project Overview image currently looks like this:
# <img src="assets/class_mom_profile.png" class="rounded-3xl shadow-2xl object-cover h-[500px] w-full">
# Wait, I need to make sure I only replace the project overview image, not the background image if they are the same.
# The background image is: bg-[url('assets/class_mom_profile.png')]
# So replacing 'src="assets/class_mom_profile.png"' will only affect the img tag.

$c = $c.Replace('src="assets/class_mom_profile.png"', 'src="assets/mom_profile_woman.png"')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", $c, [System.Text.Encoding]::UTF8)
