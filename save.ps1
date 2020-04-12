Start-Transcript -path "logs"
try {
    $STEAM_ID = Get-ChildItem -Path "C:\Program Files (x86)\Steam\userdata" -Name
    cd "C:\Program Files (x86)\Steam\userdata\$STEAM_ID\582010\remote\"
    $date = Get-Date
    git add .
    git commit -m $date
    git push -u origin master
} catch {
    echo "An error has occurred."
}
finally{
    Stop-Transcript
}