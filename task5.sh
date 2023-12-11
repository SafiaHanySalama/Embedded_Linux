#!/bin/bash

# Define the username and groupname
USERNAME="SafiaHany"
GROUPNAME="Alhrany"

# Check if the group already exists
if grep -q "^$GROUPNAME:" /etc/group; then
    echo "Group $GROUPNAME already exists."
else
    # Create the group if it doesn't exist
    sudo groupadd $GROUPNAME
    echo "Group $GROUPNAME created."
fi

# Check if the user already exists
if id "$USERNAME" &>/dev/null; then
    echo "User $USERNAME already exists."
else
    # Create the user and add to the group
    sudo useradd -m -G $GROUPNAME $USERNAME
    echo "User $USERNAME created and added to group $GROUPNAME."

    # Display user information
    echo "User Information for $USERNAME:"
    id $USERNAME

    # Display group information
    echo "Group Information for $GROUPNAME:"
    getent group $GROUPNAME
fi

