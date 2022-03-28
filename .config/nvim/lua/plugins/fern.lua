--local set_keymap = require('common').set_keymap

--function FernInit()
	--set_keymap('n', '<buffer><nowait> l', '<Plug>(fern-action-open-or-expand)')
	--set_keymap('n', '<buffer><nowait> h', '<Plug>(fern-action-collapse)')
	--set_keymap('n', '<buffer> T', '<Plug>(fern-action-new-file)')
--end

vim.g['fern#drawer_width'] = 30
vim.g['fern#default_hidden'] = 1
vim.g['fern#hide_cursor'] = 1
vim.g['fern#disable_default_mappings'] = 1
vim.g['fern#disable_drawer_smart_quit'] = 0
vim.g['fern_git_status#disable_ignored'] = 0
vim.g['fern_git_status#disable_untracked'] = 0
vim.g['fern_git_status#disable_submodules'] = 0
vim.g['fern_git_status#disable_directories'] = 0
vim.g['fern#renderer'] = "nerdfont"

vim.cmd [[
	function! s:init_fern() abort
		nmap <buffer><nowait> l <Plug>(fern-action-open-or-expand)
		nmap <buffer><nowait> h <Plug>(fern-action-collapse)
		nmap <buffer><nowait> i <Plug>(fern-action-reveal)
		nmap <buffer> H <Plug>(fern-action-open:split)
		nmap <buffer> V <Plug>(fern-action-open:vsplit)
		nmap <buffer> t <Plug>(fern-action-open:tabedit)
		nmap <buffer> R <Plug>(fern-action-rename)
		nmap <buffer> M <Plug>(fern-action-move)
		nmap <buffer> C <Plug>(fern-action-copy)
		nmap <buffer> N <Plug>(fern-action-new-path)
		nmap <buffer> T <Plug>(fern-action-new-file)
		nmap <buffer> D <Plug>(fern-action-new-dir)
		nmap <buffer> S <Plug>(fern-action-hidden-toggle)
		nmap <buffer> dd <Plug>(fern-action-trash)
		nmap <buffer> <BS> <Plug>(fern-action-leave)
		nmap <buffer> <CR> <Plug>(fern-action-enter)
		nmap <buffer> <leader> <Plug>(fern-action-mark)
	endfunction

	augroup fern-custom
		autocmd! *
		autocmd FileType fern call s:init_fern()
	augroup END

	augroup my-glyph-palette
		autocmd! *
		autocmd FileType fern call glyph_palette#apply()
	augroup END
]]
