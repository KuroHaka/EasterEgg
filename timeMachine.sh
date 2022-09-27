
fileId=1m7FOYjAtyfuOsB1H1_44FM7cWt8sbJ5g
fileName=september.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

fileId=146GSgkvTHjpIZ312qkrLK582eCt9H0ey
fileName=august.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
