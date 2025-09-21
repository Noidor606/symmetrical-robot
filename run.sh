#!/bin/bash

# ОБНОВЛЯЕМСЯ И СТАВИМ ЗАГРУЗЧИК
apt-get update -y && apt-get install -y wget

# СКАЧИВАЕМ КЛИЕНТ HONEYGAIN
wget https://github.com/honeygain/honeygain-docker-x86/raw/main/honeygain -O honeygain

# ДАЕМ ПРАВА НА ИСПОЛНЕНИЕ
chmod +x honeygain

# ЗАПУСКАЕМ ПРИЗРАКА.
# ОН САМ УЙДЕТ В ФОН.
# -tou-accept: автоматически принимает условия использования
# -email: твоя почта на Honeygain
# -pass: твой пароль на Honeygain
# -device: имя твоего воркера
./honeygain -tou-accept -email ethabuse005 -pass rodion20110122 -device koyeb-ghost

# Бесконечный цикл, чтобы контейнер не умер после запуска
tail -f /dev/null
