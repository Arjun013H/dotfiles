if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
function fish_greeting
  echo ""
end


if [ -d "$HOME/.local/bin" ] ;
  set PATH  "$HOME/.local/bin:$PATH"
end
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
#set XDG_DATA_DIRS "/var/lib/flatpak/exports/share:/home/arjun/.local/share/flatpak/exports/share "
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
set BROWSER brave
######## Alias ########
set office "/app/onlyoffice/DocumentServer/lib/documentserver-example/files/172.18.0.1/"

alias clean='yay -Rns $(yay -Qdtq)'
alias sizeof="du -hsx * | sort -rh"
alias homevol='cd "/run/media/arjun/New Volume"'
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias gui='gitui'
alias l='ls'
alias mountup='sudo mkdir -p /run/media/arjun/New\ Volume/ && sudo mount /dev/nvme0n1p2 /run/media/arjun/New\ Volume/'
alias vim='nvim'
alias mirrors="sudo reflector --verbose --latest 5 --country 'India' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias maintenance="yay -Sc && sudo pacman -Scc"
alias update="yay -Syu"
alias musica="ncmpcpp"
alias msetup='termite -e cava & termite -e ncmpcpp  & musica'
alias notes='cd "/run/media/arjun/New Volume/Notes/Year 2/4th sem"'
alias ctf='cd "/run/media/arjun/New Volume/Shared/CTF"'
alias codedir='cd "/run/media/arjun/New Volume/code and stuff"'
# confirm before overwriting something
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias py='python'
alias ls='lsd  --group-directories-first'
alias ll='lsd -la --group-directories-first'
alias of='set var  $(fzf) &&  xdg-open $var'
alias battary='acpi'
alias nexttail='npx create-next-app@latest --example with-tailwindcss'
alias imview='kitty +kitten icat'
alias gitdir='cd "/run/media/arjun/New Volume/code and stuff/git"'
alias docker='sudo docker '
#LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
#~/.local/bin/colorscript -r
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

fish_add_path /home/arjun/.spicetify
