Vim�UnDo� F�8ܟo��A���6��sE�{ĥT�U;Z���   J       -                           b��r   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             b���     �               J   M = {}   M.options = {      -- chadrc   9   -- load your options here or load module with options1      user = function()   <     vim.opt.fileencodings = "ucs-bom,utf-8,gbk,big5,latin1"        vim.opt.expandtab = true        vim.bo.swapfile = false        vim.opt.shiftwidth = 4        vim.opt.pumheight = 20        vim.opt.scrolloff = 5   =     vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir'      end,          nvChad = {         -- updater   6      update_url = "https://github.com/NvChad/NvChad",         update_branch = "main",      },   }       M.plugins = {      override = {   ,     ["nvim-treesitter/nvim-treesitter"] = {   `        ensure_installed = { "java", "javascript", "python", "c", "cpp", "bash", "lua", "json"},        },        ["hrsh7th/nvim-cmp"] = {           window = {              completion = {   Q              --border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}              }            },           experimental = {               ghost_text = true,   	        }        }      },      remove = {        "folke/which-key.nvim",         "ray-x/lsp_signature.nvim",         "kyazdani42/nvim-tree.lua",        "akinsho/bufferline.nvim",        "NvChad/nvterm",        "SmiteshP/nvim-gps",      },          options = {         lspconfig = {   N         setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file         },         statusline = {   :         separator_style = "block", -- default/round/block         },      },       !   -- add, modify, remove plugins   #   user = require "custom.plugins",   }       ---- UI -----   M.ui = {      hl_override = {   "      LineNr = { fg = "#252525" },   &      CursorLineNr = { fg = "#c6c6c6"}      },      changed_themes = {},   .   theme_toggle = { "vsc_dark", "vsc_light" },   (   theme = "vsc_light", -- default theme      transparency = false,   }       &M.mappings = require "custom.mappings"       return M5�5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   J    5��    ,                      v                     �    ,                     w                     �    ,                      v                     5�_�                    -        ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   K       �   -   .   K    5��    ,                      v                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   K      NvChad/base465��    ,                     �                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   K      NvChad/base46""�   -   .   K    5��    ,                     �                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   K      NvChad/base46"NvChad/base46"5��    ,                     |                     5�_�                    -        ����                                                                                                                                                                                                                                                                                                                                                             b���     �   ,   .   K      NvChadbase46"NvChad/base46"5��    ,                      v                     5�_�      	              -        ����                                                                                                                                                                                                                                                                                                                                                             b���    �   ,   .   K      "NvChad/base46"5��    ,                      v                     �    ,                    z                    �    ,                    z                    5�_�      
           	   -       ����                                                                                                                                                                                                                                                                                                                                                             b���    �   ,   .   K           "NvChad/base46"5��    ,                     �                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             b���    �               K   M = {}   M.options = {      -- chadrc   9   -- load your options here or load module with options1      user = function()   <     vim.opt.fileencodings = "ucs-bom,utf-8,gbk,big5,latin1"        vim.opt.expandtab = true        vim.bo.swapfile = false        vim.opt.shiftwidth = 4        vim.opt.pumheight = 20        vim.opt.scrolloff = 5   =     vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir'      end,          nvChad = {         -- updater   6      update_url = "https://github.com/NvChad/NvChad",         update_branch = "main",      },   }       M.plugins = {      override = {   ,     ["nvim-treesitter/nvim-treesitter"] = {   `        ensure_installed = { "java", "javascript", "python", "c", "cpp", "bash", "lua", "json"},        },        ["hrsh7th/nvim-cmp"] = {           window = {              completion = {   Q              --border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}              }            },           experimental = {               ghost_text = true,   	        }        }      },      remove = {        "folke/which-key.nvim",         "ray-x/lsp_signature.nvim",         "kyazdani42/nvim-tree.lua",        "akinsho/bufferline.nvim",        "NvChad/nvterm",        "SmiteshP/nvim-gps",        "NvChad/base46",      },          options = {         lspconfig = {   N         setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file         },         statusline = {   :         separator_style = "block", -- default/round/block         },      },       !   -- add, modify, remove plugins   #   user = require "custom.plugins",   }       ---- UI -----   M.ui = {      hl_override = {   "      LineNr = { fg = "#252525" },   &      CursorLineNr = { fg = "#c6c6c6"}      },      changed_themes = {},   .   theme_toggle = { "vsc_dark", "vsc_light" },   (   theme = "vsc_light", -- default theme      transparency = false,   }       &M.mappings = require "custom.mappings"       return M5�5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             b���     �               K   M = {}   M.options = {      -- chadrc   9   -- load your options here or load module with options1      user = function()   <     vim.opt.fileencodings = "ucs-bom,utf-8,gbk,big5,latin1"        vim.opt.expandtab = true        vim.bo.swapfile = false        vim.opt.shiftwidth = 4        vim.opt.pumheight = 20        vim.opt.scrolloff = 5   =     vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir'      end,          nvChad = {         -- updater   6      update_url = "https://github.com/NvChad/NvChad",         update_branch = "main",      },   }       M.plugins = {      override = {   ,     ["nvim-treesitter/nvim-treesitter"] = {   `        ensure_installed = { "java", "javascript", "python", "c", "cpp", "bash", "lua", "json"},        },        ["hrsh7th/nvim-cmp"] = {           window = {              completion = {   Q              --border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}              }            },           experimental = {               ghost_text = true,   	        }        }      },      remove = {        "folke/which-key.nvim",         "ray-x/lsp_signature.nvim",         "kyazdani42/nvim-tree.lua",        "akinsho/bufferline.nvim",        "NvChad/nvterm",        "SmiteshP/nvim-gps",        "NvChad/base46",      },          options = {         lspconfig = {   N         setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file         },         statusline = {   :         separator_style = "block", -- default/round/block         },      },       !   -- add, modify, remove plugins   #   user = require "custom.plugins",   }       ---- UI -----   M.ui = {      hl_override = {   "      LineNr = { fg = "#252525" },   &      CursorLineNr = { fg = "#c6c6c6"}      },      changed_themes = {},   .   theme_toggle = { "vsc_dark", "vsc_light" },   (   theme = "vsc_light", -- default theme      transparency = false,   }       &M.mappings = require "custom.mappings"       return M5�5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b��=    �   ,   .   K           "NvChad/base46",5��    ,                     {                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b��W     �   ,   .   K           --"NvChad/base46",5��    ,                     {                     5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             b��W    �   ,   .   K           -"NvChad/base46",5��    ,                     {                     5�_�                     -       ����                                                                                                                                                                                                                                                                                                                                                             b��q   	 �   ,   -               "NvChad/base46",5��    ,                      v                     5��