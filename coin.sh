#!/bin/bash -x
#echo "This is master"

isRandom=1;
val=$(( RANDOM%2 ))

if [[ $val -eq $isRandom ]]
then
	echo "Heads"
else
	echo "Tails"
fi

declare -A face_value
read -p " enter how many times you want to flip a coin : " flipCoin
isFlip=0;
FACE_ONE=1;
FACE_TWO=2;
h=0;t=0;

while [[ $isFlip -lt $flipCoin ]]
do
        flip=$(( RANDOM%2 + 1 ))
        case $flip in
                $FACE_ONE)face="heads"
                                 h=$(($h+1)) ;;
               $FACE_TWO)face="tails"
                                t=$(($t+1)) ;;
                      *)face="error" ;;
         esac
         face_value[$isFlip]=$face
         #echo $face
         isFlip=$(( $isFlip + 1))
done

echo "singlet values : - " "${face_value[@]}"

val1=$(($(( $h * 100 )) / (( $flipCoin ))))

val2=$(($(( $t * 100 )) / (( $flipCoin ))))

