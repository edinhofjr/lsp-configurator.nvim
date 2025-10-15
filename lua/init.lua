require("utils.functional")
local debug = require("utils.debug")
local M = {}

---@alias languages "c" | "cpp" | "javascript" | "lua" | "go" 

---@type table<languages, string>
local lsp = {
    ["go"] = "gopls",
    ["lua"] = "lua-language-server"
}


---@class opts
---@field ensure_installed? languages[]

---@param opts opts
M.setup = function(opts)
    local success, mason = pcall(require, "mason.api.command")

    if not success then
        vim.notify("ERROR: mason is not installed")
        return
    end

    vim.cmd("nvim")
end

return M
