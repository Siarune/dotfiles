#aliases
alias x = exit
alias c = clear
alias r = source ~/.config/nushell/config.nu
alias p = paru
alias up = garuda-update
alias w = cd ~/Documents/Projects
alias sd = cd ~/Documents/Projects/siarune.dev
alias hx = helix
alias link = ^ln -s
# alias nuedit = hx ~/.config/nushell/config.nu
alias nuedit = nvim ~/.config/nushell/config.nu
alias aliases = nvim ~/.config/nushell/aliases.nu
alias path = echo $env.PATH
alias trash = rm -t
alias pn = pnpm

#Dotdrop
alias dd = dotdrop
alias ddim = dotdrop import
alias ddex = dotdrop install

# alias hgc = hg convert --datesort . dist-mercurial
# alias info = [[(sys).host.sessions.name.2] [(sys).host.hostname] [(sys).host.name] [(sys).host.kernel_version] [(sys).host.uptime]] | flatten | table
