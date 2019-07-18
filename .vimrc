"----------------------------------------------------
" ��{�I�Ȑݒ�
"----------------------------------------------------
" vi�Ƃ̌݊������Ƃ�Ȃ�(vim�̓Ǝ��g���@�\���g����)
set nocompatible
" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
" �r�[�v����炳�Ȃ�
set vb t_vb=
" �o�b�N�X�y�[�X�L�[�ō폜�ł�����̂��w��
" indent  : �s���̋�
" eol     : ���s
" start   : �}�����[�h�J�n�ʒu����O�̕���
set backspace=indent,eol,start

"----------------------------------------------------
" �o�b�N�A�b�v�֌W
"----------------------------------------------------
" �o�b�N�A�b�v���Ƃ�Ȃ�
set nobackup
" �t�@�C���̏㏑���̑O�Ƀo�b�N�A�b�v�����
" (�������Abackup ���I���łȂ�����A�o�b�N�A�b�v�͏㏑���ɐ���������폜�����)
set writebackup
" �o�b�N�A�b�v���Ƃ�ꍇ
"set backup
" �o�b�N�A�b�v�t�@�C�������f�B���N�g��
"set backupdir=~/backup
" �X���b�v�t�@�C�������f�B���N�g��
"set directory=~/swap

"----------------------------------------------------
" �����֌W
"----------------------------------------------------
" �R�}���h�A�����p�^�[����100�܂ŗ����Ɏc��
set history=100
" �����̎��ɑ啶������������ʂ��Ȃ�
set ignorecase
" �����̎��ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set smartcase
" �Ō�܂Ō���������擪�ɖ߂�
set wrapscan

" �C���N�������^���T�[�`���g��Ȃ�
"set noincsearch
" �C���N�������^���T�[�`
set incsearch

"----------------------------------------------------
" �\���֌W
"----------------------------------------------------
" �^�C�g�����E�C���h�E�g�ɕ\������
set title
" �s�ԍ���\�����Ȃ�
set nonumber
" ���[���[��\��
set ruler
" �^�u������ CTRL-I �ŕ\�����A�s���� $ �ŕ\������
"set list
" ���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd
" �X�e�[�^�X���C������ɕ\��
set laststatus=2
" ���ʓ��͎��̑Ή����銇�ʂ�\��
set showmatch
" �Ή����銇�ʂ̕\�����Ԃ�2�ɂ���
set matchtime=2
" �V���^�b�N�X�n�C���C�g��L���ɂ���
syntax on
" �������ʕ�����̃n�C���C�g��L���ɂ���
set hlsearch
" �R�����g���̐F��ύX
highlight Comment ctermfg=DarkCyan
" �R�}���h���C���⊮���g�����[�h�ɂ���
set wildmenu

" ���͂���Ă���e�L�X�g�̍ő啝
" (�s�������蒷���Ȃ�ƁA���̕��𒴂��Ȃ��悤�ɋ󔒂̌�ŉ��s�����)�𖳌��ɂ���
set textwidth=0
" �E�B���h�E�̕���蒷���s�͐܂�Ԃ��āA���̍s�ɑ����ĕ\������
set wrap

" �S�p�X�y�[�X�̕\��
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /�@/

" �X�e�[�^�X���C���ɕ\��������̎w��
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=
" �X�e�[�^�X���C���̐F
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white

"----------------------------------------------------
" �C���f���g
"----------------------------------------------------
" �I�[�g�C���f���g�𖳌��ɂ���
"set noautoindent
" �^�u���Ή�����󔒂̐�
set tabstop=4
" �^�u��o�b�N�X�y�[�X�̎g�p���̕ҏW���������Ƃ��ɁA�^�u���Ή�����󔒂̐�
set softtabstop=4
" �C���f���g�̊e�i�K�Ɏg����󔒂̐�
set shiftwidth=4
" �^�u��}������Ƃ��A����ɋ󔒂��g��Ȃ�
set noexpandtab

"----------------------------------------------------
" ���ۉ��֌W
"----------------------------------------------------
" �����R�[�h�̐ݒ�
" fileencodings�̐ݒ�ł�encoding�̒l����ԍŌ�ɋL�q����
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,euc-jp,cp932,iso-2022-jp
set fileencodings+=,ucs-2le,ucs-2,utf-8

"----------------------------------------------------
" �I�[�g�R�}���h
"----------------------------------------------------
if has("autocmd")
    " �t�@�C���^�C�v�ʃC���f���g�A�v���O�C����L���ɂ���
    filetype plugin indent on
    " �J�[�\���ʒu���L������
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif

"----------------------------------------------------
" ���̑�
"----------------------------------------------------
" �o�b�t�@��ؑւ��Ă�undo�̌��͂�����Ȃ�
set hidden
" �N�����̃��b�Z�[�W��\�����Ȃ�
set shortmess+=I




"----------------------------------------------------
" �Ǝ��ݒ�
"----------------------------------------------------
" �X�N���[�����̗]���m��
set scrolloff=5
" ���ŏ���������ꂽ�玩���œǂݒ���
set autoread
" �s�ԍ��\��
set number

" �C���f���g
set autoindent
set smartindent
set cindent
set noexpandtab " �^�u���X�y�[�X�ɓW�J���Ȃ�

" �R�}���h�⊮���J�n����L�[
set wildchar=<tab>

set whichwrap=b,s,h,l,<,>,[,]  " �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���

" �L�[�o�C���h�֌W
" �s�P�ʂňړ�(1�s�������ꍇ�ɕ֗�)
nnoremap j gj
nnoremap k gk

" �J�����g�E�B���h�E�ɂ̂݌r��������
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup ENDhttp://www.c.csce.kyushu-u.ac.jp/kb/wiki/index.php?%A5%BD%A5%D5%A5%C8%A5%A6%A5%A8%A5%A2%2FVim%2FFAQ

