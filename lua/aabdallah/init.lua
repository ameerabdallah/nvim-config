vim.g.mapleader = " "
vim.filetype.add({
    pattern = {
        -- Grouping compose patterns for .yml and .yaml
        ['docker%-compose.*%.yml'] = 'yaml.docker-compose',
        ['docker%-compose.*%.yaml'] = 'yaml.docker-compose',
        ['docker%-compose%.yml'] = 'yaml.docker-compose',
        ['docker%-compose%.yaml'] = 'yaml.docker-compose',

        -- Grouping compose patterns for .yml and .yaml
        ['compose.*%.yml'] = 'yaml.docker-compose',
        ['compose.*%.yaml'] = 'yaml.docker-compose',
        ['compose%.yml'] = 'yaml.docker-compose',
        ['compose%.yaml'] = 'yaml.docker-compose',
    }
})
require("aabdallah.remap")
require("aabdallah.set")
require("aabdallah.lsp")
