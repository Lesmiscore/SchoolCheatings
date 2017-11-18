#!/bin/bash

cat <<EOF
   SSSSSSSSSSSSSSS                    hhhhhhh                                               lllllll                                                                                  
 SS:::::::::::::::S                   h:::::h                                               l:::::l                                                                                  
S:::::SSSSSS::::::S                   h:::::h                                               l:::::l                                                                                  
S:::::S     SSSSSSS                   h:::::h                                               l:::::l                                                                                  
S:::::S                cccccccccccccccch::::h hhhhh          ooooooooooo      ooooooooooo    l::::l                                                                                  
S:::::S              cc:::::::::::::::ch::::hh:::::hhh     oo:::::::::::oo  oo:::::::::::oo  l::::l                                                                                  
 S::::SSSS          c:::::::::::::::::ch::::::::::::::hh  o:::::::::::::::oo:::::::::::::::o l::::l                                                                                  
  SS::::::SSSSS    c:::::::cccccc:::::ch:::::::hhh::::::h o:::::ooooo:::::oo:::::ooooo:::::o l::::l                                                                                  
    SSS::::::::SS  c::::::c     ccccccch::::::h   h::::::ho::::o     o::::oo::::o     o::::o l::::l                                                                                  
       SSSSSS::::S c:::::c             h:::::h     h:::::ho::::o     o::::oo::::o     o::::o l::::l                                                                                  
            S:::::Sc:::::c             h:::::h     h:::::ho::::o     o::::oo::::o     o::::o l::::l                                                                                  
            S:::::Sc::::::c     ccccccch:::::h     h:::::ho::::o     o::::oo::::o     o::::o l::::l                                                                                  
SSSSSSS     S:::::Sc:::::::cccccc:::::ch:::::h     h:::::ho:::::ooooo:::::oo:::::ooooo:::::ol::::::l                                                                                 
S::::::SSSSSS:::::S c:::::::::::::::::ch:::::h     h:::::ho:::::::::::::::oo:::::::::::::::ol::::::l                                                                                 
S:::::::::::::::SS   cc:::::::::::::::ch:::::h     h:::::h oo:::::::::::oo  oo:::::::::::oo l::::::l                                                                                 
 SSSSSSSSSSSSSSS       cccccccccccccccchhhhhhh     hhhhhhh   ooooooooooo      ooooooooooo   llllllll                                                                                 
                                                                                                                                                                                     
                            CCCCCCCCCCCCChhhhhhh                                                         tttt            iiii                                                        
                         CCC::::::::::::Ch:::::h                                                      ttt:::t           i::::i                                                       
                       CC:::::::::::::::Ch:::::h                                                      t:::::t            iiii                                                        
                      C:::::CCCCCCCC::::Ch:::::h                                                      t:::::t                                                                        
                     C:::::C       CCCCCC h::::h hhhhh           eeeeeeeeeeee    aaaaaaaaaaaaa  ttttttt:::::ttttttt    iiiiiiinnnn  nnnnnnnn       ggggggggg   ggggg    ssssssssss   
                    C:::::C               h::::hh:::::hhh      ee::::::::::::ee  a::::::::::::a t:::::::::::::::::t    i:::::in:::nn::::::::nn    g:::::::::ggg::::g  ss::::::::::s  
                    C:::::C               h::::::::::::::hh   e::::::eeeee:::::eeaaaaaaaaa:::::at:::::::::::::::::t     i::::in::::::::::::::nn  g:::::::::::::::::gss:::::::::::::s 
                    C:::::C               h:::::::hhh::::::h e::::::e     e:::::e         a::::atttttt:::::::tttttt     i::::inn:::::::::::::::ng::::::ggggg::::::ggs::::::ssss:::::s
                    C:::::C               h::::::h   h::::::he:::::::eeeee::::::e  aaaaaaa:::::a      t:::::t           i::::i  n:::::nnnn:::::ng:::::g     g:::::g  s:::::s  ssssss 
                    C:::::C               h:::::h     h:::::he:::::::::::::::::e aa::::::::::::a      t:::::t           i::::i  n::::n    n::::ng:::::g     g:::::g    s::::::s      
                    C:::::C               h:::::h     h:::::he::::::eeeeeeeeeee a::::aaaa::::::a      t:::::t           i::::i  n::::n    n::::ng:::::g     g:::::g       s::::::s   
                     C:::::C       CCCCCC h:::::h     h:::::he:::::::e         a::::a    a:::::a      t:::::t    tttttt i::::i  n::::n    n::::ng::::::g    g:::::g ssssss   s:::::s 
                      C:::::CCCCCCCC::::C h:::::h     h:::::he::::::::e        a::::a    a:::::a      t::::::tttt:::::ti::::::i n::::n    n::::ng:::::::ggggg:::::g s:::::ssss::::::s
                       CC:::::::::::::::C h:::::h     h:::::h e::::::::eeeeeeeea:::::aaaa::::::a      tt::::::::::::::ti::::::i n::::n    n::::n g::::::::::::::::g s::::::::::::::s 
                         CCC::::::::::::C h:::::h     h:::::h  ee:::::::::::::e a::::::::::aa:::a       tt:::::::::::tti::::::i n::::n    n::::n  gg::::::::::::::g  s:::::::::::ss  
                            CCCCCCCCCCCCC hhhhhhh     hhhhhhh    eeeeeeeeeeeeee  aaaaaaaaaa  aaaa         ttttttttttt  iiiiiiii nnnnnn    nnnnnn    gggggggg::::::g   sssssssssss    
                                                                                                                                                            g:::::g                  
                                                                                                                                                gggggg      g:::::g                  
                                                                                                                                                g:::::gg   gg:::::g                  
                                                                                                                                                 g::::::ggg:::::::g                  
                                                                                                                                                  gg:::::::::::::g                   
                                                                                                                                                    ggg::::::ggg                     
                                                                                                                                                       gggggg                        

Welcome to danger zone!
EOF

if ! [[ "bash" == "$0" ]]; then
  echo "Non-bash shells are not supported."
  exit 1
fi

if [ -z $(which sed) ]; then
  echo "Please install \"sed\" first: localization and some tasks won't work."
  exit 1
fi

echo "Type your language: "

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

LOCALLANG="$(read line)"
case "$LOCALLANG" in
  "en" ) echo "You chosen English." 
         export LANG=en_US.UTF-8 ;;
  "ja" ) echo "日本語を選択しました。" 
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
  "*"  ) echo "No language specified."
         echo "All messages from this script will be displayed in English." ;;
esac

translate(){
  echo $1 | sed -i "s/VAL1/$2/" | sed -i "s/VAL2/$3/" | sed -i "s/VAL3/$4/" | sed -i "s/VAL4/$5/" | sed -i "s/VAL5/$6/" | sed -i "s/VAL6/$7/" | sed -i "s/VAL7/$8/" | sed -i "s/VAL8/$9/"
}

translate $MESSAGE_LOOKING_FOR unzip
if [ -z $(which unzip) ]; then
  translate "$MESSAGE_PLEASE_INSTALL" unzip
  exit 0
fi

translate $MESSAGE_LOOKING_FOR wget
if [ -z $(which unzip) ]; then
  translate "$MESSAGE_PLEASE_INSTALL" wget
  exit 0
fi

if [ -z "$SCHOOL_CHEATINGS_DIR" ]; then
    SCHOOL_CHEATINGS_DIR="$HOME/.school-cheatings"
fi
SCHOOL_CHEATINGS_TMP="$SCHOOL_CHEATINGS_DIR/tmp"
SCHOOL_CHEATINGS_BIN="$SCHOOL_CHEATINGS_DIR/bin"
SCHOOL_CHEATINGS_DAT="$SCHOOL_CHEATINGS_DIR/dat"
SCHOOL_CHEATINGS_PROG="$SCHOOL_CHEATINGS_DAT/programming"
SCHOOL_CHEATINGS_VP="$SCHOOL_CHEATINGS_DAT/viaproxy"

mkdir -p $SCHOOL_CHEATINGS_TMP $SCHOOL_CHEATINGS_BIN $SCHOOL_CHEATINGS_DAT $SCHOOL_CHEATINGS_PROG $SCHOOL_CHEATINGS_VP

echo $LOCALLANG > "$SCHOOL_CHEATINGS_DAT/lang"

REPO="https://github.com/nao20010128nao/SchoolCheatings/"
BASHRC="${HOME}/.bashrc"
SCHOOL_CHEATINGS_INIT=$( cat << EOF
export SCHOOL_CHEATINGS_DIR="$SCHOOL_CHEATINGS_DIR"
[[ -s "$SCHOOL_CHEATINGS_BIN/school-cheatings-init.sh" ]] && source "$SCHOOL_CHEATINGS_BIN/school-cheatings-init.sh"
EOF
)

echo "$MESSAGE_ATTEMPT_BASHRC"
touch "$BASHRC"
if [[ -z $(grep 'school-cheatings-init.sh' "$BASHRC") ]]; then
  echo -e "\n$SCHOOL_CHEATINGS_INIT" >> "$BASHRC"
  translate "$MESSAGE_ADDED_BASHRC" "$BASHRC"
else

translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_BASE"
wget -qO "$SCHOOL_CHEATINGS_TMP/init.zip" "$REPO/archive/init.sh"
unzip -qjo "$SCHOOL_CHEATINGS_BIN" "$SCHOOL_CHEATINGS_TMP/init.zip"

programming(){
  translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_PROGRAMMING"
  wget -qO "$SCHOOL_CHEATINGS_TMP/programming.zip" "$REPO/archive/programming.zip"
  unzip -qjo "$SCHOOL_CHEATINGS_PROG" "$SCHOOL_CHEATINGS_TMP/programming.zip"
}

translate "$MESSAGE_INSTALL_WHAT_Y" "$MESSAGE_PROGRAMMING"
case "$(read line)" in
  "N" | "n" ) true ;;
  * ) programming ;;
esac
 
viaproxy(){
  translate "$MESSAGE_DOWNLOAD_WHAT" "$MESSAGE_PROXIED_COMMAND"
  wget -qO "$SCHOOL_CHEATINGS_TMP/viaproxy.zip" "$REPO/archive/viaproxy.zip"
  unzip -qo "$SCHOOL_CHEATINGS_DAT" "$SCHOOL_CHEATINGS_TMP/viaproxy.zip"
  mv SchoolCheatings-viaproxy viaproxy
}

translate "$MESSAGE_INSTALL_WHAT_Y" "$MESSAGE_PROXIED_COMMAND"
case "$(read line)" in
  "N" | "n" ) true ;;
  * ) viaproxy ;;
esac

echo -e "\n\n\n$MESSAGE_DONE\n\n"

echo "$MESSAGE_FINAL"
echo ""
echo "    source \"$SCHOOL_CHEATINGS_BIN/school-cheatings-init.sh\""


rm -rf "$SCHOOL_CHEATINGS_TMP"


