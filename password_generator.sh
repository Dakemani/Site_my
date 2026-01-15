#!/bin/sh
echo "=== Генератор паролей ==="

# Длина пароля (можно изменить)
length=8

# Символы для генерации пароля
chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*"

# Генерируем пароль
password=""
count=${#chars}

for i in $(seq 1 $length); do
    # Используем /dev/urandom для случайности
    random_num=$(od -An -N4 -tu4 /dev/urandom 2>/dev/null | tr -d ' ')
    if [ -z "$random_num" ]; then
        random_num=$(date +%N)
    fi
    idx=$((random_num % count))
    char=$(echo "$chars" | cut -c $((idx + 1)))
    password="$password$char"
done

echo "Сгенерированный пароль ($length символов): $password"