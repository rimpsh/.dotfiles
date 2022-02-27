local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
    enabled = function()
      -- disable completion in comments
      local context = require 'cmp.config.context'
      -- keep command mode completion enabled when cursor is in a comment
      if vim.api.nvim_get_mode().mode == 'c' then
        return true
      else
        return not context.in_treesitter_capture("comment")
          and not context.in_syntax_group("Comment")
      end
    end,
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol',
          maxwidth = 50,
        })
    },
    mapping = {
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),

      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
          feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
          cmp.complete()
        else
          fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
          feedkey("<Plug>(vsnip-jump-prev)", "")
        end
      end, { "i", "s" }),
    },
    sources = {
     { name = 'nvim_lsp', priortiy_weight = 1},
     -- { name = 'luasnip', keyword_length = 2, max_item_count = 5, priority_weight = 2 },
    { name = 'buffer', priority_weight = 3 },
    { name = 'path', priority_weight = 4},
    },
    experimental = {
      native_menu = false,
      ghost_text = true,
    },
})

-- set configuration for neorg files
cmp.setup.filetype('norg', {
  sources = cmp.config.sources({
    { name = 'neorg' },
  }, {
    { name = 'buffer' },
  })
})
