# Берем за основу стандартный, безобидный образ Ubuntu
FROM ubuntu:latest

# Устанавливаем все зависимости, необходимые для компиляции profanity-brute-force
# git - чтобы скачать код
# build-essential, cmake - чтобы его собрать
# libgmp-dev, libssl-dev - криптографические библиотеки
# ocl-icd-opencl-dev - ДРАЙВЕРЫ OpenCL ДЛЯ РАБОТЫ С GPU
RUN apt-get update -y && apt-get install -y \
    git \
    build-essential \
    cmake \
    libgmp-dev \
    libssl-dev \
    ocl-icd-opencl-dev

# Копируем наш скрипт запуска внутрь контейнера
COPY run.sh /app/run.sh
# Даем ему права на исполнение
RUN chmod +x /app/run.sh

# Приказ: при запуске выполнить наш скрипт
CMD ["/app/run.sh"]
