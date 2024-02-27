local plenary = require("plenary")

local nvimemmet = require("nvim-emmet")

vim.keymap.set({ "n", "v" }, '<leader>xe', nvimemmet.wrap_with_abbreviation)
