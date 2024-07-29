# A script for reference on how to install the dotfiles from the gitrepo

pushd $HOME
echo ".cfg" >> .gitignore
mkdir .cfg
git clone https://github.com/erikd234/dotfiles.git --bare $HOME/.cfg
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
source .bashrc
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
#Places the files in the work-tree
#If you see errors for this , delete the files then run
# config checkout until the files are deleted
# DONT run the whole script again I dont know what will happen
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
popd

