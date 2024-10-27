#!/bin/bash

# V = 2505 % 6 = 3

# A function for generating a random number
generate_random_number() {
  echo $((1 + RANDOM))
}

# Generation and writing of 5 random positive numbers to a file
for i in $(seq 1 5); do
  generate_random_number >> numbers.txt
done

# display the numbers on the screen
echo "Random numbers:"
cat numbers.txt

# Finding the smallest number
min_number=$(sort -n numbers.txt | head -n 1)

# Clearing the file and writing the smallest number
echo "$min_number" > numbers.txt

# display the result on the screen
echo "The smallest number:"
cat numbers.txt
