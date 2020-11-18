Echo on
cls
c:
cd\Users\hjr\AppData\Local\WebGrab+Plus
copy "WebGrab++.config.GUIDE.xml" "WebGrab++.config.xml" /y
cd\Program Files (x86)\WebGrab+Plus\bin
WebGrab+Plus.exe
pause
Rem #########################
xcopy c:\Users\hjr\AppData\Local\WebGrab+Plus\guide.xml f:\0hjr\RepoAttoPixel /y
f:
cd\0hjr\RepoAttoPixel
findstr /v "<credits>" guide.xml > guide01.xml
findstr /v "</credits>" guide01.xml > guide02.xml
fart guide02.xml "</desc>" " "
findstr /v "<director" guide02.xml > guide03.xml
fart guide03.xml "<date>" "  Ano:  "
fart guide03.xml "</date>" "</desc>"
findstr /v "<rating" guide03.xml > guide04.xml
findstr /v "</rating" guide04.xml > guide05.xml
findstr /v "<value" guide05.xml > guide06.xml
fart guide06.xml "<actor>" "Ator: "
fart guide06.xml "</actor>" " "
findstr /v "<category" guide06.xml > guide07.xml
findstr /v "<country" guide07.xml > guide08.xml
findstr /v "</sub" guide08.xml > guide09.xml
fart guide09.xml "episode-num system=" "sub-title lang="
fart guide09.xml "onscreen" "pt"
fart guide09.xml "episode-num" "sub-title"
copy guide09.xml guide.xml /y
del guide0*.xml /f
Rem #########################
c:\7z1900\x64\7za a f:\0hjr\RepoAttoPixel\guide.xml.gz f:\0hjr\RepoAttoPixel\guide.xml
xcopy guide.xml.gz \\192.168.0.2\root\etc\epgimport /y
f:
cd\
pause
Rem #########################
Echo on
f:
cd\0hjr\RepoAttoPixel
git init
git add .
git commit -m "versao 1.0"
git push origin master
pause 
