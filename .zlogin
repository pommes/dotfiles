PATH=/usr/local/bin:$PATH
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.bu/bin" ] ; then
    PATH="$HOME/.bu/bin:$PATH"
fi
