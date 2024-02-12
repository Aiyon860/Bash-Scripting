#!/usr/bin/zsh

MY_FAVOURITE_FOODS=(hamburger chicken meatball steak rendang)
echo -e "This is the array in Bash:\nMY_FAVOURITE_FOODS=(hamburger chicken meatball steak rendang)\n"

echo "What if i access it by using '$ MY_FAVOURITE_FOODS'?"
echo -e $MY_FAVOURITE_FOODS "\n"

echo "To access the full list of array members, we must use '$ {MY_FAVOURITE_FOODS[@]}'."
echo -e ${MY_FAVOURITE_FOODS[@]} "\n"

echo "To access certain member of the array, we use '$ {MY_FAVOURITE_FOODS[1]}'."
echo "In Bash, the index is start from 0. Whereas Z Shell, the index is start from 1."
echo -e ${MY_FAVOURITE_FOODS[1]} "\n"
