# Monster Hunter Save Sync

Automatically syncs up your save file on a daily basis at 12pm.

## Install

1). Initialize git repo in steam folder `C:\Program Files (x86)\Steam\userdata\<YOUR USERID>\582010\remote\`

2). Add git remote `git remote add origin <YOUR SAVED GAME REPO>` to `C:\Program Files (x86)\Steam\userdata\<YOUR USERID>\582010\remote\`

3). Change your script's path to your own path in `add_scheduler.ps1` file.

```
$scriptPath = '"C:\\Users\Brian Ho\\Downloads\\mh_save\\save.ps1"'
```

4). Set up scheduler `.\add_scheduler.ps1` (Make sure you have admin priviledges)
