if (Get-Command git 2>$null) {Write-Host "[+] git installed"} else {Write-Host "[-] git not installed...exiting";Exit}
if (Get-Command docker 2>$null) {Write-Host "[+] docker installed"} else {Write-Host "[-] docker not installed...exiting";Exit}
if (Get-Command docker-compose 2>$null) {Write-Host "[+] docker-compose installed"} else {Write-Host "[-] docker-compose not installed...exiting";Exit}

wget https://s3.amazonaws.com/botsdataset/botsv1/splunk-pre-indexed/botsv1_data_set.tgz -Outfile apps/botsv1_data_set.tgz
cd apps

(ls *.tgz).Name | %{docker run --rm -v $pwd.Path:/dir alpine:latest tar -xvf dir/scripts.tgz -C dir}

git clone https://github.com/splunk/SA-ctf_scoreboard
git clone https://github.com/splunk/SA-ctf_scoreboard_admin

cd ..
