#!/bin/bash

echo "*******************************************************"
echo "****************** Fixing Rofi Theme ******************"
echo "*******************************************************"
echo ""
echo ""


dir="$HOME/.config/rofi"

themes=("default" "beach" "forest" "manhattan" "nordic" "spark" "wave")
apps=("launcher" "networkmenu" "powermenu" "mpd" "network" "screenshot")
themes_len=${#themes[@]}
apps_len=${#apps[@]}

fix="
element-text, element-icon {
    background-color: inherit;
    text-color:       inherit;
}
"


for (( i=0; i<$themes_len; i++ ))
do
    echo "## patching ${themes[i]} theme"
    for (( j=0; j<$apps_len; j++ ))
    do
        echo "
element-text, element-icon {
    background-color: inherit;
    text-color:       inherit;
}
" >> $dir/${themes[i]}/${apps[j]}.rasi
    done
    
done

echo ""
echo ""
echo "Done patching. You may have to relogin to see the effect"

