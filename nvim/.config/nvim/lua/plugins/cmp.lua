return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({

	      formatting = {
  format = function(entry, item)

    -- Show Emmet as "Emmet" (emmet-ls reports kind=Snippet)
    if entry.source.name == "nvim_lsp"
      and item.kind == "Snippet"
      and vim.lsp.get_clients({ bufnr = 0, name = "emmet_ls" })[1]
    then
      item.kind = "Emmet"
    end

    -- Only rename LuaSnip snippets in HTML buffers
    if entry.source.name == "luasnip" and vim.bo.filetype == "html" then
      item.kind = "HTML Snippet"
    end

    return item
  end,
},

        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

      mapping = cmp.mapping.preset.insert({
	  -- <C> stands for ctrl
       ["<C-Space>"] = cmp.mapping.complete(),
	  -- <CR> stands for the enter key
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),

        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
        },
      })
    end,
  },


-- This ends the entire return {}
}
-- yup this one 
