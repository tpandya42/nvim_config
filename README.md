# My Awesome Neovim Configuration

Welcome to my personal Neovim configuration! This setup is designed for a fast, efficient, and feature-rich editing experience, tailored for development.

## Features

This configuration comes with a variety of powerful plugins to enhance your Neovim experience:

-   **Plugin Management:** `lazy.nvim` for efficient and easy plugin management.
-   **LSP Support:** Language Server Protocol integration (`lsp.lua`) for intelligent code completion, diagnostics, and more.
-   **Autocompletion:** `nvim-cmp` for smart and fast code completion.
-   **Fuzzy Finding:** `telescope.nvim` for quick file opening, grep, and more.
-   **File Tree:** `nvim-tree.lua` for a convenient file system explorer.
-   **Status Line:** `lualine.nvim` for a beautiful and informative status line.
-   **Syntax Highlighting:** `nvim-treesitter` for advanced syntax highlighting and parsing.
-   **Theming:** Custom theme (`theme.lua`) for a pleasant visual experience.
-   **Snippets:** `luasnip` for powerful and flexible code snippets.
-   **Buffer Management:** `bufferline.nvim` for an intuitive buffer display.
-   **Autopairs:** `nvim-autopairs` for automatic pairing of brackets, quotes, etc.
-   **Git Integration:** `lazygit` for a seamless Git experience within Neovim.

## Installation

To get started with this Neovim configuration, follow these steps:

### Prerequisites

-   **Git:** Make sure you have Git installed.
-   **Neovim:** Ensure you have Neovim (version 0.8.0 or later recommended) installed.

### Steps

1.  **Backup (Optional):** If you have an existing Neovim configuration, it's a good idea to back it up:
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone the Repository:** Clone this configuration to your `~/.config/nvim` directory:
    ```bash
    git clone https://github.com/tpandya42/nvim_config.git ~/.config/nvim
    ```

3.  **Start Neovim:** Open Neovim. `lazy.nvim` will automatically install all the plugins. This might take a moment depending on your internet connection.
    ```bash
    nvim
    ```

4.  **Install Language Servers (Optional):** Depending on your development needs, you might want to install specific language servers. You can typically do this through `:LspInstall` or by following the instructions in the Neovim LSP documentation.

## Getting Started

Once installed, simply open Neovim by typing `nvim` in your terminal.

### Keybindings

Your keybindings are defined in `lua/keymaps.lua`. I recommend reviewing this file to understand the available shortcuts and how to navigate and interact with Neovim effectively.

### Out-of-the-Box Functionality

Here are a few things you can do straight out of the box:

-   **File Navigation:** Use `nvim-tree.lua` (often toggled with `<leader>e` or similar, check `keymaps.lua`) to browse your file system.
-   **Fuzzy Finding:** Use `telescope.nvim` (e.g., `<leader>ff` for files, `<leader>fg` for grep) to quickly find files or text within your project.
-   **Code Editing:** Benefit from LSP features like autocompletion, diagnostics, and go-to-definition.
-   **Git Workflow:** Access `lazygit` directly from Neovim.

## Customization

Feel free to explore and customize this configuration to fit your personal workflow. Key files to look at include:

-   `lua/config/options.lua`: General Neovim settings.
-   `lua/keymaps.lua`: All your custom keybindings.
-   `lua/plugins/*.lua`: Individual plugin configurations.

### Suggestions are always welcome... :)
