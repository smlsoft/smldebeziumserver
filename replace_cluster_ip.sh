# Get the new IP address using the ip command
new_ip=$(ip -4 addr show | grep -oP '(?<=inet\s)192\.\d+\.\d+\.\d+' | head -1)

# Replace the old IP address in the file.txt with the new_ip
find . -type f -name "*.yml" -exec sed -i "s/EDIT_KAFKA_HOST/$new_ip/g" {} +