chcp 65001 > $null

$Env:PATH += ";$HOME\bin"

Set-Alias p python

Function Profile() {
    notepad $PROFILE.CurrentUserAllHosts
}

Function Reload() {
    . $PROFILE.CurrentUserAllHosts
}

Function Touch($filepath) {
    New-Item -ItemType File $filepath
}

Function Gym($weight) {
    $weight = ($weight - 45) / 2
    if ($weight -le 0) { return }
    $out = @()
    foreach ($p in 45,25,10,5,2.5) {
        $rem = [Math]::Truncate($weight / $p)
        if ($rem -le 0) { continue }
        foreach ($i in 1..$rem) { $out += $p }
        $weight = $weight % $p
    }
    if ($weight -lt 0) { $out += $weight }
    return "$out"
}

Function Buy($buyingPower, $commission, $ppu) {
    $table = @(
        @{ A = "Buying Power"; B = '{0:N2}' -f $buyingPower },
        @{ A = "Commission"; B = '{0:N2}' -f $commission },
        @{ A = "PPU"; B = '{0:N2}' -f $ppu },
        @{ A = "Units"; B = [math]::floor(($buyingPower - $commission) / $ppu) }
    )
    $table | ForEach {[PSCustomObject]$_} | Format-Table -AutoSize -HideTableHeaders A,@{ e = {$_.B}; align = 'right' }
}
