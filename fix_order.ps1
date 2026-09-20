$content = [System.IO.File]::ReadAllText('index.html', [System.Text.Encoding]::UTF8)
$regex = [regex]::new('(?s)    <!-- Diagnosis Section -->.*?    <!-- Philosophy -->')
$match = $regex.Match($content)
$diagnosis = $match.Value -replace '(?s)    <!-- Philosophy -->', ''

$content = $content -replace '(?s)    <!-- Diagnosis Section -->.*?    <!-- Philosophy -->', '    <!-- Philosophy -->'

$content = $content -replace '(?s)    <!-- History Timetable -->', ($diagnosis + '    <!-- History Timetable -->')

[System.IO.File]::WriteAllText('index.html', $content, [System.Text.Encoding]::UTF8)
