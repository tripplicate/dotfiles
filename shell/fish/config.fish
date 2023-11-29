# omf theme bobthefish
set -g fish_greeting

set -g theme_color_scheme zenburn 
set -g theme_display_git_default_branch yes

set -g theme_project_dir_length 0
set -g fish_prompt_pwd_dir_length 0

set -g theme_newline_cursor yes
set -g theme_newline_prompt ': '

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# pnpm
set -gx PNPM_HOME "/home/evanson/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
