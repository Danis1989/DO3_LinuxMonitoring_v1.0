#!/bin/bash

# Подсчет числа конфигурационных файлов
conf_files=$(find ${1} -type f -name "*.conf" | wc -l)

# Подсчет числа текстовых файлов
txt_files=$(find ${1} -type f -name "*.txt" | wc -l)

# Подсчет числа исполняемых файлов
executable_files=$(find ${1} -type f -executable | wc -l)

# Подсчет числа лог файлов
log_files=$(find ${1} -type f -name "*.log" | wc -l)

# Подсчет числа архивных файлов
archive_files=$(find ${1} -type f -name "*.zip" -o -name "*.tar" -o -name "*.tar.gz" -o -name "*.tar.bz2" -o -name "*.tar.xz" -o -name "*.rar" -o -name "*.7z" | wc -l)

# Подсчет числа символьных ссылок
symbolic_links=$(find ${1} -type l 2>/dev/null | wc -l)

echo "Number of: "
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $txt_files"
echo "Executable files = $executable_files"
echo "Log files = $log_files"
echo "Archive files = $archive_files"
echo "Symbolic_links = $symbolic_links"