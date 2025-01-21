---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
author: "Дмитрий Сергеевич Кулябов"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Здесь приводится формулировка цели лабораторной работы. Формулировки
цели для каждой лабораторной работы приведены в методических
указаниях.

Цель данного шаблона --- максимально упростить подготовку отчётов по
лабораторным работам.  Модифицируя данный шаблон, студенты смогут без
труда подготовить отчёт по лабораторным работам, а также познакомиться
с основными возможностями разметки Markdown.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно про Unix см. в [@tanenbaum_book_modern-os_ru; @robbins_book_bash_en; @zarrelli_book_mastering-bash_en; @newham_book_learning-bash_en].

# Выполнение лабораторной работы

![Создание каталога](image/01.png){#fig:001 width=96%}
Создаём каталог для работы с программами на языке ассемблера NASM и создаём текстовый файл с именем hello.asm. Затем открываем файл с помощью текстового редактора gedit и вводим в него текст файла (рис. [-@fig:001])

![Превращение в объектный код](image/02.png){fig:002 width=97%}
После того, как мы превратили текст в объектный код, мы скомпилируем исходный файл hello.asm в obj.o. Формат выходного файла будет elf, и в него будут включены символы для отладки, а так же будет создан файл листинга list.lst (рис. [-@fig:002])

![Передаём на обработку компоновщику](image/03.png){fig:003 width=98%}
Передаём на обработку компоновщику, используя расширение -o (рис. [-@fig:003])

![Задаём имя](image/04.png){fig:004 width=97%}
Задаём имя создаваемого исполняемого файла с помощью ключа -o (рис. [-@fig:004])

![Запуск файла](image/05.png){fig:005 width=95%}
Запускаем на выполнение созданный исполняемый файл (рис. [-@fig:005])

# Самостоятельная работа 

![lab4](image/06.png){fig:006 width=96%}
В каталоге ~/work/arch-pc/lab04 с помощью команды cp создаём копию файла hello.asm с именем lab4.asm (рис. [-@fig:006])

![Компановка](image/07.png){fig:007 width=97%}
С помощью текстового редактора gedit внесим изменения в текст программы в файле lab4.asm так, чтобы вместо "Hello world!" на экран выводилась строка с моими именем и фамилией. Затем оттранслируем полученный текст программы lab4.asm в объектный файл. Выполним компоновку объектного файла и запустите получившийся исполняемый файл (рис. [-@fig:007])

![Копируем в репозиторий](image/08.png){fig:008 width=97%}
Скопируем файлы hello.asm и lab4.asm в локальный репозиторий (рис. [-@fig:008])

![Загружаем на Github](image/09.png){fig:009 width=97%}
Загружаем файлы на Github (рис. [-@fig:009])

# Выводы

В ходе лабораторной работы по освоению процедуры компиляции и сборки программ, написанных на ассемблере NASM, мы приобрели практические навыки, необходимые для создания исполняемых файлов из исходного кода, написанного на ассемблере.

# Список литературы{.unnumbered}

::: {#refs}
:::
