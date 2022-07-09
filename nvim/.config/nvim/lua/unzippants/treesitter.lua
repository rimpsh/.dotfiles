require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "go",
        "typescript",
        "tsx",
        "lua",
        "norg",
        "json",
        "toml",
        "html",
    },
    ignore_install = { "" },

    highlight = {
		enable = true,
		disable = { "css" },
    },

    textobjects = {
        move = {
          enable = true,
          set_jumps = true,

          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
          },
        },

        select = {
          enable = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",

            ["ac"] = "@conditional.outer",
            ["ic"] = "@conditional.inner",

            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            },
        },
        swap = {
            enable = true,
            swap_next = {
              ["<leader>f"] = "@function.outer",
              ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>F"] = "@function.outer",
              ["<leader>A"] = "@parameter.inner",
            },
        },
    },
}
