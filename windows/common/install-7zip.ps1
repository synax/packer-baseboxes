$ProgressPreference="SilentlyContinue"

for ([byte]$c = [char]'A'; $c -le [char]'Z'; $c++)  
{  
	$variablePath = [char]$c + ':\variables.ps1'

	if (test-path $variablePath) {
		. $variablePath
		break
	}
}

choco install 7zip -y