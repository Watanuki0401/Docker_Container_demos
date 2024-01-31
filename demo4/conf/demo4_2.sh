#!/bin/sh

# ユーザーに選択肢を提示
echo "IPv4 or IPv6"
echo "1) IPv4"
echo "2) IPv6"

# ユーザーの入力を読み取る
read -p "Enter your choice (1 or 2): " choice

# 選択に応じてメッセージを出力
if [ "$choice" -eq 1 ]; then
    echo "You chose: IPv4"
elif [ "$choice" -eq 2 ]; then
    echo "You chose: IPv6"
else
    echo "Invalid choice"
fi
