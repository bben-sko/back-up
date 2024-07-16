# System Setup and Configuration Script

This script automates the process of setting up a development environment on a Linux system using GNOME. It configures system settings, installs Visual Studio Code extensions, and opens useful URLs in Google Chrome.

## Features

1. **System Configuration**
   - Sets desktop background
   - Configures dark theme
   - Adjusts Dash to Dock settings
   - Disables sleep on AC power
   - Sets up US and French keyboard layouts

2. **Installs extensions Visual Studio**


3. **Opens URLs in Google Chrome**
  

## Usage

1. Ensure you have the necessary permissions to modify system settings and install VS Code extensions.

2. Make the script executable:
   ```
   chmod +x setup_script.sh
   ```
3. Run the script:
   ```
   ./setup_script.sh
   ```
4. Define VS Code extensions to install
 To find more extensions:
   - Open Terminal:
   - To search for extensions, use: 
   ```
   code --list-extensions
   ```
   - To search for a specific extension, use: 
   ```
   code --list-extensions | grep <search-term>
   ```
   - For example, to search for Python extensions: 
   ```
   code --list-extensions | grep python
   ```
## Customization

- Modify the `extensions` array to add or remove VS Code extensions.
- Adjust the `urls` array to change which websites are opened in Chrome.

## Requirements

- GNOME desktop environment
- Visual Studio Code
- Google Chrome

## Note

Always review scripts before running them, especially those that modify system settings. Ensure you understand the changes being made and that they align with your needs.

## Contributing

Feel free to fork this repository and submit pull requests to suggest improvements or add new features.
