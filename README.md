SVN EXPORT
==========

English
-------

Bash script for deploy changes from SVN repository. Script export only updated files for deploy it to developer or production folder. Save directory structure.

Usage: svnexport.sh <SVN_PATH> <REVISION> [<SAVE_PATH>]

There you will copy to folder **<SAVE_PATH>** all files from SVN repository what changed from revision **<REVISION>**. **<SVN_PATH>** is path to your working copy of repository. If skip **<SAVE_PATH>** then script just output list of changed files.

Russian/Русский
---------------

Консольный скрипт для выгрузки измененных файлов из репозитория SVN. Скрипт позволяет выгрузить из репозитория только измененные файлы для дальнейшей их выгрузки на тестовый или боевой сервер. Сохраняет структуру каталогов.

Использование: svnexport.sh <SVN_PATH> <REVISION> [<SAVE_PATH>]

Скрипт копирует в папку **<SAVE_PATH>** все файлы из SVN репозитория, который были изменены начиная с ревизии **<REVISION>**. Путь до исходного рабочего репозитория указывается в **<SVN_PATH>**. Если этот параметр не указывать, то скрипт просто выведет списко измененных файлов.

