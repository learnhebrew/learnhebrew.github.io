@echo off
if not exist normalized mkdir normalized

for %%f in (*.mp3) do (
    echo Processing %%f...
    ffmpeg -i "%%f" -af loudnorm=I=-16:TP=-1.5:LRA=11 "normalized\%%f"
)

echo Done. Check the "normalized" folder.
pause
