#!/bin/sh

# メニューオプションを設定
OPTION1="IPv4"
OPTION2="IPv6"

# dialogコマンドを使用してメニューを作成
LISTEN=$(dialog --clear --title "Menu" --menu "IPv4 or IPv6" 15 40 2 "$OPTION1" "" "$OPTION2" "" 2>&1 >/dev/tty)



clear
echo "You chose: $CHOICE"
