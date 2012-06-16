# Hosts completion for ping

known_hosts=("ya.ru" "google.com" "byfly.by")
zstyle ":completion:*:ping:*" hosts ${known_hosts}

# Make dir and cd to it immediately

function mkd { 
  mkdir -p "$1"
  cd "$1" 
} 

# View IP

function myip () {
  wget -O - -q icanhazip.com
}
