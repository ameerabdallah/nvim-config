## NeoVim Configuration

* This is my personal NeoVim configuration.
* Uses `lazy.nvim` as the plugin manager.

## Installation

* Install nightly version of NeoVim via `bob-nvim`:
```bash
# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# If you already have rustup installed, update it
rustup update

# Install bob-nvim
cargo install bob-nvim

# Install nightly version of NeoVim (may need to finick around with PATH afterwards)
bob use nightly
```

* Clone this repository into `~/.config/nvim`:
```bash
git clone https://github.com/ameerabdallah/nvim-config.git ~/.config/nvim
```

* Open NeoVim via `nvim` and run `:Lazy` to install plugins.
* If plugins do not install correctly, ensure you have the `build-essential` package installed (on Debian-based systems):
```bash
sudo apt install build-essential
```
* You may also need to install `nodejs` and `npm` (can use `nvm` to manage versions, select LTS version):
```bash
# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts
```
