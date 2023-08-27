return {
    {
        "kdheepak/lazygit.nvim",
        keys = { { "<leader>l", ":LazyGit<CR>" } },
        cmd = "LazyGit",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    }
}

