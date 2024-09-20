#!/bin/bash


clear
echo "Let's build a mad-lib!"
read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name an verb ending in -ing: " ING1
read -p "3. Give a verb ending in -ing: " ING2
read -p "4. Give an adjective: " ADJ1
read -p "5. Name a season: " SEASON
read -p "6. Give an adjective for someone bad: " ADJ2
read -p "7. Give a verb for someone bad: " VERB1
read -p "8. Give a verb: " VERB2

echo "Man, I love $NOUN1. Just people everywhere $ING1 and $ING2 on a $ADJ1 $SEASON day."
echo "But it's the worst when someone $ADJ2 joins. They always $VERB1. It brings the whole mood down."
echo "Next time, I'll $VERB2 them. That'll teach them a lesson."
