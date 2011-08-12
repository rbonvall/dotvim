runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundle'))
  try
    call pathogen#helptags()
  catch /Duplicate tag/
    " do nothing
  endtry
end

