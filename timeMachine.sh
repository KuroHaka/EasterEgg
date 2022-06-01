code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  

fileId1=13R_OBUxVLU0Xt7PGe0A938zj5ki5tLMk
fileName1=blackBox.rar
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId1}" > /dev/null
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId1}" -o ${fileName1}
