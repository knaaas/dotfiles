@echo off
call git pull origin master
call git submodule init
call git submodule update 
call git submodule sync 
echo "Installing VIM Config files"
copy /Y .vimrc C:%HOMEPATH%\
xcopy .vim C:%HOMEPATH%\vimfiles /E /I /Y
