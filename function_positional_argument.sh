#!/usr/bin/zsh

showIdentity() {
    local name=$1
    local age=$2
    echo "$name: $age"
}

showIdentity "Daniel" 18

echo ""

showStat() {
    local name=$(stat --format "%n" function_positional_argument.sh)
    local size=$(stat --format "%F" function_positional_argument.sh)
    local lastAccessed=$(stat --format "%x" function_positional_argument.sh)
    cat << EOF
<---------------  STAT ----------------->
File Name: ${name}
File Size: ${size}
File's Last Accessed: ${lastAccessed:1:18}
<---------------  END  ------------------>
EOF
}

showStat
