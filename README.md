# neovim config

An evolving config for neovim. Originally based off ThePrimeagen's YouTube tutorial: [Your first vimrc](https://www.youtube.com/watch?v=x2QJYq4IX6M).

## Setup

1. Clone this repo into your nvim config directory
2. Install [packer](https://github.com/wbthomason/packer.nvim)
3. Run `:PackerInstall`
4. ???
5. Profit

### Language Servers

- eslint, html - `npm i -g vscode-langservers-extracted`
- [Phan](https://github.com/phan/phan#getting-started)
- [phpactor](https://phpactor.readthedocs.io/en/master/usage/standalone.html#global-installation)
- tailwindcss - `npm install -g @tailwindcss/language-server`
- volar - `npm install -g @volar/vue-language-server`

### Linters

- [PHPMD](https://github.com/phpmd/phpmd) - `composer global require phpmd/phpmd`
- [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer) - `composer global require squizlabs/php_codesniffer`
- [phpstan](https://github.com/phpstan/phpstan) - `composer global require phpstan/phpstan`
- [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) - `composer global require friendsofphp/php-cs-fixer`

### Icon fonts

For display of icons in lualine use [nerd fonts](https://github.com/ryanoasis/nerd-fonts#font-installation).
