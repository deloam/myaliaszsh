alias aliases='code /Users/deloam/.oh-my-zsh/custom/aliases.zsh'
alias apelidos='code /Users/deloam/.oh-my-zsh/custom/aliases.zsh'
### Geral ###
alias r='source ~/.zshrc'          # |---------------|
alias c='clear'                    # | comandos com  |
alias x='exit'                     # |   uma letra   |
alias h='history -10'              # |_______________|
alias ls='exa -l --group-directories-first --color=auto --git --icons --no-permissions --no-user'
alias ll='exa -lahF --group-directories-first --color=auto --git --icons'
alias mestre='sudo'
alias cls='clear'
alias limpar='clear'
alias sair='exit'
alias desbloquear='xattr -d com.apple.quarantine'
alias saudessd='smartctl -a disk3'
alias limparzsh='sudo rm -rf /private/var/log/asl/*.asl'
alias home="~"
alias naodormir="pmset noidle"
alias backupaliases='cp /Users/deloam/.oh-my-zsh/custom/aliases.zsh . && git add aliases.zsh && git commit -m "novo arquivo atualizado" && git push origin master'



### UTILITARIOS ###

alias meuip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias testarinternet='networkquality'
alias cat='bat --paging=never'
alias nf='neofetch'
alias dadosdosistema='neofetch'
alias extrair="tar -zxvf"
alias monitor='bpytop'
alias armazenamento='ncdu'
alias ondeta='which'
alias comousar='tldr'

### HOSTS ###
alias editarhost='sudo code /private/etc/hosts'

### INTELIGENCIA ARTIFICIAL ###
alias chat='shell-genie ask'

#### BREW ###
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias brew='arch -arm64 brew'

alias update='brew upgrade'
alias atualizar='brew upgrade && brew update'
alias bi='brew install'
alias instalar='brew install'
alias desinstalar='brew uninstall --force'
alias lista='brew list'
alias procurar='brew search'

### PROGRAMACAO ###
## --- PYTHON --- ##
#alias py='python3'
#alias python='python3'
alias vs='code .'
alias jn='jupyter notebook'
alias serverlocal="python3 -m http.server"

## --- WEB --- ##
alias httpdconfig='code /etc/apache2/httpd.conf'



### Sufix Aliases
alias -s {py,go,js,css,cs,cpp,c,php}="code"



### CONFIGURAÇÃO ZSH ###
alias zs='code ~/.zshrc'
alias meushell='code ~/.zshrc'
alias ldconfig='sudo update_dyld_shared_cache'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias zshpadrao='exec zsh'

### DE PLUGINS ###
alias abrirnofinder='ofd'


### BANCO DE DADOS ###
alias servicos='brew services'
#iniciar banco de dados
alias iniciarmongo='brew services start mongodb-community'
alias iniciarpostgre='brew services start postgresql'
#Parar banco de dados
alias pararmongo='brew services stop mongodb-community'
alias pararpostgre='brew services stop postgresql'


### HACKING ###
alias scanwifi='sudo airport -s'
alias listawifi='networksetup -listallhardwareports'
alias sairwifi='sudo airport -z'
alias wificanal='sudo airport -c'
alias monitorarwifi='sudo tcpdump "type mgt subtype beacon and ether src $BSSID" -I -c'
alias fwifi='-i en0 -w beacon.cap'
alias maowifi='sudo tcpdump "ether proto 0x888e and ether host $BSSID" -I -U -vvv -i en0 -w handshake.cap'
alias mesclarresultados='mergecap -a -F pcap -w capture.cap beacon.cap handshake.cap'
alias hccwifi='cap2hccapx capture.cap capture.hccapx'
alias ihashcat='/usr/local/Cellar/hashcat/6.2.6_1/bin/hashcat'

#### BETTERCAP #####
alias hacker='sudo bettercap -iface en0'
alias atualizarbetter='sudo bettercap -eval "caplets.update; ui.update; q"'
alias monitorhacker='sudo bettercap -caplet http-ui'

### INICIA PARALELS ###
alias windows="/Users/deloam/Downloads/ParallelsDesktop-19.0.0-54570/Crack_Parallels_v19_SIP_enabled/./Install_Patch.command"


### FUNÇÃO DE ALIASES ###
hc(){
    hashcat -m 22000 $1 -a 0 --kernel-accel=1 -w 4 --force $2
}
dbmysql() {
    /Applications/XAMPP/xamppfiles/bin/mysql -u $1 -p $2
}

converter_para_mp3() { ### converte audios de uma pagina para mp3
    if [ -z "$1" ]; then
        for file in *.mpeg *.mp4; do
            title=$(ffprobe -v quiet -show_entries format_tags=title -of default=noprint_wrappers=1:nokey=1 "$file")
            ffmpeg -i "$file" -q:a 0 -map a "${title}_${file%.*}.mp3"
        done
    else
        for file in *."$1"; do
            title=$(ffprobe -v quiet -show_entries format_tags=title -of default=noprint_wrappers=1:nokey=1 "$file")
            ffmpeg -i "$file" -q:a 0 -map a "${title}_${file%.*}.mp3"
        done
    fi
}
