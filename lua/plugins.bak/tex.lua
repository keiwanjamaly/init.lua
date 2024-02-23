vim.g.vimtex_fold_types = {
    envs = {
        blacklist = { 'align', 'cases', 'tikzpicture', 'align*', 'axis', 'figure', 'itemize', 'gather', 'array', 'frame' }
    }
}
vim.g.vimtex_fold_enabled = false
vim.g.vimtex_compiler_latexmk_engines = { ["_"] = "-lualatex" }
vim.g.vimtex_compiler_latexrun_engines = { ["_"] = 'lualatex' }
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_compiler_latexmk = {
    build_dir = '.out',
    options = {
        '-lualatex',
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-interaction=nonstopmode',
        '-synctex=1'
    }
}
