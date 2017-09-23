# $? is the exit status of the last command
# executed, in this case ping

HOST="google.com"
ping -c 1 $HOST

if [ "$?" -eq "0" ] # if..fi block start
then
    echo "$HOST reachable"
else
    echo "$HOST unreachable"
fi # if..fi block end
