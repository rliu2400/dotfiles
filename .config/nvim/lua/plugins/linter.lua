return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            python = { "flake8" },
            javascript = { "eslint" },
            typescript = { "eslint" },
        }
        vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end,
}
