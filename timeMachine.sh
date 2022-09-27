fileId=1IaGoPuVPFsnx9_nHP-N9_1IqBc-cQZEt
fileName=september.mp4
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
