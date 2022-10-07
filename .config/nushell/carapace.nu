module carapace {
  def "nu-complete carapace" [line: string, pos: int] {
    let words = ($line | str substring [0 $pos] | split row " ")
    if ($line | str substring [0 $pos] | str ends-with " ") {
      carapace $words.0 nushell ($words | append "") | from json
    } else {
      carapace $words.0 nushell $words | from json
    }
  }

  export extern "acpi" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "acpid" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "adb" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "alsamixer" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ant" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "aplay" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "apropos" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "apt-cache" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "apt-get" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "arecord" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "asciinema" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "autoconf" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "avdmanager" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "awk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "aws" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "az" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "baobab" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "basename" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "bash" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "bat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "batdiff" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "batgrep" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "batman" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "bats" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "bc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "black" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "boundary" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "brew" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "brotli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "calibre" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "carapace" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cargo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cfdisk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cheese" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chgrp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chmod" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chown" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chpasswd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chromium" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chroot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "chsh" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "circleci" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cksum" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamav-config" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamav-milter" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clambc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamconf" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamdscan" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamdtop" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamonacc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamscan" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "clamsubmit" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cmus" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "code-insiders" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "code" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "codecov" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "comm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "conda" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "conky" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "consul" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "coredumpctl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "csplit" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "csview" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cura" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "curl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "cut" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "darktable-cli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "darktable" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dart" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "deno" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "df" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dfc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dict" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "diff3" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "diff" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dig" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dir" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dircolors" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dirname" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dlv" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dmenu" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dmesg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dms" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dnsmasq" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "docker-buildx" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "docker-compose" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "docker-scan" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "docker" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dockerd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "doctl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "dos2unix" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "downgrade" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "egrep" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "electron" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "elvish" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "envsubst" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "exa" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "expand" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "expr" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "faas-cli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "factor" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fakechroot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fakeroot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fc-cache" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fc-cat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fc-conflist" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fc-list" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fdisk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ffmpeg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fgrep" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "file" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "firefox" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fish" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "flutter" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fold" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ftp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ftpd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "fzf" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gatsby" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gcloud" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gdb" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gdu" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gftp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gh" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gimp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "git" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gitk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "glab" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "glow" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gnome-keyring-daemon" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gnome-keyring" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gnome-maps" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gnome-terminal" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "go-carpet" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "go" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gocyclo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gofmt" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "google-chrome" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "goreleaser" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "goweight" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gparted" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gpasswd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gpg-agent" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gpg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gradle" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "grep" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "groupadd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "groupdel" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "groupmems" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "groupmod" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "groups" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gulp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gunzip" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "gzip" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "halt" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "head" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "helix" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "helm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "helmsman" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hexchat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hexdump" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hostid" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hostname" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "htop" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "http" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "https" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hugo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hwinfo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "hx" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3-scrot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3exit" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3lock" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3status-rs" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "i3status" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "id" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "inkscape" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "install" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ion" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "jar" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "java" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "javac" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "journalctl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "jq" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "julia" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kak-lsp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kak" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "killall" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kmonad" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kompose" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kotlin" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kotlinc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ktlint" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kubeadm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "kubectl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lazygit" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lf" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lightdm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "link" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ln" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lnav" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "locale" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "localectl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "logname" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lsb_release" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lsblk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lscpu" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lslocks" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lslogins" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lsmem" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lsns" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lsusb" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lua" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lzcat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "lzma" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "make" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "makepkg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "man" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mcomix" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "md5sum" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mdbook" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "meld" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "micro" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "minikube" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mkfifo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mkfs" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mknod" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mkswap" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mktemp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "modinfo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "modprobe" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "more" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mosh" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mount" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mousepad" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mpv" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "mvn" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nano" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ncdu" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "neomutt" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "netcat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "newman" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nfpm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ng" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nice" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nix-channel" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nmcli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "node" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nohup" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nomad" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "npm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ntpd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nu" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "nvim" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "od" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "openscad" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "optipng" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "packer" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pacman" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "palemoon" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pamac" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pandoc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pass" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "passwd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "paste" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "patch" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pathchk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pcmanfm" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pgrep" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "picard" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ping" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pinky" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pip" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pkg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pkill" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "podman" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "poweroff" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pr" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "prettybat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "prettyping" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "printenv" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ptx" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pulumi" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pwait" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "pwd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "python" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "qmk" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "qrencode" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "qutebrowser" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ranger" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "readlink" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "reboot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "restic" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "resume-cli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rifle" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rmdir" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rmmod" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rsync" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rustc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "rustup" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "scp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "scrot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sdkmanager" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sed" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "semver" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sftp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sha1sum" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sha256sum" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "shred" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "shutdown" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "speedtest-cli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ssh-agent" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ssh-copy-id" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ssh" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "st" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "starship" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "stat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "staticcheck" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "strings" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "stty" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "su" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sudo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sudoedit" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sudoreplay" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sulogin" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "supervisord" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "svg-term" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sway" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swaybar" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swaybg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swayidle" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swaylock" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swaymsg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "swaynag" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sync" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "sysctl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "systemctl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tac" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tail" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tar" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "task" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tee" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "telnet" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "termux-apt-repo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "terraform" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "terragrunt" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tesseract" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tig" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tinygo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tldr" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tmate" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tmux" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "toit.lsp" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "toit.pkg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "top" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tor-browser" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tor-gencert" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tor-print-ed-signing-cert" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tor-resolve" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "torsocks" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tr" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "traefik" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tree" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "truncate" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "ts" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tsc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tshark" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tsort" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "tty" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "turbo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "umount" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "uname" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unbrotli" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unexpand" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unlink" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unlzma" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unxz" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "unzip" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "upower" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "uptime" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "upx" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "useradd" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "userdel" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "usermod" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "users" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vagrant" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vault" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vdir" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vercel" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vi" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "viewnior" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "visudo" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vivid" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "vlc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "volta" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "w" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "watchexec" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "watchgnupg" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "waypoint" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wc" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wget" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "whereis" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "who" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "whoami" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wine" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wineboot" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "winepath" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wineserver" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "winetricks" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wire" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "wireshark" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "woeusb" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xargs" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xbacklight" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xdotool" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xonsh" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xz" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "xzcat" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "yes" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "yj" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "youtube-dl" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "zathura" [
    ...args: string@"nu-complete carapace"
  ]
  export extern "zcat" [
    ...args: string@"nu-complete carapace"
  ]

}
use carapace *

