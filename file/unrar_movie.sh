DIR=$1
BASE=$( basename "$1" )
FULL_PATH=$(pwd)/$DIR
echo $FULL_PATH

if ! [ -d "$DIR" ]; then
    echo "$DIR is not an existing folder!"
    exit
fi

for file in $DIR/*
do
    # Find .rar file
    filename="${file##*/}"
    extension="${filename##*.}"
    if [ "$extension" == "rar" ]; then
	RAR_FILE=$FULL_PATH/$filename
	break
    fi
done

# Determine letter
LET=$( ~/scripts/bash/tools/get_movie_letter.sh "$DIR" )

if ! [ -d "$FILM/$LET/$BASE" ]; then
    mkdir $FILM/$LET/$BASE
    exit
fi

printf "Extract to: [ \e[32mFILM/$LET/$BASE\e[0m ] ? "
read -p "[Yy] : " -n 1 -r
echo #new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
    unrar e $RAR_FILE $FILM/$LET/$BASE
else
    echo "Canceling"
    exit
fi

