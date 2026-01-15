#!/bin/sh
echo "Введите расширение файлов для поиска (без точки):"
read extension

if [ -z "$extension" ]; then
    echo "Ошибка: Расширение не указано!"
    exit 1
fi

echo "Поиск файлов с расширением .$extension в текущей директории..."
echo ""

# Ищем файлы и подсчитываем их количество
count=0
for file in *."$extension"; do
    if [ -f "$file" ]; then
        echo "Найден: $file"
        count=$((count + 1))
    fi
done

if [ $count -eq 0 ]; then
    echo "Файлов с расширением .$extension не найдено."
else
    echo ""
    echo "Всего найдено файлов: $count"
fi