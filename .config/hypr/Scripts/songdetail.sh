#!/bin/bash

song_info=$(playerctl metadata --player=spotify --format '{{title}}      {{artist}}')

echo "$song_info" 
