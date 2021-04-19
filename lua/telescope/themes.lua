-- Prototype Theme System (WIP)
-- Currently certain designs need a number of parameters.
--
-- local opts = themes.get_dropdown { winblend = 3 }

local themes = {}

function themes.get_dropdown(opts)
  opts = opts or {}

  local theme_opts = {
    -- WIP: Decide on keeping these names or not.
    theme = "dropdown",

    sorting_strategy = "ascending",
    layout_strategy = "center",
    results_title = false,
    preview_title = "Preview",
    preview_cutoff = 1, -- Preview should always show (unless previewer = false)
    width = 80,
    results_height = 15,
    borderchars = {
      { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
      prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
      preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    },
  }

  return vim.tbl_deep_extend("force", theme_opts, opts)
end

function themes.get_ivy(opts)
  opts = opts or {}

  return vim.tbl_deep_extend("force", {
    layout_strategy = 'bottom_pane',
    layout_config = {
      height = 10,
    },

    border = false,
    -- TODO: Make only top border?
  }, opts)
end

return themes
