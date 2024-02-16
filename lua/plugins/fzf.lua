return {
    'junegunn/fzf',
    build = ":call fzf#install()",
    keys = { { "<space>k", ":BLines<CR>" } },
    cmd = "BLines"
}
