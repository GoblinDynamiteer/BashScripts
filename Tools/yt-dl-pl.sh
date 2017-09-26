for YTID in "$@"
do
    youtube-dl -f 22 --yes-playlist https://www.youtube.com/playlist?list=$YTID
done
