#!/bin/bash

# Prompt the user for the data to replace
read -p "Enter the dealer code: " new_data

find . -type f -name "*.yml" -exec sed -i "s/EDIT_DEALER_API_KEY/$new_data/g" {} +