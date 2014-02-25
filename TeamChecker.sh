#!/bin/bash

#Below: Pokemon Checker
list=`cat Pokedex`
#Need to take input and read Pokefile to find if the Pokemon exists 
for Pokes in $@
do #will go through each Pokemon
echo $Pokes
Search=$(cat Pokedex | grep -w -i $Pokes) #remember -w matches only the strin(Kabuto not Kabutops) and -i makes it case insensitive
if ! [ $Search ] #ERROR HANDLING YEAH
	then Search="Error"
fi
echo "This is search: $Search"
#while read list #reads Pokedex
#do

if [ $Search = "Error" ]
then echo "I don't know Missingno.'s stats. Try again." #Ya done goofed.

else
	Pokemon=${Search%,*} #Saves the Pokemon's name in $Pokemon
	Type=${Search##*,} #Saves the Pokemon's type in $Type
	Type1=${Type%/*} #First type is saved as $Type1
	Type2=${Type##*/} #Second type is saved as $Type2
	echo "Pokemon: $Pokemon"
	echo "Type: $Type"
	echo "First type: $Type1"
	if ! [ $Type1 == $Type2 ] #Makes sure the Pokemon has more than one type before printing the second type
		then echo "Second type: $Type2"

fi
fi
#done <"$list"

done

