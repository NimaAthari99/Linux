########## Calculate & Cleanup old Loga in /var ##########

#!/bin/bash

# Calculate /var size
calculate_var_size() {
    sudo du -s /var | awk '{print $1}'
}

# Remove files over 7days
cleanup_old_log() {
    sudo find /var/log -type f -mtime +7 -exec rm -f {} \;
}

# Run function
cleanup_old_log

# Calculate current size
current_size=$(calculate_var_size)

# Remove older files if /var size > 1GB
while [ "$current_size" -gt 1024 ]; do
    # Remove oldest file
    oldest_file=$(sudo find /var/log -type f -printf '%T+ %p\n' | sort | head -n 1 | cut -d' ' -f2-)
    sudo rm -f "$oldest_file"
    
    # Update current size
    current_size=$(calculate_var_size)
done
