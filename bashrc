#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
# =========================================================================
# SNOWY LIGHT MODE BASH PROMPT (WITH USER/HOST)
# =========================================================================

# text colors (matching your train station aesthetic)
RESET="\[\e[0m\]"
DARK_IRON="\[\e[38;2;36;41;48m\]"     # #242930 (main text)
FROST_BLUE="\[\e[38;2;126;150;189m\]" # #7e96bd (accent color)
SLATE_GRAY="\[\e[38;2;148;163;184m\]" # #94a3b8 (dimmer elements)

# build the prompt layout
# format: ｢ user │ host │ dir ｣ ❯ 
PS1="${SLATE_GRAY}\u${FROST_BLUE}@${SLATE_GRAY}\h ${FROST_BLUE}\w ${SLATE_GRAY}❯${RESET} "
