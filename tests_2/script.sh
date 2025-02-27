#!/bin/test_2

# Записываем время начала
start_time=$(date +%s)

# Ищем слово php7.4 в файлах логов и считаем количество строк
log_directory="/path/to/logs"
search_word="php7.4"
result_file="output.txt"

total_count=0

for file in "$log_directory"/*; do
  if [ -f "$file" ]; then
    count=$(grep -c "$search_word" "$file")
    total_count=$((total_count + count))
  fi
done

# Записываем время окончания
end_time=$(date +%s)

# Вычисляем время выполнения
execution_time=$((end_time - start_time))

# Выводим результат
echo "Total lines with '$search_word': $total_count"
echo "Script execution time: $execution_time seconds"

# Перенаправляем вывод в файл
echo "Total lines with '$search_word': $total_count" > "$result_file"
echo "Script execution time: $execution_time seconds" >> "$result_file"
