#!/bin/bash
# Check if git is installed
if [[ ! $(which git) ]] ; then
	echo "You need to install git";
	exit 1;
fi

PLUGINPATH="$HOME/.vim/pack/plugins/start";
if [[ ! -d "$PLUGINPATH" ]] ; then
	mkdir -p $PLUGINPATH;
fi
for plugin in $(cat $PWD/plugins) ; do 
	plugdir=$(echo $plugin | cut -d/ -f2)
	cd $PLUGINPATH;
	if [[ ! -d $HOME/.vim/pack/plugins/start/$plugdir ]] ; then
		echo -n "Installing $plugin "
		git clone https://github.com/${plugin} -q
		echo "ok"
  elif [[ -d $HOME/.vim/pack/plugins/start/$plugdir ]] ; then
    echo -n "Plugin $plugin already installed! Remove [y/N] "
    read optRemove
    if [[ $optRemove == 'y' ]] ; then
      rm "$HOME/.vim/pack/plugins/start/$plugdir -rf"
    fi
	fi
done
		
