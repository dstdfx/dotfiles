# Ensure user functions dir is first in autoload path
if not contains -- $HOME/.config/fish/functions $fish_function_path
    set -U fish_function_path $HOME/.config/fish/functions $fish_function_path
end
