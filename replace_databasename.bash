#!/bin/bash

# Prompt the user for the data to replace
read -p "Enter the database name: " new_data

find . -type f -name "*.yml" -exec sed -i "s/EDIT_DATABASE_NAME/$new_data/g" {} +