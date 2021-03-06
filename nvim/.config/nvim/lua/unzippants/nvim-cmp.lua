local cmp = require'cmp'
local lspkind = require('lspkind')

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

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
      ['<C-j>'] = cmp.mapping.scroll_docs(-4),
      ['<C-k>'] = cmp.mapping.scroll_docs(4),
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
      end, { "i", "s" })
    },
    sources = {
     { name = 'nvim_lsp', priortiy_weight = 1},
     -- { name = 'luasnip', keyword_length = 2, max_item_count = 5, priority_weight = 2 },
    { name = 'buffer', priority_weight = 3 },
    { name = 'path', priority_weight = 4},
    },
    view = {
      entries = 'native'
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
