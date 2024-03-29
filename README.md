## О скрипте
Cкрипт LSN-Helper специально для проекта MyHome Role Play и организации Los Santos News

## Функция скрипта
- Активация автоматическая
- Имеется авто-обновление (ваш страх и риск), если появится обновление вводите /verify для подтверждение
- Заменяет простой диалог для редактирование объявление на улучшенном окне
- В каждом объявление вставляет также и в поле, поправляете и отправляете
- При публикации скрипт собирает информацию
- Если отправитель отправит прошлой текст без изменения, то скрипт вставляет в поле прошлой отредактированный текст с предупреждением

**Кнопка "Передать /rb"**. Как обычно в рации ООС будет выводить: ник, цена и текст объявление. Нажимают если не понятно о чем пишет либо подозреваете, неважно

**Кнопка "Поиск"**. Появляется 3 элемента в новом окне с тёмном фоне: текст объявление, поиск вводное поле и результаты поиска (входит скролл-бар). Кнопка ` > ` позволяет вставлять в поле для редактирование объявление, а также закрывает окно поиска

- **Проблема с поиском**
  - При маленькой буквы не будет отображается большие буквы в результаты поиска. Решение: нужно удалить большие буквы или заменить на большой. Например: "Куплю" -> "уплю", "Ищу" -> "щу", или так "ищу" -> "Ищу"

**Кнопка "Опубликовать"**. В конце должно ставить знаки препинания иначе не будет опубликоваться. Если всё в порядке, то отправляет без подтверждения

**Кнопка "Отклонить"**. Тоже самое, но и без знаки препинания. Без указанной причин не будет отправляется по умолчанию "не указана"

## Демонстрация работы
**Скриншоты:**
![img1](https://user-images.githubusercontent.com/63658002/179123565-4e33ae00-a519-4668-b09c-c113d2540898.png)
![img2](https://user-images.githubusercontent.com/63658002/179123482-25f8c4c3-75d0-48aa-95d6-435eed6fe0c2.png)

**Видеозапись (кликбательно):**

[![vid1](https://img.youtube.com/vi/6dxjjc33F_Q/0.jpg)](https://youtu.be/6dxjjc33F_Q)

## Требование
- **MoonLoader:** v0.26 или новое
- **Библиотеки MoonLoader** mimgui, ffi, samp.events (SAMP.lua), inicfg
- **SAMPFUNCS:** 5.4.1-final или новое (для лаунчера только 5.4.1-final)

## Установка
**Папка**. Распакуете папка install и скидываете в корней игры, где есть gta_sa.exe

**Скрипт**. Если у вас на сборке заранее установлены MoonLoader и SAMPFUNCS, а также работоспособны в любом скрипте. В таком случае скрипт (LSN-Helper.lua) скидывать в папку moonloader

## Автор скрипта
- Martin Sonnet aka kyrtion
- VK: https://vk.com/kyrtion
- Discord: kyrtion#7310
