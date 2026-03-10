return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

    { "<leader>fb",
      function()
        require("telescope.builtin").buffers({
          ignore_current_buffer = true,
	  sort_mru = true,
        })
      end,
      desc = "Buffers",
    },

    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },

-- this "}," ends the keys {} table !!
},
-- this one above this comment

  config = function()
    require("telescope").setup({})
  end,
}
