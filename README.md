# Neovim Configuration

This is a personal Neovim configuration built with Lua. It focuses on efficiency, code navigation, and a pleasant aesthetic using the Kanagawa colorscheme.

## 📋 Prerequisites

Before setting up, ensure you have the following installed:

-   **Neovim** (v0.9.0 or later recommended)
-   **Git**
-   **Ripgrep** (required for Telescope live grep)
-   **Nerd Font** (recommended for icons)
-   **C/C++ Compiler** (clang/gcc, for Treesitter parsers)
-   **Node.js & npm** (for some LSPs and tools)

## 🚀 Installation

1.  **Backup your existing configuration:**

    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone the repository:**

    ```bash
    git clone <your-repo-url> ~/.config/nvim
    ```

3.  **Start Neovim:**

    ```bash
    nvim
    ```

    `lazy.nvim` will automatically bootstrap and install all defined plugins. Restart Neovim once the installation is complete.

## 📦 Plugin Manager

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) for package management. Plugins are defined in `lua/plugins/`.

## ⌨️ Keybindings

The leader key is set to `SPACE` (implicit in `lazy` setup or default, usually). *Note: Ensure `<leader>` is mapped if not standard.*

### General

| Key | Action |
| :--- | :--- |
| `<C-s>` | Save file (`:w`) |
| `<Esc>` | Clear search highlights (`:noh`) |
| `Q` | Disable Ex mode (No-op) |
| `K` / `<C-u>` | Move up and center screen |
| `J` / `<C-d>` | Move down and center screen |
| `G` | Move to bottom and center screen |

### Window Management

| Key | Action |
| :--- | :--- |
| `<leader>h` | Vertical split |
| `<leader>j` | Horizontal split and move down |
| `<leader>k` | Horizontal split |
| `<leader>l` | Vertical split and move right |
| `<C-h/j/k/l>` | Navigate between splits (and Tmux panes via `nvim-tmux-navigation`) |
| `<leader>v` | Select line content (excluding indentation) |

### Plugins

#### 🔭 Telescope (Fuzzy Finder)

| Key | Action |
| :--- | :--- |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search content) |
| `<leader>fh` | Help tags |

#### 📁 Oil (File Explorer)

| Key | Action |
| :--- | :--- |
| `-` | Open parent directory / File explorer |
| **In Buffer** | |
| `<CR>` | Select file/directory |
| `<C-w>s` | Open in horizontal split |
| `<C-r>` | Refresh |
| `-` | Go to parent directory |

#### 🧠 AI Assistant (GP.nvim)

| Key | Action |
| :--- | :--- |
| `<CR>` (Normal) | Respond to chat (`:GpChatRespond`) |

#### 🏃 Leap (Motion)

| Key | Action |
| :--- | :--- |
| `f` | Leap forward |
| `F` | Leap backward |
| `t` | Leap forward to |
| `T` | Leap backward to |

#### 🎨 Colorscheme

| Key | Action |
| :--- | :--- |
| `<leader>c` | Toggle between Kanagawa Wave and Lotus themes |

#### 💬 Comments

| Key | Action |
| :--- | :--- |
| `<C-/>` | Toggle comment (Normal & Visual) |

#### 🧩 Snippets & Completion

| Key | Action |
| :--- | :--- |
| `Tab` | Confirm completion / Expand snippet / Jump next |
| `S-Tab` | Jump previous snippet node |
| `<C-p>` / `<C-n>` | Navigate completion list |
| `<Leader>L` | Reload snippets |

## 🔌 Installed Plugins

### Core & UI
-   **lazy.nvim**: Plugin manager.
-   **kanagawa.nvim**: Main colorscheme (Wave/Lotus).
-   **lualine.nvim**: Status line.
-   **focus.nvim**: Auto-resizing of splits.
-   **nvim-tmux-navigation**: Seamless navigation between Vim and Tmux.

### Editing & Coding
-   **nvim-treesitter**: Syntax highlighting and parsing.
-   **nvim-autopairs**: Auto-close brackets/parens.
-   **nvim-surround**: Manage surrounding characters.
-   **Comment.nvim**: Easy commenting.
-   **formatter.nvim**: Code formatting (Lua, C++, CMake, Sh).
-   **targets.vim**: Additional text objects.

### Navigation & Search
-   **telescope.nvim**: Fuzzy finder.
-   **oil.nvim**: File explorer as a buffer.
-   **leap.nvim**: Fast motion plugin.

### LSP & AI
-   **nvim-lspconfig**: LSP configurations.
-   **mason.nvim** / **mason-lspconfig.nvim**: LSP installer/manager.
-   **nvim-cmp**: Autocompletion engine.
-   **LuaSnip**: Snippet engine.
-   **gp.nvim**: AI integration (OpenAI/Anthropic).
-   **copilot.vim**: Github Copilot (Currently **disabled**).

### Language Specific
-   **vimtex**: LaTeX support.
-   **markdown-preview.nvim**: Markdown preview.

## ⚙️ Configuration Details

-   **Settings (`lua/set.lua`):**
    -   Relative line numbers.
    -   4-space tabs (expanded).
    -   Smart indent.
    -   Persistent undo.
    -   Scrolloff: 8 lines.
    -   Spell check enabled (`en_us`).
-   **Formatting:** Auto-formatting on save is enabled for configured languages via `formatter.nvim`.

## 🛠️ Usage Examples

### Editing Latex
The setup includes `vimtex` configured for `lualatex`.
-   Use `vimtex` commands for compilation.
-   Snippets are available via `LuaSnip` (loaded from `~/.config/nvim/LuaSnip/`).

### Switching Themes
Press `<leader>c` to toggle between the dark (Wave) and light/different (Lotus) versions of the Kanagawa theme.

### Using AI
The `gp.nvim` plugin is configured. You can use `<CR>` in normal mode to trigger a response if you are in a chat buffer or context.

---
*Updated automatically by Gemini CLI.*
