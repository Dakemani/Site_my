
Поиск

Цветовая схема
Войти
Проекты
Команды
Компании
Реестр контейнеров
GitFlic Self-hosted
Новости
Помощь
Зарегистрироваться
Войти
maivandrahmani
/
scripts
Файлы
Проблемы
0
Запросы на слияние
0
CI/CD
Коммиты
Ветки
1
Теги
0
Релизы
0
Реестр контейнеров и пакетов
Вики
Статистика
Файлы

main

scripts
calculator.sh
create_project.sh
even_odd.sh
file_finder.sh
greeting.sh
line_counter.sh
password_generator.sh
.gitignore
README.md
scripts
/
scripts
/
line_counter.sh
Клонировать
HTTPS
SSH
https://gitflic.ru/project/maivandrahmani/scripts.git
Расширение архива проекта
zip
tar
tar.gz
tar.bz2
tar.xz
7z

MaivandRahmani
Initial commit
29 минут назад
История
line_counter.sh
строк 28 951 bytes
#!/bin/bash
echo "=== Счетчик строк в файле ==="
echo ""
echo -n "Введите путь к файлу: "
read filename
if [ -z "$filename" ]; then
    echo "Ошибка: Имя файла не может быть пустым!"
    exit 1
fi
if [ ! -f "$filename" ]; then
    echo "Ошибка: Файл '$filename' не найден!"
    exit 1
fi
if [ ! -r "$filename" ]; then
    echo "Ошибка: Нет прав на чтение файла '$filename'!"
    exit 1
fi
line_count=$(wc -l < "$filename")
non_empty_lines=$(grep -c -v '^[[:space:]]*$' "$filename")
file_size=$(wc -c < "$filename")
echo ""
echo "========================================"
echo "Файл: $filename"
echo "----------------------------------------"
echo "Всего строк: $line_count"
echo "Непустых строк: $non_empty_lines"
echo "Размер файла: $file_size байт"
echo "========================================"
4.6.3
2026-01-13 14:31:25
support@gitflic.ru
Контакты