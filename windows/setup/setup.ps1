if (-not (Test-Path -Path $HOME\.ssh)) {
    New-Item -Type Directory $HOME\.ssh
}

if (-not (Test-Path -Path $HOME\.ssh\id_ed25519)) {
    ssh-keygen -t ed25519 -f $HOME\.ssh\id_ed25519 -C '""'
}
