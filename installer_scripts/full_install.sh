#! /bin/bash

echo -e 'Creating a Symlink for forge to usr/local/bin'

ln -s ~/GitRepos/scripts/forge /usr/local/bin/forge

echo -e 'Starting Full Install'

source $HOME/GitRepo/scripts/installer_scripts/base_package_install.sh

source $HOME/GitRepo/scripts/installer_scripts/doom_emacs.sh

source $HOME/GitRepo/scripts/installer_scripts/nvidia_drivers.sh

source $HOME/GitRepo/scripts/installer_scripts/spacevim.sh

source $HOME/GitRepo/scripts/installer_scripts/rust_installer.sh

