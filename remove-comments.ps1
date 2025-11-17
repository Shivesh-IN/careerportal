param([string]$filePath)
$content = Get-Content $filePath -Raw
$content = $content -replace '^\s*//.*?$', '' -replace '/\*[\s\S]*?\*/', '' -replace '(?<!:)//.*?(?=\n|$)', ''
$content = $content -replace '\n\s*\n\s*\n', "`n`n"
Set-Content $filePath $content -NoNewline
