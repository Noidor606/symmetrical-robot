#!/bin/bash

# Клонируем правильный репозиторий
git clone https://github.com/rebryk/profanity-brute-force.git
cd profanity-brute-force

# Компилируем его
cmake .
make

# ЗАПУСКАЕМ ВЗЛОМ.
# Для начала, мы запустим его в режиме бенчмарка, чтобы убедиться,
# что он видит GPU и работает на полную мощность.
# В логах ты должен увидеть скорость перебора в MH/s.
echo "Starting Profanity benchmark..."
./profanity-brute-force --benchmark
