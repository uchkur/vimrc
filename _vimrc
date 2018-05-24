set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'majutsushi/tagbar'
Plugin 'sbdchd/neoformat'
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'neomake/neomake'
Plugin 'Yggdroot/indentLine'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'bling/vim-airline'
"Plugin 'SirVer/ultisnips'
"Plugin 'edsono/vim-matchit'
Plugin 'elzr/vim-json'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
"Plugin 'kien/ctrlp'
Plugin 'junegunn/fzf.vim'
"Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'mhinz/vim-signify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundovim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'w0ng/vim-hybrid'
Plugin 'damage220/solas.vim'

Bundle 'exvim/ex-utility'
call vundle#end()            " required
filetype plugin indent on    " required

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
colorscheme hybrid "wombat

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
"    set guifont=Consolas:h11:cANSI
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12:cANSI
"    set guifont=Source\ Code\ Pro:h11:cANSI
    let Powerline_symbols = 'fancy'
  endif
endif
set linespace=2


:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar


" Для работы с табами, вместо пробелов, присвойте tabstop и shiftwidth одинаковые значения
set tabstop=4
set shiftwidth=4
set softtabstop=4

"автоматически обновлять файл при его изменении
set autoread

"  настраиваем отступы
set autoindent
set smartindent

"  показывать относительные номера строк. Удобно тем, что можно легко переходить к нужной строке командой 10j, например
set rnu

"  всегда показывать строку статуса
set laststatus=2

"Время, которое vim ждет для ввода следующего символа комбинации клавиш.
"Например, если в vim'e существует комбинация "df", то после ввода символа "d" у вас есть пол секунды,
"чтобы ввести "f", иначе в буфер вставиться символ "d".
set timeoutlen=500

"эту команду я плохо понимаю. В документации написано, что это время ожидания для ввода последовательностей клавиш,
"в таком случае, я не знаю в чем отличие от предыдущей команды. Тем не менее, когда ожидание равно нулю, то при нажатии <Esc>
"для выхода из визуального режима или закрытия всплывающего меню, нет никакой заминки, что весьма приятно.
set ttimeoutlen=0

"более удобная работа с кириллицей. При нажатии <C-6> в режиме вставки, vim изменит режим с "Insert" на "Insert (lang)",
"после чего будут вводиться русские символы. Если вернуться в нормальный режим, то все команды будут работать.
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

"Выставляем кодировку
set encoding=utf-8
set termencoding=utf-8
"// Если в течении этого времени, вы не будете перемещать курсор или печатать, vim обновит swap-файл,
"// а также активирует событие CursorHold. Некоторые плагины, вроде tagbar, слушают это событие для обновления состояния.
"// Так как swap-файлы я не использую, решил сделать значение поменьше (по умолчанию - 4000).
set updatetime=500


":vsplit открывает окна справа
set splitright

"// :split открывает окна снизу
set splitbelow

"// убираем совместимость с vi
set nocompatible

"// ищем тег-файл в текущей директории
set tags=./tags;

"// Игнорировать регистр при поиске. Намного удобнее вводить команды без учета регистра, например ctrlsf, вместо CtrlSF.
"// Для поиска с учетом регистра, нужно поместить \C в любое место искомой строки
set ignorecase

"// например, при переходе к тегу, vim может ругаться, что текущий буфер не сохранен, hidden решает эту проблему
set hidden

"// подсвечивать все совпадения при поиске
set hlsearch

"// подсвечивать совпадение во время поиска на лету
set incsearch

"// выделять строку, на которой находится курсор
set cursorline

"// количество cтрок в всплывающем окне
set pumheight=10

"// использовать пробелы в качестве разделителей окон. Не забудьте поставить в конце строки символ пробела
set fillchars+=vert:\ 

"// меняем mapleader на ",", по умолчанию - "\"
let mapleader=","

"// рекомендуемые настройки для Vundle
filetype off
filetype plugin on
filetype plugin indent on

"// включить подсветку синтаксиса
syntax enable

"// выбираем темный фон
set background=dark

"// выбираем цветовую схему
"colorscheme solas
set tags=~/.tags,./tags;/,tags;/,.tags;/
"autocmd FileType java set tags=./tags;/,tags;/,.tags;/