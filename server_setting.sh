#!/bin/sh

echo "creating user... "
read -p "New UserName: " user_name

useradd $user_name
if [ $? -ne 0 ]; then
  exit 9
fi

passwd $user_name
if [ $? -ne 0 ]; then
  exit 9
fi

usermod -aG wheel $user_name
touch /.already_configured

