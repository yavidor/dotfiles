return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      -- follow latest release.
      version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = 'make install_jsregexp',
      lazy = true,
      dependencies = {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
          require('luasnip.loaders.from_vscode').lazy_load { paths = { vim.fn.stdpath 'config' .. '/snippets' } }
        end,
      },
    },
    -- 'rafamadriz/friendly-snippets',
    'folke/lazydev.nvim',
  },
  --- @module 'blink.cmp'
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
    },

    snippets = { preset = 'luasnip' },

    appearance = {
      nerd_font_variant = 'mono',
    },

    completion = {
      -- By default, you may press `<c-space>` to show the documentation.
      -- Optionally, set `auto_show = true` to show the documentation after a delay.
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
      -- menu = {
      --   draw = {
      --     columns = {
      --       { 'label', 'label_description', 'source_name', gap = 2 },
      --       { 'kind_icon', 'kind' },
      --     },
      --   },
      -- },
    },

    sources = {
      default = { 'lsp', 'snippets', 'path', 'lazydev', 'buffer' },
      providers = {
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        snippets = { score_offset = 100 },
        lsp = { score_offset = 50 },
        path = { score_offset = 10 },
        buffer = { score_offset = -10 },
      },
    },

    -- Blink.cmp includes an optional, recommended rust fuzzy matcher,
    -- which automatically downloads a prebuilt binary when enabled.
    --
    -- By default, we use the Lua implementation instead, but you may enable
    -- the rust implementation via `'prefer_rust_with_warning'`
    --
    -- See :h blink-cmp-config-fuzzy for more information
    fuzzy = { implementation = 'lua' },

    -- Shows a signature help window while you type arguments for a function
    signature = { enabled = true },
  },
}
