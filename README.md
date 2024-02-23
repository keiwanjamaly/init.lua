## Keymaps

- 'K/J' as well as '<C-u>/<C-d>' move up and down in the Buffer and centeres the cursor position.


## Plugins
### colorscheme
The colorscheme used here are the [vim moonfly colors](https://github.com/bluz71/vim-moonfly-colors)

### oil
[Oil](https://github.com/stevearc/oil.nvim) a file explorer for vim, which allows you to edit files like a vim buffer. 
It is configured, such that 
- `-` opens up the file explorer and goes to the parent directory
- `<C-r>` refreshes the directory

### focus
[Focus](https://github.com/nvim-focus/focus.nvim) automatically resizes the window pane. There are no keys configured here. 

### brackets
There are three plugins handling bracket behaviour 
1. [autoclode](https://github.com/m4xshen/autoclose.nvim) 
2. [nvim-surround](https://github.com/kylechui/nvim-surround) 

### nvim-tmux-navigator
The [nvim-tmux-navigator](https://github.com/alexghergh/nvim-tmux-navigation) allows for a fast navigation between tmux and neovim panes. 
The keybindings are
1. '<C-h>' left
2. '<C-j>' down
3. '<C-k>' up
4. '<C-l>' right

The tmux config must containt following code
```
# Smart pane switching with awareness of Vim splits.
# decide whether we're in a Vim process
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"

bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h' 'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j' 'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k' 'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l' 'select-pane -R'

bind-key -T copy-mode-vi 'C-h' select-pane -L
bind-key -T copy-mode-vi 'C-j' select-pane -D
bind-key -T copy-mode-vi 'C-k' select-pane -U
bind-key -T copy-mode-vi 'C-l' select-pane -R
```

### comment
The [comment](https://github.com/numToStr/Comment.nvim) plugin is configured in such a way that `<C-/>` toggles between comments.

### treesitter
[Tresitter](https://github.com/nvim-treesitter/nvim-treesitter) is a parser and syntax highliter for everything :)

### telescope
[Telescope](https://github.com/nvim-telescope/telescope.nvim) quickly allows to look up files. It's keybindings are
1. `<leader>ff` fuzzy find files
2. `<leader>fg` fuzzy find grep content inside files
3. `<leader>fh` fuzzy find help files
