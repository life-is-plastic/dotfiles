chcp 65001 > $null

$Env:PATH += ";$HOME\Apps"

Set-Alias g git

Function Profile() {
    & 'C:\Program Files\Notepad++\notepad++.exe' $PROFILE.CurrentUserAllHosts
}

Function Touch($filepath) {
    New-Item -ItemType File $filepath
}

Function C($key, $subdir = '') {
    $mapping = [ordered]@{
        dev = "$HOME\Coding"
    }
    if ($null -eq $key) {
        return $mapping
    }
    $base = $mapping[$key]
    if ($null -eq $base) {
        return $mapping
    }
    Set-Location $base\$subdir
}
