OPT='credentials=/home/johan/.smbcredentials,iocharset=utf8,vers=3.0,rw,file_mode=0777,dir_mode=0777'

if [[ $1 == "u" ]] ; then
    sudo umount '/home/johan/smb/tv'
    sudo umount '/home/johan/smb/film'
    exit
fi

if grep -qs '$TV' /proc/mounts; then
    echo "TV mounted."
else
    echo "Mounting TV."
    sudo mount -t cifs //$DS_IP/TV $TV -o $OPT
fi

if grep -qs '$FILM' /proc/mounts; then
    echo "FILM mounted."
else
    echo "Mounting FILM."
    sudo mount -t cifs //$DS_IP/FILM $FILM -o $OPT
fi
