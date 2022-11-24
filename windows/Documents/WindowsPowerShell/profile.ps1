chcp 65001 > $null

$Env:PATH += ";$HOME\Apps"

Function Profile() {
    notepad $PROFILE.CurrentUserAllHosts
}

Function Touch($filepath) {
    New-Item -ItemType File $filepath
}

Function C($key, $subdir = "") {
    $mapping = [ordered]@{
        key = "$HOME\Path"
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
