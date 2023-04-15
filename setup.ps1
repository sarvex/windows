# Fetch windows configuration
cd ~
git init
git remote add origin https://github.com/sarvex/windows.git
git fetch origin
git checkout -t origin/master

# Terminal Icons
Install-Module -Name Terminal-Icons -Repository PSGallery

# Install apps
winget import --import-file "$HOME\winget.json"
iwr -useb get.scoop.sh | iex
scoop import "$Home\scoop.json"

# Install SpaceVim
$space_vim = "$env:LOCALAPPDATASpaceVim"
git clone https://github.com/SpaceVimSpaceVim.git $space_vim
cmd /c mklink /J "$HOME\vimfiles" $space_vim

# Install AstroNvim
$astro_nvim = "$env:LOCALAPPDATA\nvim"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim $astro_nvim
git clone --depth 1 https://github.com/sarvex/astro-user "$astro_nvim\lua\user"