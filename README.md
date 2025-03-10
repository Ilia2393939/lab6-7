# Здравствуйте, уважаемые студенты. 
## Вашему вниманию представлены лабораторные работы номер 6 и 7 по дисциплине "Языки программирования".

При форке репозитория Вы редактируете свой README.md файл таким образом:

```Markdown
README.md:

<Погорелов Илья Андреевич> + <СКБ221> + <pogorelllovilllia> >
```
## Для обоих вариантов создать `Makefile` с возможностью сборки, `clean` и `distclean`. В случае использования `gtest`, использовать систему `CMake`. 
### Отчёты обязательны для всех. Необходимо описать функционал, используемые функции, приложить код (не скриншоты), сохранить в формате .pdf (иные форматы оцениваются в 0 баллов) в своём репозитории. 
Для удобства можете (и крайне рекомендуется) использовать Doxygen (имеется документация на оф. сайте).

---
Лабораторные работы номер 6 и 7 требуют знаний по темам: 
- ООП
- Виртуальные классы
- Чисто виртуальные классы 
- Генерация псевдослучайных чисел в C++


--- 

Ваня учится на первом курсе направления "Компьютерная безопасность" в МИЭМе и пытается научится программировать. Чтобы наверстать упущенные знания, он записался на кружок в ЭмГэТУУ им. Сарумана. Придя на первое занятие, он обнаружил, что проход туда только по номеру студенческого билета. Применив свои навыки социальной инженерии, Ваня выяснил, что номера студенческих билетов этих университетов крайне похожи:
- В МИЭМе билеты имеют общий вид SYYYYMMDDNNNNNC, где S - пол (8 для мужчин и 4 для женщин), YYYYMMDD - день рождения, NNNNN - псевдослучайное число, уникальное для даты рождения. То есть, два одинаковых номера могут попадаться дважды для разных дат). C - это цифра, подобранная так, чтобы сумма, состоящая из цифр студбилета, умноженных на их позицию в номере слева направо, начиная с 1, делилась на 11.
 - В ЭмГэТУУ студаки имеют вид SYYYYMMDDNNNNC, где S - пол (1 для женщин, а 2 для мужчин), YYYYMMDD - дата рождения, NNNN - четырёхзначное псевдослучайное число, подобранное так, чтобы оно было уникально для даты рождения, а C - это цифра, подобранная так, чтобы сумма, состоящая из цифр студбилета, умноженных на их позицию в номере слева направо, начиная с 1, делилась на 10.
 
 В ЛР 6 необходимо реализовать:

 - Виртуальный класс-интерфейс для генераторов номеров студбилетов, от которого необходимо отнаследоваться два раза: МИЭМовским и ЭмГэТУУшным классом-генератором (рекомендуется изучить ключевые слова `override` и `final`). Протестировать на примерах. 
 
Код программы должен содержать ввод с консоли флага --tofile и --fromfile. Первый говорит нам, что ввод будет задан в заданный пользователем в командной строке файл (в случае отсутствия файла создать его), а второй говорит о считывании из файла заданного пользователем. Предусмотреть возможность исполнения обоих флагов. Учесть возможность некорректного ввода и обработать исклюючения. На дополнительный балл (на 10 баллов) добавьте тесты, по возможности Google-Tests.
 
В ЛР 7:
 - Реализуйте класс-генератор общего вида, используя паттерн Шаблонный Метод (необходимо изучить самостоятельно, [вот](https://pastebin.com/9DUVRaxm) пример кода с комментариями с данным паттерном).
 
 ### Разрешается пользоваться STL (особенно полезно использовать словарь), `std::string` (но рекомендуется `cstring` с точки зрения Вашего будущего экзамена) при условии Вашего знания того, что вы используете.
 
 
Вот как примерно выглядит вызов Вашей итоговой функции:

```C++
template_pattern_student_number_generator templateGenerator;
 std::string SB_1 = templateGenerator.generator("MIEM")->generate(
 sex::woman, 2002, 11, 11);
 std::string SB_2 = templateGenerator.generator("MGTUU")->generate(
 sex::man, 2004, 09, 12);
 std::string SB_3 = templateGenerator.generator("MGTUU")->generate(
 sex::woman, 2003, 08, 11);
 ```
 
 
