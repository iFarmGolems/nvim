--require bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("persistence").load({ last = true })
