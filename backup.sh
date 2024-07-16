#!/bin/bash

# Set desktop background and theme
# To set your own background image, replace the path below with the path to your image
# For example: '/home/yourusername/Pictures/your-background-image.png'
gsettings set org.gnome.desktop.background picture-uri-dark '/'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Configure Dash to Dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'

# Disable sleep on AC power
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Set keyboard layouts
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'fr')]"

# Define VS Code extensions to install
extensions=(
    extensions Visual Studio
)

# Define Chrome URLs to open
chrom=(
    URLs in Google Chrome
)

# Install VS Code extensions
for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done

# Open Chrome URLs
for url in "${chrom[@]}"; do
    google-chrome -window "$url"
done

echo "Setup completed successfully."