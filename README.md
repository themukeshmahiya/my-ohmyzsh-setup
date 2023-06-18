# My-ohmyzsh-setup
This is my shell script to install oh my zsh on fedora/centos stream/rhel/alma/rocky linux

# Add a entry for github in host file to stop 443 timeout error
1. sudo nano /etc/hosts
2. 185.199.108.133 raw.githubusercontent.com
3. add line 2 at the end of hosts file
4. now execute the shell script with sudo privilege

# Now add plugin to zshrc file 
1. Run "nano.zshrc"
2. Now replace "plugins=(git)" with "plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-s   earch sudo)"
3. Double quotes are not included.
