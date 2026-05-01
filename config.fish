set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# terminal setups
set -U fish_greeting

if type -q brew
    eval "$(brew shellenv)"
end


# Alias
alias lg="lazygit"
alias ls="eza"
alias l="eza"
alias ll="eza -l"
alias less="bat"
alias la="eza -a"
alias zl="zellij"
alias kc="kubectl"
alias gpt="git push && git push --tags"
alias code="cursor"
alias lzd='lazydocker'
alias lemmerun='xattr -dr com.apple.quarantine'

abbr -a fih fish
abbr -a sl ls

# Personal bins
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.cargo/bin/"

# Propmt setups
starship init fish | source
zoxide init fish | source

if type -q mise
mise activate fish | source # added by https://mise.run/fish
end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
