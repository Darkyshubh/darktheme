command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
PS1='\[\e[31m\]┌─[\[\e[37m\]\T\[\e[31m\]]─────\e[1;93m[DARK-X]\e[0;31m───[\#]\n|\n\e[0;31m└─[\[\e[31m\]\e[0;35m\W\[\e[31m\]]────►\e[1;92m'
clear
echo " 
           ╔╦╗╔═╗╦═╗╦╔═  ╔╗ ╔═╗╔╗╔╔╗╔╔═╗╦═╗
            ║║╠═╣╠╦╝╠╩╗  ╠╩╗╠═╣║║║║║║║╣ ╠╦╝
           ═╩╝╩ ╩╩╚═╩ ╩  ╚═╝╩ ╩╝╚╝╝╚╝╚═╝╩╚═ " | lolcat
echo "
                 ┬  ┌─┐┌─┐┌┬┐┬┌┐┌┌─┐
                 │  │ │├─┤ │││││││ ┬
                 ┴─┘└─┘┴ ┴─┴┘┴┘└┘└─┘
 " | lolcat
#color
C='\033[1;36m' #cyan
spinner_pid=
function start_spinner {
    set +m
    spin &
    spinner_pid=$!
}
function stop_spinner {
    kill -13 $spinner_pid
    set -m
}
function spin {
    while : ; do for X in ${C}'              ▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒' '              ▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒' '              ▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒' '              ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓' ; do echo -en "\r$X ${C}Loading ... " ; sleep 1.2; done ; done
}
              
start_spinner
sleep 5
stop_spinner
clear
echo ""
clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "
               ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢋⡿⢻⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠘⣿⣿⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣬⣭⣾⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⢀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⣿⠏⢀⢀⢀⢀⢀⢀⢀⠹⣿⣿⣿⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⡟⢀⢀⢀⢀⢀⢀⢀⢀⢀⢹⣿⣿⣿⣿⣿⣿⣿
               ⣿⣿⣿⣿⣿⣿⣿⡇⢀⢀⢀⢀⡀⢀⡀⢀⢀⢸⣿⣿⣿⣿⣿⣿⣿
               ⣿⡿⠿⣟⣛⣛⣛⣃⣀⣘⣀⣈⣃⣀⣃⣀⣀⣘⣛⣛⣛⡛⠿⠿⣿
               ⢟⣛⣛⣛⣛⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⣉⡉⢉⡉⠛⠛⠓
               ⡶⠰⠈⠇⠁⣿⠉⢀⠉⢸⢻⡿⠛⢿⡟⡇⠉⢀⠉⡇⢀⠐⢀⠂
               ⠛⠼⠤⠧⠤⠿⠤⢀⢀⠘⠊⢁⣀⡈⠓⠃⢀⢀⠤⠇⢀⠐⢀⠂
               ⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⣿⡇
               ⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⣿⡇💝𓂆فلسطين🇵🇸🕊️
                   
                   !!!  A L L A H !!!
                     !!!  I S  !!!
                    !!!  T H E  !!!
               !!!  G R E A T E S T  !!! 
        
             █■■■■  ■█■■■  ■■█■■  ■■■█■  ■■■■█ " | lolcat
echo ""
echo "               [██████████████████████ 100%] " | lolcat
echo ""
sleep 4.0
clear
echo ""
echo ""
# Author : laraib07 (https://t.me/Dark_X369)

readonly CACHE_DIR="$HOME/.cache/androfetch"
readonly CACHE_FILE="$CACHE_DIR/cache"
declare -A cache

# Colors
G='\033[1;32m' #green
W='\033[1;37m' #bold white
off='\033[0m'  #simple white
C='\033[1;36m' #cyan


## FUNCTIONS

#Info printing
function fetch() {
  # Hide the cursor and disable line wrap.
  printf '\e[?25l\e[?7l\n'

  # loop up to length of ascii_logo array
  # print logo and strings according to index
  for i in "${!ascii_logo[@]}";do
    printf "${G}${ascii_logo[$i]}${off} ${info[$i]} \n"  #print ascii_logo and info strings
  done
  printf "${off}"        #turn off colors

  # unhide the cursor and unable line wrap.
  printf "\e[?25h\e[?7h\n"
}


function show_help() {
  printf "A pretty system information tool written in bash for termux on android.\n"
  printf "Usage: androfetch [-hcit] [-n [name]] [-l [filepath]]
  -h\t print this usage.
  -c\t build new cache.
  -i\t toggle icon visibility.
  -t\t toggle description title visibility.
  -n\t set user name.
  -l\t set logo.\n"
}


function error() {
  printf "$(basename "$0"): $*\n" >&2
  exit 1
}


# Create an array of all the strings to be fetched
# add icons and description title if toggled
function load_icons_and_strings() {
  # Meslo Nerd font preferred for powerline icons
  # if you don't use above font you can toggle
  # icons to disable it with ’androfetch -i’
  # by default its enabled.
  # 2 white-spaces are intentional to make whole output pretty with reasonable spacing
  if [[ "${cache[Icon_Toggle]}" == "1" ]]; then
    OS="${W}\uf6a6  ${off}"
    HOST="${W}\uf6c3  ${off}"
    KER="${W}\uf83c  ${off}"
    UPT="${W}\uf49b  ${off}"
    PKGS="${W}\uf8d6  ${off}"
    SH="${W}\ue7a2  ${off}"
    TERMINAL="${W}\uf489  ${off}"
    CHIP="${W}\uf2db  ${off}"
    CPU="${W}\ue266  ${off}"
  fi

  # Load description titles
  if [[ "${cache[Desc_Title_Toggle]}" == "1" ]]; then
    OS+="${G}OS${off}: "
    HOST+="${G}Host${off}: "
    KER+="${G}Kernel${off}: "
    UPT+="${G}Uptime${off}: "
    PKGS+="${G}Packages${off}: "
    SH+="${G}Shell${off}: "
    TERMINAL+="${G}Terminal${off}: "
    CHIP+="${G}Chipset${off}: "
    CPU+="${G}CPU${off}: "
  fi

  info=( \
    "${G}${cache[user]}${W}@${C}Dark${W}ム${C}host" \
    "${W}-----------------" \
    "${OS}${cache[OS]}" \
    "${HOST}${cache[Model]}" \
    "${KER}${cache[Kernel]}" \
    "${UPT}${uptime}" \
    "${PKGS}${pkg}" \
    "${SH}${cache[Shell]}" \
    "${TERMINAL}DARK" \
    "${CHIP}${cache[Chipset]}" \
    "${CPU}${cache[CPU]}" \
  )
}

function load_default_logo() {
  ascii_logo=( \
  "       ╲ ▁▂▂▂▁ ╱       " \
  "       ▄███████▄       " \
  "      ▄██ ███ ██▄      " \
  "     ▄███████████▄     " \
  "  ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄ █▄  " \
  "  ██ █████████████ ██  " \
  "  ██ █████████████ ██  " \
  "  ██ █████████████ ██  " \
  "     █████████████     " \
  "      ███████████      " \
  "       ██     ██       " \
  "       ██     ██       " \
  )

}



function match_arr_length() {

  logo_width=${#ascii_logo[0]} 

  while [ ${#ascii_logo[@]} -lt ${#info[@]} ]; do
      ascii_logo+=("$(printf "%${logo_width}s")") 
  done
}


function set_logo() {
  if [[ -z "$1" ]]; then
      load_default_logo
  else
    if [ -f "$1" ];then
      unset ascii_logo #unset current logo
      while IFS= read -r line; do
        ascii_logo+=("$line")
      done < "$1"
      match_arr_length
    else
      error "file not found"
    fi
  fi
  create_cache
}


# toggle values of different components.
function toggle_value() {
  if [[ "${cache[$1]}" == "0" ]];then
    cache[$1]=1
  else
    cache[$1]=0
  fi
  create_cache
}


# Set custom user name
# using reset as username will set it to default
function set_user() {
  if [[ -z "$1" ]]; then
    cache[user]=$(logname)
  else
    cache[user]=$1
  fi
  create_cache
}


# Get shell name used by user
# and get version info if its zsh, bash or fish.
function get_shell() {
  case ${shell:=${SHELL##*/}} in
    bash)
      ver=$("$SHELL" -c "printf %s \"\$BASH_VERSION\"")
      shell+=" "${ver/-*}
      shell=${shell/\(*\)}
      ;;

    zsh)
      shell=$("$SHELL" --version)
      shell=${shell% *} # removing extra stuff
      ;;

    fish)
      ver=$("$SHELL" --version)
      shell+=" ${ver##* }"
      ;;
  esac

  printf "${shell}"
}


#Get kernel info
function get_kernel() {
  kernel=$(uname -r)
  printf "${kernel%%-*}"
}


#Get CPU info
function get_cpu() {
  cpuid=$(grep "Hardware" /proc/cpuinfo)
  cpuid=${cpuid##?*: }
  printf "${cpuid%,*}"
}


# Load frequently updated info like packages and uptime
function load_non_cache_variables() {
  #Packages
  pkg="$(grep -c "Package:" $PREFIX/var/lib/dpkg/status) (dpkg)"

  #Uptime
  uptime=$(uptime -p)
  uptime=${uptime:3} # removing 'up '
  uptime=${uptime//s/} # removing every 's' 
  uptime=${uptime/week/w}
  uptime=${uptime/day/d}
  uptime=${uptime/hour/h}
  uptime=${uptime/minute/m}

}


#Load infrequent updated info like android
# version cpu chipset and icon_toggle.
function load_cache_variables() {
    cache=( \
      [user]="${cache[user]:=$(logname)}" \
      [OS]="Android $(getprop ro.build.version.release)" \
      [Model]="$(getprop ro.product.manufacturer) $(getprop ro.product.model)" \
      [Chipset]="$(getprop ro.board.platform)" \
      [Kernel]="$(get_kernel)" \
      [Shell]="$(get_shell)" \
      [CPU]="$(get_cpu)" \
      [Icon_Toggle]="${cache[Icon_Toggle]:=1}" \
      [Desc_Title_Toggle]="${cache[Desc_Title_Toggle]:=1}" \
    )

}


# Create cache
function create_cache() {
  # For info
  printf "cache=($(for i in "${!cache[@]}";do printf "[$i]='${cache[$i]}' ";done))\n" > "$CACHE_FILE"

  # For icon
  printf "ascii_logo=($(for i in "${ascii_logo[@]}";do printf "\'$i\' ";done))\n" >> "$CACHE_FILE"
}


function getopts_get_optional_argument() {
    eval next_token=\${$OPTIND}
    if [[ -n $next_token && $next_token != -* ]]; then
        OPTIND=$((OPTIND + 1))
        OPTARG=$next_token
    else
        OPTARG=""
    fi
}


# Driver code
function main() {
  # checking cache dir
  if ! [ -d "$CACHE_DIR" ];then
    mkdir -p "$CACHE_DIR"
  fi

  # load cache variables first if cache don't exists
  # else source cache
  # It's important to do this before anything else
  # So custom username and icon_toggle's value don't get deleted
  if [ ! -f "$CACHE_FILE" ];then
    # This block is executed only on very first run
    # It will set all default options
    load_cache_variables
    load_default_logo # use default logo
  else
    source $CACHE_FILE
  fi

  while getopts ":hcinlt" arg ; do
    case "${arg}" in
      h ) show_help; exit 0 ;;
      c ) rm $CACHE_FILE; load_cache_variables ;;
      i ) toggle_value "Icon_Toggle" ;;
      t ) toggle_value "Desc_Title_Toggle" ;;
      n )
          getopts_get_optional_argument $@
          set_user "$OPTARG"
          ;;
      l )
          use_custom_logo=1
          getopts_get_optional_argument $@
          logo_file="$OPTARG"
          ;;
      : ) error "option needs an argument.";;
      \?) error "unknown option." ;;
    esac
  done

  # Create cache if not found
  if [ ! -f "$CACHE_FILE" ];then
    create_cache
  fi

  load_non_cache_variables # load non-cached variables
  load_icons_and_strings # create array of strings to fetch

  # Always set logo after everything else, just before fetching
  # to align info with logo
  if [[ -n $use_custom_logo ]];then
      set_logo $logo_file
  fi

  ## Start fetching
  fetch
}

main "$@"
echo "
        █■■■■  ■█■■■  ■■█■■  ■■■█■  ■■■■█  

             [ CODER ] DARK-X369
             [ Telegram ] @Dark_X369
             [ THANKS TO ] ALLAH !

               〄 ᴅᴀʀᴋ-x ʜᴀᴄᴋɪɴɢ 〄                           
                  ।।     𖠌    ।।
                      THANKS

        █■■■■  ■█■■■  ■■█■■  ■■■█■  ■■■■█  " |lolcat
sleep 5.0
clear
mpv //$HOME/DARK-X/terminal.mp3
clear
echo -e "CODED BY \e[5mDARK-X" | lolcat
echo "----------------" | lolcat
echo " '.
                      .dNM: c;.
                    :KMMMM:.MMMW.
                   xMMMMMM:.MMMM'
         l        :MMMMMMM:.MMMM'  ,W;
         MMO;    .MMMMMMMM:.MMMM.  lMM
        ,MMMMWk;.NMMMMMMMM:.MMMM.  OMM
        lMMMMMMMM: MMMMMMM:.MMMM.  MMX     c
    o.  oMMMMMMMo ..MMMMMM:.MMMM   MMl   cNMWc
    MMXoXMMMMMMW kW; WMMMo .MMMM  .MM.  KMMMMO
    MMMMc 0MMMMc MMMd.,M..'.MMMM  lMM   MMMx
    MMMM.., ;MM.;MMMMXc .W;.MMMX  WMd  'M'   ,dNl
    OMMM oM0:.  dMMMMMMNMM;.MMMx .MM.      .WMMMM.
    .MMM.lMMMWk:WMMMMMMMMM;.MMM: XMN      ,WMMMM0
     kMM.'MW   MMMMMMMMMMM;.MMM.lMM;     dMM,
           dkNd KMMMMMMMMM;.MMMKMMM
            :MMK,      XMM;.k o;xMMooool;.
              :MMd     ' x .W; 'WMMMMMMMMMWk.
                .MNc   l x .M ..MMMMMMMMMMMKM.
        kNx   .  ; dNc  ;k .0 00MMMMMMcM.  XMK
        .MM.   o l   kXool .NkMMW     kd  ;MMK
         :MW.  .:  ;,.c   ,.MMMK 0l:l0   cMMM,
          .MW:    :c:   .Xc.MMMO       'OMMMo
            oM0'    ';dXMM..MMMMWOodkXMMMMM
              cMK0XMMMM.   .Mk   xMMMMMM'
                 WMM.      .X
                           . 

         ██████╗  █████╗ ██████╗ ██╗  ██╗
         ██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝
         ██║  ██║███████║██████╔╝█████╔╝ 
         ██║  ██║██╔══██║██╔══██╗██╔═██╗ 
         ██████╔╝██║  ██║██║  ██║██║  ██╗
         ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  " | lolcat
echo ""
date | lolcat
echo ""
