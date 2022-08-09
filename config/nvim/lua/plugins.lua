require('bootstrap')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'  -- Packer
    use "EdenEast/nightfox.nvim"  -- Colorsheme
    use 'neovim/nvim-lspconfig' -- Configurations for LSP
end)
