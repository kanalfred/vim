function! SearchFileBackwards(fn)
    let fp = expand('%:p')
    let pos = len(fp) - 1
    while pos > 0
        let pom = ""
        if fp[pos] == '/'
            let pom = strpart(fp, 0, pos + 1) . a:fn
            if filereadable(pom)
                break
            endif
        endif
        let pos = pos - 1
    endwhile
    return pom
endfunction

function! BuildMavenProject()
    let pom = SearchFileBackwards("pom.xml")
    if pom != ""
        exec '!mvn -f '.SearchFileBackwards("pom.xml").' compile'
    else
        echohl WarningMsg | echo "No pom.xml found." | echohl None
    endif
endfunction

" comment out below line to enable automatic build on maven project.
" autocmd BufWritePost *.java :call BuildMavenProject()

" Press <F8> to build current maven project.
nnoremap <buffer> <silent> <F8> :call BuildMavenProject()<CR><CR>

" https://brookhong.github.io/2017/11/19/spring-boot-hot-swapping.html
