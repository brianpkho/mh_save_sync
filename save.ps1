Start-Transcript -path "logs"
try {
    $STEAM_ID = Get-ChildItem -Path "C:\Program Files (x86)\Steam\userdata" -Name
    $SAVE_REPO_PATH = "C:\Users\Brian Ho\Documents\Github\mh_save"
    cp "C:\Program Files (x86)\Steam\userdata\$STEAM_ID\582010\remote\SAVEDATA1000" "$SAVE_REPO_PATH\SAVEDATA1000"
    cp "C:\Program Files (x86)\Steam\userdata\$STEAM_ID\582010\remote\PhotoData00.dat" "$SAVE_REPO_PATH\PhotoData00.dat"
    cd "C:\Users\Brian Ho\Documents\Github\mh_save\"
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