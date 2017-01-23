#!/bin/sh

echo "Git profile configuration"

echo "Enter your username
read user

if [[ "$user" =~ ^[A-Za-z_][A-Za-z0-9_] ]];then
	echo "Enter your email id"
	read email
	if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$ ]];then
	  echo "Creating profile..."
	  git config --global user.name "$user"
	  git config --global user.email "$email"
	  echo "Profile created for user:$user"
	  echo "username:" $user
	  echo "email id:" $email
	else
	  echo please enter a valid email id
	  exit 1
fi
else
  echo please enter a valid username
  exit 1
fi
