Get-Content "$PSScriptRoot\.env" | foreach {
    $name, $value = $_.split('=')
    if ([string]::IsNullOrWhiteSpace($name) || $name.Contains('#')) {
        continue
    }
    Set-Content env:\$name $value
}

$filebot = "C:\Program Files\FileBot\filebot.exe"

& "$filebot" -script fn:amc --output "$env:PLEX_MEDIA_DIR" --action copy --conflict skip `
    --log-file amc.log -non-strict `
    --def excludeList="C:\Users\prplecake\amc.excludes" unsorted=y music=y artwork=y "$args"
