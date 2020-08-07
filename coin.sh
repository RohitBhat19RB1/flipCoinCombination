#!/bin/bash -x
#echo "This is master"

declare -A face_value
read -p " enter how many times you want to flip a coin (singlet) : " flipCoin
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
echo "The heads percent = $val1 %"
echo "The tails percent = $val2 %"

declare -A face_value1
read -p " enter how many times you want to flip a coin (doublet) : " flipCoin
isFlip=0;
FACE_ONE=1;
FACE_TWO=2;
h=0;t=0;

while [[ isFlip -lt flipCoin ]]
do
        flip=$(( RANDOM%2 + 1 ))
        case $flip in
                $FACE_ONE)face="heads"
                        h=$(($h+1)) ;;
               $FACE_TWO)face="tails"
                        t=$(($t+1))   ;;
              *)face="error" ;;
        esac

        slip=$(( RANDOM%2 + 1 ))
        case $slip in
                $FACE_ONE)face1="heads"
                        h=$(($h+1)) ;;
               $FACE_TWO)face1="tails"
                        t=$(($t+1))    ;;
              *)face1="error" ;;
        esac

        face_value1[$isFlip]=$face$face1
        #echo $face
        isFlip=$(( $isFlip + 1 ))
        done

echo "${face_value1[@]}"
val1=$(($(( $h * 100 )) / (( $flipCoin * 2 ))))
val2=$(($(( $t * 100 )) / (( $flipCoin * 2 ))))
echo "the heads percentage = $val1 %"
echo "the tails percentage = $val2 %"

declare -A face_value3
read -p " enter how many times you want to flip a coin (triplet) : " flipCoin
isFlip=0;
FACE_ONE=1;
FACE_TWO=2;
h=0;t=0;

while [[ isFlip -lt flipCoin ]]
do
        flip=$(( RANDOM%2 + 1 ))
        case $flip in
                $FACE_ONE)face="heads"
                        h=$(($h+1)) ;;
               $FACE_TWO)face="tails"
                        t=$(($t+1))   ;;
              *)face="error" ;;
        esac

        slip=$(( RANDOM%2 + 1 ))
        case $slip in
                $FACE_ONE)face1="heads"
                        h=$(($h+1)) ;;
               $FACE_TWO)face1="tails"
                        t=$(($t+1))    ;;
              *)face1="error" ;;
        esac

         klip=$(( RANDOM%2 + 1 ))
        case $klip in
                $FACE_ONE)face2="heads"
                        h=$(($h+1)) ;;
               $FACE_TWO)face2="tails"
                        t=$(($t+1))    ;;
              *)face1="error" ;;
        esac

 face_value2[$isFlip]=$face$face1$face2
        #echo $face
        isFlip=$(( $isFlip + 1 ))
        done

echo "${face_value2[@]}"
val1=$(($(( $h * 100 )) / (( $flipCoin * 3 ))))
val2=$(($(( $t * 100 )) / (( $flipCoin * 3 ))))
echo "the heads percentage = $val1 %"
echo "the tails percentage = $val2 %"

