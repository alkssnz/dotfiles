#!/bin/sh

files=$(fd -H -t f . $HOME/local/dotfiles/files)

for file in $files; do 
	src_file=$(printf $file | sed 's/local\/dotfiles\/files\///')
	dst_file=$file
	src_mod=$(stat -c "%Y" $src_file)
	dst_mod=$(stat -c "%Y" $dst_file)
	if [ $src_mod -ne $dst_mod ]; then
		echo "$src_file -> $dst_file"
		cp -a $src_file $dst_file
	fi
done

#fd -H -E .git -E pull_configs.sh -E "*.swp" -t f | xargs -I FILE cp -a $HOME/"FILE" $HOME/local/dotfiles/"FILE"
