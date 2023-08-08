local vf = vim.fn

-- Automatically install packer
local install_path = vf.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vf.empty(vf.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vf.system {
        "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path
    }
    print "Installed packer -- restart Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads plugins whenever this file is edited
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't throw errors
local require_ok, packer = pcall(require, "packer")
if not require_ok then
    print "Unable to load packer!"
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install plugins here
return packer.startup(function(use)
    -- Add plugins here
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"

    -- Color schemes
    use "rktjmp/lush.nvim"
    use "alaric/nortia.nvim"
    use "ellisonleao/gruvbox.nvim"
    use "phha/zenburn.nvim"
    use { "rose-pine/neovim", as = "rose-pine" }
    use "savq/melange"
    use "tanvirtin/monokai.nvim"

    -- Completion plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp"

    -- LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"

    -- Fuzzy-finder
    use { "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } }

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Zen mode
    use "folke/zen-mode.nvim"

    -- Automatically set up plugins after cloning packer.nvim
    -- Must be at the end - after all plugins
    if PACKER_BOOTSTRAP then
        packer.sync()
    end
end)
