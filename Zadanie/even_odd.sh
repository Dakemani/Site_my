#!/bin/bash
echo "=== Проверка четности числа ==="
echo ""
echo -n "Введите целое число: "
read number
if [ -z "$number" ]; then
    echo "Ошибка: Число не может быть пустым!"
    exit 1
fi
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: Пожалуйста, введите целое число!"
    exit 1
fi
if [ $((number % 2)) -eq 0 ]; then
    echo ""
    echo "Число $number является ЧЕТНЫМ ✓"
else
    echo ""
    echo "Число $number является НЕЧЕТНЫМ ✗"
fi