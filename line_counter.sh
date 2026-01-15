#!/bin/sh
echo "Введите путь к файлу:"
read filepath

if [ -z "$filepath" ]; then
    echo "Ошибка: Путь к файлу не указан!"
    exit 1
fi

if [ ! -f "$filepath" ]; then
    echo "Ошибка: Файл '$filepath' не существует или недоступен!"
    exit 1
fi

line_count=$(wc -l < "$filepath")
echo "Файл: $filepath"
echo "Количество строк: $line_count"