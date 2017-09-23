#while-loop

i=1 # i = 1 is invalid, dont use spaces
while [ $i -le 3 ] # -le less than or equal to
do
    echo $i
    #((i++)) # double parentheses
    i=$(($i+1))
done

echo "While loop done!"

#until loop
j=1
until [ $j -gt 3 ]
do
    echo $j
    #((j++))
    j=$(($j+1))
done

echo "Until loop done!"

#for loop
n='1 2 3'
for no in $n
do
    echo $no
done

echo "For loop done"
