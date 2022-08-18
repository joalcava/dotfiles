-- nvim-surround
local status_ok, nvim_surround = pcall(require, "nvim-surround")
if not status_ok then
	return
end

nvim_surround.setup({})

-- leap
local loaded_leap, leap = pcall(require, "leap")
if not loaded_leap then
	return
end

leap.set_default_keymaps()

-- neogit
local loaded_ngit, neogit = pcall(require, "neogit")
if not loaded_ngit then
	return
end

neogit.setup({
  kind = "replace"
})

-- symbols-outline
vim.g.symbols_outline = {
  auto_preview = false
}
