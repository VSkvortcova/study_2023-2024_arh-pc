; hello.asm
SECTION .data                               ; Начало секции данных
	hello:	DB 'Veronika Skvortcova',10 ; 'Hello world!' плюс
	                                    ; Символ перевода строки
	helloLen:	EQU $-hello         ; Длина строки hello
	
SECTION .text             ; Начало кода
	GLOBAL _start
	
_start:                   ; Точка входа в программу
	mov eax,4         ; Системный вызов для записи (sys_write)
	mov ebx,1         ; Описатель файла '1' - стандатый вывод
	mov ecx,hello     ; Адрес строки hello в ecx
	mov edx,helloLen  ; Размер строки hello
	int 80h
	
	mov eax,1         ; Системный вызов для входа (sys_exit)
	mov ebx,0         ; Выход с кодом возврата '0' (без ошибок)
	int 80h           ; Вызов ядра
