call git pull origin master
call git submodule init
call git submodule update 
call git submodule sync 
copy .vimrc C:%HOMEPATH%\.gvimrc /Y
copy .emacs C:%HOMEPATH% /Y
copy .gitconfig C:\%HOMEPATH% /Y
xcopy .vim C:%HOMEPATH%\vimfiles /E /I /Y
