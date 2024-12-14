return {
  "nvim-telescope/telescope.nvim",
  lazy = false,

  requires = { {"nvim-lua/plenary.nvim"}, lazy = false },
  
  config = function()
    require("telescope").setup{}

    local builtin = require("telescope.builtin")    
    local actions = require("telescope.actions")  
    local actions_state = require("telescope.actions.state")

    local attach_mappings = function(prompt_bufnr, map)
      local open_split = function()
        local selection = actions_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.cmd("split " .. selection.path)
      end

      local open_vsplit = function()
        local selection = actions_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.cmd("vsplit " .. selection.path)
      end

      local open_tab = function()
        local selection = actions_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.cmd("tabnew " .. selection.path)
      end

      map("n", "<C-x>", open_split)
      map("n", "<C-v>", open_vsplit)
      map("n", "<C-t>", open_tab)

      return true
    end

    local search_dirs = {
      "~/.config/zsh/",
      "~/.config/nvim/",
      "~/PycharmProjects/pythonProject/",
    }

    vim.keymap.set("n", "<space>ff", function()
      builtin.find_files({
        attach_mappings = attach_mappings
      })
    end, {noremap = true, silent = true, desc = "Find files"})

    vim.keymap.set("n", "<space>fw", function()
      builtin.live_grep({
        attach_mappings = attach_mappings
      })
    end, {noremap = true, silent = true, desc = "Find files by Words"})
    
    vim.keymap.set("n", "<space>fdf", function()
      builtin.find_files({
        attach_mappings = attach_mappings,
        search_dirs = search_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in selected dirs"})

    vim.keymap.set("n", "<space>fdw", function() 
      builtin.live_grep({
        attach_mappings = attach_mappings,
        search_dirs = search_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in selected dirs by Words"})

  end,
}

