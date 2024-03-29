---
layout: post
title: "Соединяю Дюну и BF // Devlog #1"
---

Изначально пост был опубликован [здесь](https://dtf.ru/indie/2474902-soedinyayu-dyunu-i-bf-devlog-1).

## Предпосылки

Моддингом игры Dune: The Battle for Arrakis люди занимаются очень давно. В случае с игрой на Sega Genesis это скорее не моддинг, а ромхакинг - за последние годы игру разобрали по кусочкам: добавили новые дома, юниты, карты и даже есть попытки добавить сетевой режим, в который можно играть прямо в эмуляторе.

Я, будучи еще зеленым школьником, в 2009-2010 году тоже поучаствовал в "хакинге" игры на Sega. Нашел характеристики юнитов в ром-файле и написал даже небольшой редактор на Delphi.

[Dune Unit Editor](https://vas3k.club/project/535)

Позже я забросил ромхакинг, ибо учеба и подготовка к поступлению занимали меня больше. Однако я не оставлял мысли о том, чтобы что-то сделать на базе игры.

## Как родилась идея

Годами позже меня затянуло в Battlefield 3 и 4 - я провел там немало часов. И я подумал о том, чтобы попробовать реализовать механики BF в 2d и взять знакомый сеттинг. Выбор пал на мою давнюю знакомую - dune 2.

Я много раз начинал писать прототипы - однако все доходило в основном до создания проекта и его компиляции, дальше не хватало мотивации.

Уже прошло достаточно времени, чтобы я приобрел какие-то стабильные навыки программирования - и теперь я чувствую, что готов сесть и сделать что-то серьезное.

## В чем идея

В качестве прототипа хочу реализовать режим Захват (Conquest) c 2 командами и несколькими базами.

Из механик, которые хотелось бы мне видеть в игре:

- Несколько классов юнитов со своим оружием и особенностями (в оригинале были Infantry, Trooper и Saboteur)
- Посадка и управление техникой
- Захват баз вместе со зданиями (причем здания будут давать разные бонусы).
- Супер-оружие в качестве бонусов за командную работу (как минимум ТЯО DeathHand с соответствующим звуковым предупреждением 😀).
- Большие карты (в оригинале были 32x32 и 64x64 клеток, хочется увеличить и до 512x512, чтобы роль транспорта была высокой).

Из не-механических пожеланий хочу сделать редактор для игры, чтобы любой мог добавлять свои карты, технику, режимы без особых навыков кодирования.

В чудесном мире будущего я бы хотел реализовать мультиплеер, однако пока нет даже какого-то внятного демо, я пока в эту сторону не смотрю.

## Технические детали

Я решил не использовать никакие крупные движки (типа UE, Godot или Unity) для разработки игры. Во-первых, потому что я не особо пока хочу становиться игровым разработчиком фулл-тайм. Во-вторых, мне любопытно поковырять язык Rust. Поэтому я взял библиотеку Bevy - она заявляется как быстрая библиотека на основе ECS-архитектуры.

## Заключение

Спасибо всем тем, кто прочитал эту небольшую заметку до конца. Если вам интересно то, что я пишу или делаю, напишите свое мнение в комментариях - мне бы очень хотелось знать, интересна ли такая игра кому-нибудь, кроме меня.

## P.S. Небольшое техническое видео

Здесь я тестирую посадку пехотинца в транспорт, управление транспортом и столковение транспорта с препятствиями (горами).

[Видео](https://leonardo.osnova.io/628a1d1f-2731-5a66-9389-fe5ef0fb885b/-/format/mp4/)
