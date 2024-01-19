#!/bin/bash

echo "PassWordマネージャーへようこそ！"

read -p "enter service name:" service_name
#!入力値をファイルに保存
echo "$service_name">>saved_password.txt

read -p "enter user name: " name
echo "$name">>saved_password.txt

read -p "enter password: " password
echo "$password">>saved_password.txt

echo "Thank you!"
