local cmp = require'cmp'

cmp.setup({
    snippet = {
      expand = function(args)
        -- require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-e>'] = cmp.mapping{
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      },
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
     else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    },
    sources = {
     { name = 'nvim_lsp', keyword_length = 3, max_item_count = 5, priortiy_weight = 1},
     -- { name = 'luasnip', keyword_length = 2, max_item_count = 5, priority_weight = 2 },
    { name = 'buffer', keyword_length = 3, max_item_count = 5, priority_weight = 3 },
    { name = 'path', keyword_length = 3, max_item_count = 5, priority_weight = 4},
    },
    experimental = {
      native_menu = false,
      ghost_text = true,
    }
})
