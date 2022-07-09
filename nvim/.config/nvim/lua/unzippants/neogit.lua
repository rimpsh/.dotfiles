local neogit = require('neogit')

neogit.setup {
    disable_signs = false,
    disable_hint = false,
    disable_context_highlighting = false,
    disable_commit_confirmation = true,
    auto_refresh = true,
    integrations = {
        diffview = true
    },
}
