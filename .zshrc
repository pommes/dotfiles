export ZSH=$HOME/.zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Own docker scripts
export PATH=/bu/opt/docker/bin:$PATH

# For mosh
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load and run compinit
autoload -U compinit
compinit -i

# For fuck command
eval $(thefuck --alias)
