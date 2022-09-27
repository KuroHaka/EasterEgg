
fileId=1rntwFXaNx5mQcFmZGSn51SKsI2ZHwqMN
fileName=september.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb "https://doc-14-9c-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/5pbvf47abe7r6oj2l9ok0i29blecrkdj/1664302725000/00413257880062226245/*/1rntwFXaNx5mQcFmZGSn51SKsI2ZHwqMN?e=download&amp;uuid=66880ba9-057c-4210-8d17-9eb34c2980af" -o ${fileName}

fileId=146GSgkvTHjpIZ312qkrLK582eCt9H0ey
fileName=august.mp4
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
