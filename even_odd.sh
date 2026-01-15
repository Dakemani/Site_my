#!/bin/sh
echo "Введите целое число:"
read number

if [ -z "$number" ]; then
    echo "Ошибка: Вы не ввели число!"
    exit 1
fi

if ! echo "$number" | grep -Eq '^-?[0-9]+$'; then
    echo "Ошибка: Введите целое число!"
    exit 1
fi

# Проверка четности
if [ $((number % 2)) -eq 0 ]; then
    echo "Число $number является четным"
else
    echo "Число $number является нечетным"
fi