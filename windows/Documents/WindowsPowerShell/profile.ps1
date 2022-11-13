chcp 65001 > $null

$Env:PATH += ";$HOME\bin"

Function Profile() {
    notepad $PROFILE.CurrentUserAllHosts
}

Function Reload() {
    . $PROFILE.CurrentUserAllHosts
}

Function Touch($filepath) {
    New-Item -ItemType File $filepath
}
