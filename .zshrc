# ==========================================
# 1. Environment Variables
# ==========================================
export GIT_ASKPASS=vscode

# ==========================================
# 2. Inputs
# ==========================================
# This puts a ctrl + backspace macro on backspace
bindkey '^[[32~' backward-kill-word

# ==========================================
# 3. Custom Aliases
# ==========================================
# Geany editor in dark mode
alias geany="GTK_THEME=Adwaita:dark geany"

# ==========================================
# 4. System Paths
# ==========================================
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

# ==========================================
# 5. Shell tweaks
# ==========================================
# Wrapper that puts [guix] in prompt when in the environment while using z-shell
guix()  {
	        if [[ "$1" == "shell" ]]; then
	          shift 2
	          if [[ "$*" == *"--"* ]]; then
	            command guix shell "$@"
	          else
	            command guix shell "$@" -- zsh -c "PROMPT='%F{yellow}[guix]%f [%n@%m]%~%# ' zsh -i"
	          fi
	        else
	          command guix "$@"
	        fi
	      }
