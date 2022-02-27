require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    world = "~/notes/world",
                    gtd = "~/notes/gtd",
                },
                autodetect = true,
                autochddir = true,
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "gtd"
            }
        }
    }
}
