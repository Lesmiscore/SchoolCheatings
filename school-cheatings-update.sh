#!/bin/bash

if [ -z "$SCHOOL_CHEATINGS_DIR" ]; then
    SCHOOL_CHEATINGS_DIR="$HOME/.school-cheatings"
fi
SCHOOL_CHEATINGS_TMP="$SCHOOL_CHEATINGS_DIR/tmp"
SCHOOL_CHEATINGS_BIN="$SCHOOL_CHEATINGS_DIR/bin"
SCHOOL_CHEATINGS_DAT="$SCHOOL_CHEATINGS_DIR/dat"
SCHOOL_CHEATINGS_PROG="$SCHOOL_CHEATINGS_DAT/programming"
SCHOOL_CHEATINGS_VP="$SCHOOL_CHEATINGS_DAT/viaproxy"

LOCALLANG=$(cat "$SCHOOL_CHEATINGS_DAT/lang")

export MESSAGE_LOOKING_FOR="Looking for \"VAL1\""
export MESSAGE_PLEASE_INSTALL="\"VAL1\" is not found on the system. Please restart after installing \"VAL1\"."
export MESSAGE_ATTEMPT_BASHRC="Attempt update of interactive bash profile..."
export MESSAGE_ADDED_BASHRC="Added sdkman init snippet to \"VAL1\""
export MESSAGE_DOWNLOADING_WHAT="Downloading \"VAL1\"..."
export MESSAGE_PROXIED_COMMAND="proxied command"
export MESSAGE_PROGRAMMING="programming kit"
export MESSAGE_BASE="the base"
export MESSAGE_INSTALL_WHAT_Y="Would you like to install \"VAL1\"? (Y/n)"
export MESSAGE_FINAL="Please open a new terminal, or run the following in the existing one:"
export MESSAGE_DONE="All done!"

case "$LOCALLANG" in
  "en" ) echo "Updating..." 
         export LANG=en_US.UTF-8 ;;
  "ja" ) echo "更新中..." 
         export LANG=ja_JP.UTF-8 
         export MESSAGE_LOOKING_FOR="\"VAL1\"を探しています。"
         export MESSAGE_PLEASE_INSTALL="\"VAL1\"コマンドが見つかりませんでした。\"VAL1\"をインストール後に再度お試し下さい。"
         export MESSAGE_ATTEMPT_BASHRC="bashプロファイルの書き換え中..."
         export MESSAGE_ADDED_BASHRC="\"VAL1\"に起動スクリプトを挿入しました。"
         export MESSAGE_DOWNLOADING_WHAT="\"VAL1\"をダウンロードしています。"
         export MESSAGE_PROXIED_COMMAND="プロキシ設定済みコマンド"
         export MESSAGE_PROGRAMMING="プログラミングキット"
         export MESSAGE_BASE="基礎"
         export MESSAGE_INSTALL_WHAT_Y="\"VAL1\"をインストールしますか? (Y/n)"
         export MESSAGE_FINAL="新しくターミナルを開くか、以下のコマンドを入力すれば使えるようになります。"
         export MESSAGE_DONE="完了!" ;;
esac

translate(){
  echo $1 | sed -i "s/VAL1/$2/" | sed -i "s/VAL2/$3/" | sed -i "s/VAL3/$4/" | sed -i "s/VAL4/$5/" | sed -i "s/VAL5/$6/" | sed -i "s/VAL6/$7/" | sed -i "s/VAL7/$8/" | sed -i "s/VAL8/$9/"
}

programming(){
  translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_PROGRAMMING"
  wget -qO "$SCHOOL_CHEATINGS_TMP/programming.zip" "$REPO/archive/programming.zip"
  unzip -qjo "$SCHOOL_CHEATINGS_PROG" "$SCHOOL_CHEATINGS_TMP/programming.zip"
}

viaproxy(){
  translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_PROXIED_COMMAND"
  wget -qO "$SCHOOL_CHEATINGS_TMP/viaproxy.zip" "$REPO/archive/viaproxy.zip"
  unzip -qo "$SCHOOL_CHEATINGS_DAT" "$SCHOOL_CHEATINGS_TMP/viaproxy.zip"
  mv SchoolCheatings-viaproxy viaproxy
}

translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_BASE"
wget -qO "$SCHOOL_CHEATINGS_TMP/init.zip" "$REPO/archive/init.sh"
unzip -qjo "$SCHOOL_CHEATINGS_BIN" "$SCHOOL_CHEATINGS_TMP/init.zip"

if [ -e "$SCHOOL_CHEATINGS_PROG" ]; then
  programming
fi

if [ -e "$SCHOOL_CHEATINGS_VP" ]; then
  viaproxy
fi

rm -rf "$SCHOOL_CHEATINGS_TMP"

