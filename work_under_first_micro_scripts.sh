#!/bin/bash

cp -r $1 $2
# копировать рекурсивно объект 1 в объект 2
rm -rf $1
#удалить объект 1 -r рекурсивно -f для того чтобы не запрашивать подтверждение на действие

ps auxf | grep Firefox | grep -v grep | tr -s | cut -f2 -d " " | xargs kill -9
# вывод процессов сколько памяти используется / поиск нужного процесса / исключение процесса поиска /
# набор символов переводится в 1/найти и вывести колонку номер 2, разбивать колонки по пробелам /
# возьмет найденный объект и передает в процесс завершения.
# команда xargs превращает полученную строку  на стандартный ввод в аргументы и передает их команде

# операторы перенаправления вывода:
#  > перезапись всего файла
# >> запись в файл
# stdin-ввод-0 stdout-вывод-1 stderr-ошибки-3

cat /home/fro/first_pet_project/first_script.sh  # вывод содержания файла

du -h /home/fro/first_pet_project/first_script.sh
# вывод размера файла disk usage

crontab -l
# создание планировщика задач индивидуального

crontab -e
# редактирование планировщика

# *(минуты 0-59) *(часы 0-23) *(день месяца 1-31) *(месяц 1-12) *(день недели вс 0-6 сб) *date >> /tmp/date (команда)

find home/fro/first_pet_project/ -name "*.jpg" -exec mv {} home/fro/first_pet_project/pictures \;
# найти в директории \ название файла \ exec - выполнение действия над всеми найдеными файлами\
# перенести {} - произвести со всеми найдеными файлами \ закрывающая конструкция - \;

stat $SHELL
#метаданные исполняемого файла
file $SHELL
#узнать что это за файл

#переменные окружения: $SHELL $PWD $USER $HOME $PATH

type -a pwd
#тип программы

export CITY=Moscow
# export создает переменное окружение

export CITY="$CITY is the capital of Russia"
# перезаписать переменную окружения

env
# список всех переменных окружений

set
# просмотреть все переменные shell

shell_var="text"
# создание переменной shell

env | grep shel_var
# проверка добавления переменной шел

export shell_var
# экспорт переменной шел в переменные окружения

.bashrc
# файл где храняться переменные окружения куда можно добавить свои переменные окружения
# в которые можно навсегда записать переменные окружения, которые при перезапуске консоли не удалаяются


# переменные в shell script

name=Laptop
age=2

echo "Hi! This is $name, I am $age years old"
today=`date +'%d-%m'` #специальные кавычки бэктики
today=$(date +'%d-%m')
today=$(date +'%d-%m') ; echo $today #однострочная команда вывода

# запомнить, что "$"- обозначение переменной, текст после:
# ? - код возврата последней выполненной команды
# * - все переданные позиционные аргументы
# # - количество переданных позиционных параметров
# $? $* $#

# 0 - успешное выполнение команды
touch newfile ; echo $?
test a = a ; echo $?
test a != b ; echo $?

# 1 - ошибка
grep aaa newfile ; echo $?
test a = b : echo $?

# 2 - ошибка использования встроенных команд шелла
kill ; echo $?

# 126 -команда, которую мы вызвали не может быть исполнена
./newfile ; echo $?

# 127 - команда не найдена
asdasdasdaasdas ; echo $?

#тест файла на параметры
test -k /tmp | echo $?


#-b file — истина, если file существует и является специальным блочным устройством.
#-c file — истина, если file существует и символьное устройство.
#-d file — истина, если file существует и является каталогом.
#-e file — истина, если file существует.
#-f file — истина, если file существует и является обычным файлом.
#-g file — истина, если file существует и имеет установленным групповой идентификатор (set-group-id).
#-k file — истина, если file имеет установленным «sticky» бит.
#-L file — истина, если file существует и является символьной ссылкой.
#-p file — истина, если file существует и является именованным каналом (pipe).
#-r file — истина, если file существует и читаем.
#-s file — истина, если file существует и имеет размер больше, чем ноль.
#-S file — истина, если file существует и является сокетом.
#-t [fd] — истина, если fd открыт на терминале. Если fd пропущен, по умолчанию 1 (стандартное устройство вывода).
#-u file — истина, если file существует и имеет установленным бит пользователя (set-user-id).
#-w file — истина, если file существует и записываемый.
#-x file — истина, если file существует и исполняемый.
#-O file — истина, если file существует и его владелец имеет эффективный идентификатор пользователя.
#-G file — истина, если file существует и его владелец имеет эффективный идентификатор группы.

#проверки файлов - сравнение
a = b | echo $?  # проверка на равенство
a != b | echo $? # проверка на неравенство
a -z | echo $?   # сравнение строки с наличем нуля т.е. = 0
a -n | echo $?   # сравнение строки с отсутствием нуля т.е. !=0


#####
# Условынй оператор if
#### && - логический оператор и
###$ || - логический оператор или
test -d /home/fro/testdir && echo "Success! Directory exists."
# если команды выполнена правильно
test -d /home/fro/testdir || echo "Error! Directory does not exist."
# если команда выполнена неправильно

grep fro /etc/passwd || esradd fro

if [date = 31.12] #квадратные скобки равнозначны команде например: test -d /tmp == [-d /tmp]
then
  echo "Время покупать елку."
else
  echo "Елку покупать еще рано."
fi

#завершение скрипта команда exit 'N'
#где N - вывод скрипта тоесть положительный, где код выполнен (0) или код ошибки - 1, 2, 126, 127
exit 1


############чтобы защититься от пробелов в названии файлов для аргументов их неообходимо заключать в кавычки##################
