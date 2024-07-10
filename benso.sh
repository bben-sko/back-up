#!/bin/bash
gsettings set org.gnome.desktop.background picture-uri-dark '/image.png'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'fr')]"

extensions=(

extensions vs.code 

)
chrom=(
    links web site 
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done
for chrom in "${chrom[@]}"; do
     google-chrome -window "$chrom"
done
echo "successfully."