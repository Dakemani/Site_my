#!/bin/sh
echo "Введите имя проекта:"
read project_name

if [ -z "$project_name" ]; then
    echo "Ошибка: Имя проекта не может быть пустым!"
    exit 1
fi

# Создаем структуру
mkdir -p "$project_name/css" "$project_name/js"

# Создаем файлы
touch "$project_name/index.html"
touch "$project_name/css/style.css"
touch "$project_name/js/script.js"


echo "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"UTF-8\">
    <title>$project_name</title>
    <link rel=\"stylesheet\" href=\"css/style.css\">
</head>
<body>
    <h1>Добро пожаловать в $project_name</h1>
    <script src=\"js/script.js\"></script>
</body>
</html>" > "$project_name/index.html"

echo "/* Стили для проекта $project_name */" > "$project_name/css/style.css"
echo "// JavaScript для проекта $project_name" > "$project_name/js/script.js"

echo "Структура проекта '$project_name' создана успешно!"
echo "Созданы:"
echo "  $project_name/index.html"
echo "  $project_name/css/style.css"
echo "  $project_name/js/script.js"