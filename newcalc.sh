#!/usr/bin/env bash

echo "Tell me a number"
read number1
echo "What are we doing?"
read operator
echo "Tell me another number"
read number2


echo "That is:"
echo $(($number1 $operator $number2))
