# USB2GCODE

This set of scripts will mount USB storage devices automatically to Klipper GCODE default location:
```
~/printer_data/gcodes/USB/{Label or UUID}
```

## Requirenents
Debian-based system with systemd and klipper installed

Clone this repository to klipper user home directory and execute install script:

```
cd ~
git clone https://github.com/evgs/usb2gcode
cd usb2gcode
./install.sh
```
## Notes
1. Web-interfaces should be notified manually after USB device was plugged (Refresh Directory)
2. KlipperScreen will not show `USB` directory and subdirs until *.gcode files will be found on plugged drive

Based on discussion here https://www.linux.org.ru/forum/linux-hardware/17416863

------

Этот набор скриптов занимается автомонтированием USB-накопителей в директорию printer_data/gcodes/USB
Флэшки могут подключаться как до загрузки операционной системы, так и в горячем режиме.

```
~/printer_data/gcodes/USB/{Label or UUID}
```

## Системные требования: 
- Debian-подобный дистрибутив, в т.ч. Armbian, Raspberry OS, Ubuntu, и т.д;
- Наличие systemd;
- Установленный klipper (в инсталляторе жёстко прописан путь монтирования накопителей)

## Установка:
Скачать содержимое данного репозитория в домашнюю директорию пользователя, где установлен и настроен klipper. Выполнить скрипт установки:

```
cd ~
git clone https://github.com/evgs/usb2gcode
cd usb2gcode
./install.sh
```

## Заметки:
1. В настоящий момент скрипты не сообщают мунракеру/мэйнсэйлу/флюиду о факте подключения, поэтому требуется ручками нажать кнопку Refresh Directory
2. KlipperScreen не показывает директорию USB, если на флэшке нет файлов *.gcode

Оригинальный скрипт взят отсюда: https://www.linux.org.ru/forum/linux-hardware/17416863
( Исправлены ошибки монтирования по метке тома, исправлено размонтирование, добавлена возможность задания точки монтирования. Скрипты установки на целевую систему и удаления. )
