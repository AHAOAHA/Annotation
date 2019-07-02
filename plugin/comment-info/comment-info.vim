"***************************************************
" Copyright(C) 2016-2019. All right reserved.
" 
" Filename: x.vim
" Author: ahaoozhang
" Date: 2019-07-02 09:21:30 (Tuesday)
" Describe: 
"***************************************************

autocmd BufNewFile *.* exec ":call SetTitle()"

func SetTitleShell()
	call setline(1, "#!/bin/bash")
	call append(line("."), "##################################################")
	call append(line(".") + 1, "# Copyright(C) 2016-" .strftime("%Y").". All right reserved.")
	call append(line(".") + 2, "# ")
	call append(line(".") + 3, "# Filename: ".expand("%:t"))
	call append(line(".") + 4, "# Author: ahaoozhang")
	call append(line(".") + 5, "# Date: ".strftime("%Y-%m-%d %H:%M:%S (%A)"))
	call append(line(".") + 6, "# Describe: ")
	call append(line(".") + 7, "##################################################")
	call append(line(".") + 8, "")
	:normal G
endfunc

func SetTitleCPPCGO()
	call setline(1, "/*************************************************")
	call append(line(".") + 0, " * Copyright(C) 2016-" .strftime("%Y").". All right reserved.")
	call append(line(".") + 1, " * ")
	call append(line(".") + 2, " * Filename: ".expand("%:t"))
	call append(line(".") + 3, " * Author: ahaoozhang")
	call append(line(".") + 4, " * Date: ".strftime("%Y-%m-%d %H:%M:%S (%A)"))
	call append(line(".") + 5, " * Describe: ")
	call append(line(".") + 6, " *************************************************/")
	call append(line(".") + 7, "")
	:normal G
endfunc

func SetTitleVim()
	call setline(1, "\"***************************************************")
	call append(line(".") + 0, "\" Copyright(C) 2016-" .strftime("%Y").". All right reserved.")
	call append(line(".") + 1, "\" ")
	call append(line(".") + 2, "\" Filename: ".expand("%:t"))
	call append(line(".") + 3, "\" Author: ahaoozhang")
	call append(line(".") + 4, "\" Date: ".strftime("%Y-%m-%d %H:%M:%S (%A)"))
	call append(line(".") + 5, "\" Describe: ")
	call append(line(".") + 6, "\"***************************************************")
	call append(line(".") + 7, "")
	:normal G
endfunc

" 获取当前文件的后缀（不包括.）
func GetFileSuffix()
	return expand("%:e")
endfunc

func SetTitle()
	let suffix=GetFileSuffix()
	if l:suffix == "sh"
		call SetTitleShell()
	elseif l:suffix == "h" || l:suffix == "hpp" || l:suffix == "c" || l:suffix == "cc" || l:suffix == "cpp" || l:suffix == "go"
		call SetTitleCPPCGO()
	elseif l:suffix == "vim"
		call SetTitleVim()
	endif
endfunc
