fileName=december.mp4
curl "https://firebasestorage.googleapis.com/v0/b/recyclapp-adbde.appspot.com/o/december.mp4?alt=media&token=e65bf6e4-eeea-46c8-b1cd-f9398bc0bf4a" -o ${fileName}
fileName=november.mp4
curl "https://firebasestorage.googleapis.com/v0/b/recyclapp-adbde.appspot.com/o/november.mp4?alt=media&token=5bbddc53-f623-4106-a466-af29facfc204" -o ${fileName}
fileName=september.mp4
curl "https://firebasestorage.googleapis.com/v0/b/recyclapp-adbde.appspot.com/o/september.mp4?alt=media&token=17b49181-8222-4b03-a9d3-7a5af3c2036b" -o ${fileName}
fileName=october.mp4
curl "https://firebasestorage.googleapis.com/v0/b/recyclapp-adbde.appspot.com/o/october.mp4?alt=media&token=cdd98cbf-8d69-4c43-9805-dd76b6107d74" -o ${fileName}
fileId=146GSgkvTHjpIZ312qkrLK582eCt9H0ey
fileName=august.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
