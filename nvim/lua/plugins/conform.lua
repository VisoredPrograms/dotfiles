return {
    "stevearc/conform.nvim",
    event = {"BufReadPre", "BufWritePre"}, -- Load conform on file open or before saving
    config = function()
        require("conform").setup {
            formatters_by_ft = {
                lua = { "stylua" },
                python = function(bufnr)
                    if require("conform").get_formatter_info("ruff_format", bufnr).available then
                        return {"ruff_format"}
                    else
                        return {"isort", "black"}
                    end
                end,
                javascript = { "prettierd", "prettier", stop_after_first = true }
            }
        }
    end
}