
cd c:\github\

git clone --mirror https://github.com/LeonMskRu/arti_windows.git

REM java -jar bfg.jar --strip-blobs-bigger-than 100M some-big-repo.git

"C:\Program Files\Java\jdk-21\bin\java.exe" -jar bfg-1.14.0.jar --strip-blobs-bigger-than 10M arti_windows.git

cd arti_windows.git

git reflog expire --expire=now --all
git gc --prune=now --aggressive

git push -v
