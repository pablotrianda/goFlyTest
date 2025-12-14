local M = {}

local actions = {
  {
    label = "Test File",
    cmd = "GoTestFile",
  },
  {
    label = "Current Test",
    cmd = "GoTestFunc",
  },
  {
    label = "Compile Test",
    cmd = "GoTestCompile",
  },
  {
    label = "Coverage report",
    cmd = "GoCoverage",
  },
}

local function run_action(action)
  vim.api.nvim_cmd({ cmd = action.cmd }, {})
end

function M.open_menu()
  vim.ui.select(actions, {
    prompt = "Go Test",
    format_item = function(item)
      return item.label
    end,
  }, function(choice)
    if choice then
      run_action(choice)
    end
  end)
end

function M.setup()
  vim.keymap.set(
    "n",
    "<leader>t",
    M.open_menu,
    { buffer = true, desc = "Go Test Menu" }
  )
end

return M


