#!/bin/bash
echo hello world

NAME="Brad"
SURNAME="Pitt"
echo Hello $NAME $SURNAME

echo "Enter your name: "
read NAME
echo "Enter your surname: "
read SURNAME

echo "Hello $NAME $SURNAME"

echo Hello $1 $2

if [ "$1" == "hello" ]
then
    echo "Hello how are you"
elif [ "$1" == "" ]
then
    echo "You must write something"
else
    echo "You must write hello"
fi

arg1_lower=$(echo "$1" | tr '[:upper:]' '[:lower:]')

if [ "$arg1_lower" = "boss" ]; then
    echo "Hello boss"
elif [ "$arg1_lower" = "emp" ]; then
    echo "Hello emp"
else
    echo "Hello guest"
fi

read -p "Enter a fruit: " fruit
case $fruit in

case $1 in
    "apple")
        echo "You chose an apple."
        ;;
    "banana")
        echo "You chose a banana."
        ;;
    *)
        echo "Not a recognized fruit."
        ;;
esac


my_array=(35 banana cherry 101)
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"
echo "All elements: ${my_array[@]}"

fruits=("apple" "banana" "cherry" "date" "elderberry" "fig")
for fruit in ${fruits[@]}; do
    echo "Fruit: $fruit"
    # echo 'Fruit: ${fruit}' prints Fruit: ${fruit}
done 

for fruit in ${fruits[@]}; do echo -n $fruit | wc -c; done
this loop prints the number of characters in each fruit

for i in {1..5}; do
    echo "Number: $i"
done

greet() {
    name="$1"
    echo "Hello, $name!"
}
greet $1