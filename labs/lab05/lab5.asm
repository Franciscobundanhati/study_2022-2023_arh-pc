; hello.asm
SECTION .data ; Начало секции данных
name: DB 'Nati Francisco ',10 ;
; символ перевода строки
nameLen: EQU $-name ; Длина строки hello
SECTION .text ; Начало секции кода
GLOBAL _start
_start: ; Точка входа в программу
mov eax,4 ; Системный вызов для записи (sys_write)
mov ebx,1 ; Описатель файла '1' - стандартный вывод
mov ecx,name ; Адрес строки 
mov edx,nameLen ; Размер строки 
int 80h ; Вызов ядра
mov eax,1 ; Системный вызов для выхода (sys_exit)
mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
int 80h ; Вызов ядра
