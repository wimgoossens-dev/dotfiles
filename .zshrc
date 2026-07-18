# ==========================================
# 1. Environment Variables & Inputs
# ==========================================
export GIT_ASKPASS=vscode

# Custom Keyboard Keybind Fix (e.g. Ctrl + Backspace)
bindkey '^[[32~' backward-kill-word

# ==========================================
# 2. Custom Aliases
# ==========================================
alias geany="GTK_THEME=Adwaita:dark geany"

# ==========================================
# 3. System Paths
# ==========================================
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

export PATH="/home/w1g0/.pixi/bin:$PATH"
