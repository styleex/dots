git clone https://github.com/canha/golang-tools-install-script.git /tmp/dots_goinstaller
chmod +x /tmp/dots_goinstaller/main.sh
/tmp/dots_goinstaller/main.sh --remove
/tmp/dots_goinstaller/main.sh --64
rm -rf /tmp/dots_goinstaller

# FIX main.sh
mkdir -p "$HOME"/go/{src,pkg,bin}
rm -rf "$HOME/go/{sr*"
