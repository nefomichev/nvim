local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end


telescope.setup {

  defaults = {
        path_display = { "smart" },
      },

  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
      },
} 

-- fast search
telescope.load_extension('fzf')
