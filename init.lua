-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Check if running inside WSL
local is_wsl = vim.fn.has("wsl") == 1 or string.find(vim.loop.os_uname().release, "Microsoft") ~= nil

if is_wsl then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i",
      ["*"] = "win32yank.exe -i",
    },
    paste = {
      ["+"] = "win32yank.exe -o",
      ["*"] = "win32yank.exe -o",
    },
    cache_enabled = 0,
  }
end
