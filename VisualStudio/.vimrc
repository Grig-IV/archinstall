set vsvimcaret=70		

set relativenumber		
set number				
set scrolloff=5			
set clipboard=unnamed	

set ignorecase			
set smartcase			
set hlsearch			
set incsearch			

let mapleader=" "

" General mappings
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $
nnoremap Q @q
nnoremap Y y$

nnoremap gg gg:vsc Edit.NextMethod<CR>
nnoremap G G:vsc Edit.PreviousMethod<CR>
nnoremap <C-S> :vsc Edit.RemoveAndSort<CR>:w<CR>
inoremap <C-S> <ESC>:vsc Edit.RemoveAndSort<CR>:w<CR>
nnoremap <F9> :source c:\Users\User\.vimrc<CR>

nnoremap <Leader>l :noh<CR>

" Macros
nnoremap <Leader>; g_a;<ESC>
nnoremap <Leader>{ o{<CR>


" Code navigation
nnoremap <C-O> :vsc View.NavigateBackward<CR>
nnoremap <C-I> :vsc View.NavigateForward<CR>

nnoremap gd :vsc Edit.GoToDefinition<CR>
nnoremap gi :vsc Edit.GoToImplementation<CR>

nnoremap <C-J> :vsc Edit.NextMethod<CR>jk
vnoremap <C-J> :vsc Edit.NextMethod<CR>jk
nnoremap <C-K> :vsc Edit.PreviousMethod<CR>kj
vnoremap <C-K> :vsc Edit.PreviousMethod<CR>kj

nnoremap <Leader>jj :let @b=@/<CR>/^\s*\({\|}\)<CR>:let @/=@b<CR>:noh<CR>w
nnoremap <Leader>kk :let @b=@/<CR>?^\s*\({\|}\)<CR>:let @/=@b<CR>:noh<CR>w

nnoremap <Leader>jv :let @b=@/<CR>/^\s*var\s<CR>:let @/=@b<CR>:noh<CR>ww
nnoremap <Leader>kv :let @b=@/<CR>?^\s*var\s<CR>:let @/=@b<CR>:noh<CR>ww

nnoremap <Leader>ji :let @b=@/<CR>/^\s*\(if\s*(\|else\s*\)<CR>:let @/=@b<CR>:noh<CR>w
nnoremap <Leader>ki :let @b=@/<CR>?^\s*\(if\s*(\|else\s*\)<CR>:let @/=@b<CR>:noh<CR>w

nnoremap <Leader>jf :let @b=@/<CR>/^\s*\(for\s*(\|foreach\s*\)<CR>:let @/=@b<CR>:noh<CR>w
nnoremap <Leader>kf :let @b=@/<CR>?^\s*\(for\s*(\|foreach\s*\)<CR>:let @/=@b<CR>:noh<CR>w


" Project navigation
nnoremap <C-H> :vsc Window.PreviousTab<CR>
nnoremap <C-L> :vsc Window.NextTab<CR>
nnoremap <Leader>tk :vsc Window.KeepTabOpen<CR>
nnoremap <Leader>to :tabo<CR>
nnoremap <Leader>ff :vsc Edit.GoToAll<CR>


" SoultionExplorer
nnoremap <Leader>S :vsc View.SolutionExplorer<CR>
nnoremap <Leader>sf :vsc Window.SolutionExplorerSearch<CR>
nnoremap <Leader>ss :vsc SolutionExplorer.SyncWithActiveDocument<CR>


" ErrorList
nnoremap <Leader>E :vsc View.ErrorList<CR>
nnoremap <Leader>en :vsc View.NextError<CR>
nnoremap <Leader>eb :vsc View.PreviousError<CR>


" Info
nnoremap <Leader>i :vsc Edit.QuickInfo<CR>
nnoremap <Leader>I :vsc Edit.ParameterInfo<CR>


" Refactor
nnoremap <Leader>rr :vsc Refactor.Rename<CR>
nnoremap <Leader>rp :vsc Refactor.RemoveParameters<CR>


" Build, Run, Debug, Tests
nnoremap <Leader>bb :vsc Build.BuildSolution<CR>

nnoremap <Leader>dr :vsc Debug.Start<CR>
nnoremap <Leader>ds :vsc Debug.StopDebugging<CR>
nnoremap <Leader>dR :vsc Debug.Restart<CR>

nnoremap <Leader>dl :vsc Debug.StepOver<CR>
nnoremap <Leader>dj :vsc Debug.StepInto<CR>
nnoremap <Leader>dk :vsc Debug.StepOut<CR>
nnoremap <Leader>dh :vsc Debug.RunToCursor<CR>

nnoremap <Leader>dtt :vsc TestExplorer.ShowTestExplorer<CR>
nnoremap <Leader>dta :vsc TestExplorer.RunAllTests<CR>
nnoremap <Leader>dtf :vsc TestExplorer.RunFailedTests<CR>
nnoremap <Leader>dtl :vsc TestExplorer.RepeatLastRun<CR>
nnoremap <Leader>dtL :vsc TestExplorer.DebugLastRun<CR>

nnoremap <Leader>db :vsc Debug.ToggleBreakpoint<CR>
nnoremap <Leader>dc :vsc Debug.DeleteAllBreakpoints<CR>
