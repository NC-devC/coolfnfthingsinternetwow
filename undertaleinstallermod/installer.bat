@ECHO OFF
chcp 65001

IF NOT EXIST archive.zip (
    curl -L "https://www.dropbox.com/scl/fi/do3qboau5kll28yfixtj5/undertalegogpir.zip?dl=0&rlkey=59djo56a67wjal8s2z7a2anix" > archive.zip
)

if not exist UNDERTALE mkdir UNDERTALE & powershell Expand-Archive -Path archive.zip -DestinationPath UNDERTALE

start UNDERTALE/UNDERTALE.exe
