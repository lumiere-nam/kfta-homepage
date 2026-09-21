$files = Get-ChildItem -Path "c:\lumi\kfta\kfta-homepage" -Filter "*.html"
$styleBlock = @"
    <style>
        @font-face {
            font-family: 'AmpersandSerif';
            src: local('Baskerville'), local('Georgia'), local('Times New Roman'), serif;
            unicode-range: U+0026;
        }
        body, h1, h2, h3, h4, h5, h6, p, a, span, div {
            font-family: 'AmpersandSerif', 'Pretendard', sans-serif !important;
        }
    </style>
</head>
"@

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    # Check if we already injected it so we don't duplicate
    if (-not $content.Contains("AmpersandSerif")) {
        $content = $content.Replace("</head>", $styleBlock)
        [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
    }
}
