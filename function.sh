#!/usr/bin/zsh

up="before"
since="function"
echo $up
echo $since

showupTime() {
    local up=$(uptime -p | cut -c4-)
    local since=$(uptime -s)
    cat << EOF
-----
This machine has been up for ${up}
It has been running since ${since}
-----
EOF
}

showupTime

echo $up
echo $since