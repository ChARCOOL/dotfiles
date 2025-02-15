require 'impatient'

local g = vim.g

local map = require('j.utils').map

-- Disable filetype plugin, use the new Lua version
g.do_filetype_lua = 1
g.did_load_filetypes = 0

-- Map space to leader
map('n', '<space>', '<nop>')
map('v', '<space>', '<nop>')
g.mapleader = ' '
g.maplocalleader = '\\'

-- My custom configurations
require 'j.settings'
require 'j.commands'
require 'j.autocmds'
require 'j.plugins'
require 'packer_compiled'
require 'j.mappings'
require 'j.abbreviations'
require 'j.statusline'
require 'j.winbar'
require 'j.tabline'
require 'j.file_info'
require 'j.terminal'
require 'j.folding'
