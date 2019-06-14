if !exists(g:dart_lang_server_path)
    g:dart_lang_server_path = '~/.pub-cache/bin/dart_language_server'
endif

let g:LanguageClient_serverCommands = {
 \ 'dart': [g:dart_lang_server_path],
 \ }

autocmd FileType dart setlocal omnifunc=LanguageClient#complete
