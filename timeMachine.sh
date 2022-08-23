code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  

fileId1=1yfNnYnGuh2J3qLlD92Rzh7E6TYR1t-vp
fileName1=24/08/2022.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId1}" > /dev/null
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId1}" -o ${fileName1}
