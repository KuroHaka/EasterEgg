fileId=146GSgkvTHjpIZ312qkrLK582eCt9H0ey
fileName=august.mp4
fileId2=1LU-WmfDzau4d99ahoW7rvWP8HuAMrpFK
fileName2=september.mp4
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId2}" > /dev/null
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId2}" -o ${fileName2}
