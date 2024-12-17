-- create a module that exports a read_json function
local M = {}

function M.read_json(path)
  local file = io.open(path, "r")

  if file then
    local content = file:read("*all")
    file:close()
    local obj = vim.fn.json_decode(content)
    return obj
  else
    return {}
  end
end

return M
