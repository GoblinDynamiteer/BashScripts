# Determine movie folder letter
# ^^ = to uppercase
# ,, = to lowercase

DIR=$( basename "$1" ) # get base of path
THE="${DIR:0:4}"

if [ "${THE,,}" == "the." ]; then
    FIRST="${DIR:4:1}"
else
    FIRST="${DIR:0:1}"
fi

if [ "${FIRST,,}" == "v" ] || [ "${FIRST,,}" == "w" ]; then
    FIRST="VW"
fi

echo ${FIRST^^}

