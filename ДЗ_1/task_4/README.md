## task_4

### Задание:

В файле `ips.txt` записаны IP-адреса (по одному на каждой строчке).

Написать скрипт, считывающий IP-адреса из этого файла, пингует (команда `ping`) 
их и записывает результат в `res.txt`, а ошибки -- в `err.txt`.

Подсказка: 
```bash
while IFS= read -r line; do
    echo "Text read from file: $line"
done < my_filename.txt
```

#### Файлы:
+ ips.txt - входные данные;
+ solution.sh - файл с решением.
