for YTID in "$@"
do
    youtube-dl -f 22 http://www.youtube.com/watch?v=$YTID
done
