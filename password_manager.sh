#!/bin/bash

echo "PassWordマネージャーへようこそ！"
echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："

read choice

if [ "$choice" == "Add Password" ]; then
    read -p "enter service name:" service_name
    read -p "enter user name: " name
    read -p "enter password: " password

    #!入力値をファイルに保存
    echo "$service_name:$name:$password">>saved_password.txt
    echo "パスワードの追加は成功しました。"

elif [ "$choice" == "Get Password" ]; then
    found=false
    read -p "enter service name:" service_name

    #!ファイルから１行ずつ読み込んで、「サービス名」に合致するデータを処理する
    while IFS=":" read -r tag name pass; do
        if [ "$tag" == "$service_name" ]; then
            found=true
            echo "ユーザー名: $name"
            echo "Password : $pass"
            break
        fi
    done < saved_password.txt

    if [ "$found" = false ]; then
        echo "そのサービスは保存されていません"
    fi

elif [ "$choice" == "Exit" ]; then
    echo "Thank you!"
    exit 1

else
    echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    exit 1

fi

