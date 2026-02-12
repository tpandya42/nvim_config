# Project Overview: Neovim Configuration

This directory contains a personal Neovim configuration designed for a fast, efficient, and feature-rich editing experience, tailored for development. It leverages Lua for configuration and `lazy.nvim` for plugin management.

## Key Features

The configuration includes a variety of plugins and settings to enhance the Neovim experience:

*   **Plugin Management:** `lazy.nvim`
*   **LSP Support:** Language Server Protocol integration for intelligent code completion and diagnostics.
*   **Autocompletion:** `nvim-cmp`
*   **Fuzzy Finding:** `telescope.nvim`
*   **File Tree:** `nvim-tree.lua`
*   **Status Line:** `lualine.nvim`
*   **Syntax Highlighting:** `nvim-treesitter`
*   **Theming:** Custom theme (`theme.lua`)
*   **Snippets:** `luasnip`
*   **Buffer Management:** `bufferline.nvim`
*   **Autopairs:** `nvim-autopairs`
*   **Git Integration:** `lazygit`

## Key Files

*   `init.lua`: The main entry point for the Neovim configuration.
*   `lazy-lock.json`: Lock file managed by `lazy.nvim` for plugin versions.
*   `lua/globals.lua`: Contains global variables or general settings.
*   `lua/keymaps.lua`: Defines custom keybindings for various Neovim functionalities and plugins.
*   `lua/config/lazy.lua`: Configuration for the `lazy.nvim` plugin manager, including plugin specifications.
*   `lua/config/options.lua`: General Neovim editor settings and options.
*   `lua/plugins/`: This directory contains individual Lua files for configuring each plugin (e.g., `autopairs.lua`, `lsp.lua`, `telescope.lua`, `theme.lua`).

## Usage

### Installation

To use this Neovim configuration:

1.  **Prerequisites:** Ensure Git and Neovim (v0.8.0 or later) are installed.
2.  **Backup (Optional):** If you have an existing Neovim configuration, back it up:
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```
3.  **Clone the Repository:** Clone this configuration to `~/.config/nvim`:
    ```bash
    git clone https://github.com/tpandya42/nvim_config.git ~/.config/nvim
    ```
4.  **Start Neovim:** Open Neovim. `lazy.nvim` will automatically install all plugins.
    ```bash
    nvim
    ```
5.  **Install Language Servers (Optional):** Install specific language servers as needed (e.g., via `:LspInstall` or LSP documentation).

### Getting Started

After installation, launch Neovim with `nvim`. Keybindings are defined in `lua/keymaps.lua`. The configuration provides out-of-the-box functionality for file navigation, fuzzy finding, code editing with LSP features, and Git workflow integration.

### Customization

Users can customize the configuration by modifying:

*   `lua/config/options.lua`: For general Neovim settings.
*   `lua/keymaps.lua`: For custom keybindings.
*   `lua/plugins/*.lua`: For individual plugin configurations.