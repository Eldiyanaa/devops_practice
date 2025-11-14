#!/bin/bash

echo "What is your name"
read name
echo "What is your favorite programming language?"
read lang
if  [ "$lang" == "Python" ]; then
echo "Hello $name! Excellent choice!"
else
echo "That's cool too!"
fi


