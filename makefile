# Компилятор
CC = gcc

# Флаги компиляции
CFLAGS = -Wall -Wextra -std=c11

# Имя исполняемого файла
TARGET = prog

# Исходные файлы
SRCS = app.c 

# Объектные файлы (генерируются из исходных)
OBJS = $(SRCS:.c=.o)

# Правило по умолчанию (собирает всё)
all: $(TARGET)

# Сборка исполняемого файла из объектных
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Компиляция каждого .c файла в .o
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Очистка (удаление объектных и исполняемого файла)
clean:
	rm -f $(OBJS) $(TARGET)

# Запуск программы
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run