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
      "~/.config/nvim/",
      "~/BIGAI/pibaby/",
      "~/BIGAI/tongpy/",
      "~/pythonProject/",
      "~/markdown/",
      "~/OmniBBFB/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/gor/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/nlp_lfp/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/pg_retriever/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib_leveldb/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib_sqlalchemy/",
      -- "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/sqlalchemy/",
    }
    local nvim_dirs = {
      "~/.config/nvim/",
    }
    local markdown_dirs = {
      "~/markdown/",
      "~/OmniBBFB/",
    }
    local python_lib_dirs = {
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/gor/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/nlp_lfp/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/pg_retriever/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib_leveldb/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/rdflib_sqlalchemy/",
      "~/.pyenv/versions/3.10.14/envs/tongpy/lib/python3.10/site-packages/sqlalchemy/",
    }
    local bigai_dirs = {
      "~/BIGAI/pibaby/",
      "~/BIGAI/tongpy/",
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

    vim.keymap.set("n", "<space>fdnf", function()
      builtin.find_files({
        attach_mappings = attach_mappings,
        search_dirs = nvim_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in nvim dirs"})

    vim.keymap.set("n", "<space>fdnw", function()
      builtin.live_grep({
        attach_mappings = attach_mappings,
        search_dirs = nvim_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in nvim dirs by Words"})

    vim.keymap.set("n", "<space>fdmf", function()
      builtin.find_files({
        attach_mappings = attach_mappings,
        search_dirs = markdown_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in markdown dirs"})

    vim.keymap.set("n", "<space>fdmw", function()
      builtin.live_grep({
        attach_mappings = attach_mappings,
        search_dirs = markdown_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in markdown dirs by Words"})

    vim.keymap.set("n", "<space>fdlf", function()
      builtin.find_files({
        attach_mappings = attach_mappings,
        search_dirs = python_lib_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in python lib dirs"})

    vim.keymap.set("n", "<space>fdlw", function()
      builtin.live_grep({
        attach_mappings = attach_mappings,
        search_dirs = python_lib_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in python lib dirs by Words"})

    vim.keymap.set("n", "<space>fdbf", function()
      builtin.find_files({
        attach_mappings = attach_mappings,
        search_dirs = bigai_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in bigai dirs"})

    vim.keymap.set("n", "<space>fdbw", function()
      builtin.live_grep({
        attach_mappings = attach_mappings,
        search_dirs = bigai_dirs
      })
    end, {noremap = true, silent = true, desc = "Find files in bigai dirs by Words"})
  end,
}

