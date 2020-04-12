Start-Transcript -path "logs"
try {
    cd "C:\Program Files (x86)\Steam\userdata\99757097\582010\remote\"
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