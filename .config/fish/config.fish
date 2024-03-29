function hybrid_bindings --description "Vi-style bindings that inherit emacs-style bindings in all modes"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
end

set -g fish_key_bindings hybrid_bindings

fish_hybrid_key_bindings

alias vi nvim

bind \cn accept-autosuggestion

fish_add_path ~/.composer/vendor/bin
fish_add_path ~/.cargo/bin


alias tre 'fd --type f --hidden --exclude .git | tree --fromfile'

#alias nsyn 'bash ~/c/norns-sync.sh'
#alias nwatch 'nodemon -e lua -x ~/c/norns-sync.sh'

function nsyn
    bash ~/c/norns-sync.sh $argv
end
function nwatch
    nodemon -e lua -x ~/c/norns-sync.sh $argv
end
