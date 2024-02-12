#!/usr/bin/zsh

STATIONARY=(Pencil Pen Eraser Highliter Marker Book)

for item in ${STATIONARY[@]};
    do
        count=$(echo -n $item | wc -c)

        if [ $count -gt 7 ]; then
            echo "$item \t: $count characters found"
        else 
            echo "$item \t\t: $count characters found"
        fi
    done
