#!/bin/bash
echo "=== Генератор паролей ==="
echo ""
echo -n "Введите длину пароля (по умолчанию 8): "
read length
if [ -z "$length" ]; then
    length=8
fi
if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: Длина должна быть числом!"
    exit 1
fi
if [ "$length" -lt 4 ]; then
    echo "Ошибка: Минимальная длина пароля - 4 символа!"
    exit 1
fi
password=$(tr -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | head -c "$length")
if [ -z "$password" ]; then
    password=$(date +%s | sha256sum | base64 | head -c "$length")
fi
echo ""
echo "========================================"
echo "Ваш новый пароль:"
echo "$password"
echo "========================================"
echo ""
echo "⚠️  Сохраните пароль в надежном месте!"