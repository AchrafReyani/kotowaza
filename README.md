# kotowaza (諺)
A simple lightweight script to display a different wallpaper everytime you login. I made this because I had screenshots of every proverb (kotowaza in Japanese) from the anime Inazuma Eleven but never actually read them so this is a way to see a different one everyday without actively having to open them.

# Instructions for visual learners
[![Tutorial Video](https://img.youtube.com/vi/dLnloHvm5hU/0.jpg)](https://youtu.be/dLnloHvm5hU)

# Instructions 

## Customize the script

### Set the wallpaper folder

Open your `kotowaza.ps1` in a text editor.

Find this line:
```
$wallpaperFolder = "D:\kotowaza" #Replace with your own path/folder of wallpapers
```

Replace `"D:\kotowaza"` with the full path of your own wallpaper folder.
For example, if your images are in `C:\Users\YourName\Wallpapers`, change it to:

```
$wallpaperFolder = "C:\Users\YourName\Wallpapers"
```

### Change the Image format

By default, the script only works for `.png` files.

Find this line:
```
$files = Get-ChildItem -Path $wallpaperFolder -Filter *.png
```

Change the extension based on your wallpaper format. For example if your wallpapers are `.jpg`, change it to:
```
$files = Get-ChildItem -Path $wallpaperFolder -Filter *.jpg
```

## Run script everytime you login setup (Windows Only)

### 1. Download repo and make a folder with wallpapers

download this repo and place it somewhere easy like C:\ or D:\

Then also put a folder somehwere accessible to store all the wallpapers you want to display.

### 2. Open Task Scheduler
- Press `Win + R`, type `taskschd.msc`, and press Enter
- In the right panel, click "Create Basic Task"

### 3. Setup the Task
- Name: whatever you like
- Click Next

### 4. Choose When the Script Runs
- Select When I log on.
- Click Next

### 5. Choose what the Task Does
- Select "Start a Program"
- Click Next

### 6. Select the Program to Run
- Click Browse...
- Navigate to your `kotowaza.vbs` file and select it.
- Click Next

### 7. Finish
- Select Finish

# Note

If you want to remove the task you can simply go back to the Task scheduler, select the task scheduler library on the left and then find the name you assigned to the task, right click it and hit delete.

## Thanks for reading all the way. If you get stuck with anything feel free to message me for help on discord @epiram