-- plugins/phpactor.lua
local lspconfig = require("lspconfig")

-- Only setup phpactor when needed
lspconfig.phpactor.setup({
    cmd = { "nc", "localhost", "9912" },
    init_options = {
        ["language_server_phpactor.path_map"] = {
            ["/home/ammad/Development/qualhub"] = "/var/www/html",
        },
    },
    root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
})

