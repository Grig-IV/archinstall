require('bootstrap')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'  -- packer
    use "EdenEast/nightfox.nvim"  -- colorsheme

    if packer_bootstrap then
        require('packer').sync()
    end
end)
