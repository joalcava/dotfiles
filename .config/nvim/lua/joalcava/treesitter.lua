local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    "bash",
    "c",
    "c_sharp",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
  },
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
})
