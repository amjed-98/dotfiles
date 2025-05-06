return {
  {
    "supermaven-inc/supermaven-nvim",

    enabled = true,
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<S-L>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        disable_keymaps = false, -- disables built in keymaps for more manual control
      })
    end,
  },
}
