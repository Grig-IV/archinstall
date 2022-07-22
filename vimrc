set vsvimcaret=70			" Настройка спецефичная только для VsVim

set relativenumber			" Нумерация строк относительно курсора
set number					" Показывает номер текушей строки (без это будет всегда ноль)
set scrolloff=4				" Скорл экрана начниается на 4 строки от края экрана
set clipboard=unnamed		" Буфер обмена идет в общий регистр, позволяет копипастить из других прог

set ignorecase				" Игнорирование регистра при поиске
set smartcase				" Регистр учитывается только когда в поиске есть заглавные буквы
set hlsearch				" Подсвечивает поиск
set incsearch				" Сразу же перемешается на слово которое находиться в процессе поиска



" General mappings
nmap 0 ^
nmap $ g_
nmap <Leader>; $a;<ESC>
nnoremap gg gg:vsc Edit.NextMethod<CR>				
nnoremap G G:vsc Edit.PreviousMethod<CR>
nmap <C-S> :vsc Edit.RemoveAndSort<CR>:w<CR>
imap <C-S> <ESC>:vsc Edit.RemoveAndSort<CR>:w<CR>
nmap <F9> :source c:\Users\Grig\.vimrc<CR>

" Code navigation
nmap <C-O> :vsc View.NavigateBackward<CR>
nmap <C-I> :vsc View.NavigateForward<CR>
nmap <C-]> :vsc Edit.GoToDefinition<CR>
nmap <C-J> :vsc Edit.NextMethod<CR>
vmap <C-J> :vsc Edit.NextMethod<CR>
nmap <C-K> :vsc Edit.PreviousMethod<CR>
vmap <C-K> :vsc Edit.PreviousMethod<CR>

" Tabs manipulation
nmap <C-H> :vsc Window.PreviousTab<CR>
nmap <C-L> :vsc Window.NextTab<CR>
nmap <C-W> :vsc Window.CloseDocumentWindow<CR>

" SoultionExplorer
nmap <Leader>S :vsc View.SolutionExplorer<CR>
nmap <Leader>sf :vsc Window.SolutionExplorerSearch<CR>
nmap <Leader>ss :vsc SolutionExplorer.SyncWithActiveDocument<CR>

" ErrorList
nmap <Leader>E :vsc View.ErrorList<CR>
nmap <Leader>en :vsc View.NextError<CR>
nmap <Leader>eb :vsc View.PreviousError<CR>

" TestExplorer
nmap <Leader>T :vsc TestExplorer.ShowTestExplorer<CR>
nmap <Leader>ta :vsc TestExplorer.RunAllTests<CR>
nmap <Leader>tf :vsc TestExplorer.RunFailedTests<CR>
nmap <Leader>tl :vsc TestExplorer.RepeatLastRun<CR>
nmap <Leader>tL :vsc TestExplorer.DebugLastRun<CR>

" Debug
nmap <Leader>B :vsc Debug.ToggleBreakpoint<CR>
nmap <Leader>bc :vsc Debug.DeleteAllBreakpoints<CR>
