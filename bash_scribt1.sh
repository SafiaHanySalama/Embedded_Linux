#!bin/bash
#Create a directory called "myDirectory" in your home folder
mkdir myDirectory
cd myDirectory
mkdir secondDirectory
cd secondDirectory
touch myNotePaper
cp myNotePaper	..
cd .. 
mv myNotePaper myOldNotePaper
