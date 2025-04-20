return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 
                "lua", 
                "java", 
                "c", 
                "cpp", 
                "markdown", 
                "go", 
                "python", 
                "bash", 
                "cmake", 
                "csv", 
                "cuda", 
                "dart", 
                "dockerfile", 
                "gitignore", 
                "glsl",
                "groovy",
                "hyprlang",
                "json",
                "make",
                "nginx",
                "proto",
                "rust",
                "tmux",
                "xml",
                "yaml",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
