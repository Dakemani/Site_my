#!/bin/bash
# main.sh
# Пример bash скрипта
echo "Privet" 
echo "мы находимся в директории: $(pwd)"
echo "Текущий пользователь OC: $USERNAME"
echo "как тебя зовут "
read name
echo "Привет,  $name! Добро пожаловать в Bash-скриптинг"
sleep 1
mkdir New && touch New/new.txt
echo "в ведите 1-вое слогаемое "
read num1
echo "в ведите 2-вое слогаемое "
read num2

echo "Сумма $(($num1 + $num2))"
# отнять , умножить и разделить сделайте самостоятельно

echo "Введите любое натур число"
read number
if ((number > 10 )); then
    echo " ваше число > 10 "
elif ((number == 10)); then
    echo "выше число ==10"
else ((number < 10)); 
    echo "Ваше число выше 10"
fi