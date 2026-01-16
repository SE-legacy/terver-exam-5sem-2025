#import "../conf.typ": *

Пусть наблюдалась выборка 
$(X_1, Y_1), dots, (X_n, Y_n)$
и выборочный коэффициент значимо отличается от нуля.

Найдем коэффициенты уравнения
$Y = a X + b$,
которое наилучшим образом аппроксимирует
$Y = f(X) (eta = f(xi))$

Величина $Y$ называется зависимой переменной, признаком, величина $X$ называется независимой переменной, фактором, регрессором.

В парной регрессионной модели зависимая переменная зависит только от одного регрессора.

Оценим коэффициенты уравнения через МНК. Будем обозначать $accent(Y, \^)$ --- вычисленные (прогнозные значения)

Согласно МНК требуется найти такие значения оценок параметров
$accent(a, \^)$ и
$accent(b, \^)$,
чтобы была минимальной сумма квадратов отклонений прогнозных значений от наблюдаемых.

$
L(accent(a, \^), accent(b, \^)) = 
limits(sum)^n_(t = 1) (Y_t - accent(Y_t,\^))^2 = limits(sum)^n_(t = 1) (Y_t - (accent(a, \^) + accent(b, \^) X_t))^2 
-> min
$

Значит, для нахождения оценки параметров парной регрессионной модели МНК необходимо найти экстремум  (минимум) функции двух аргументов.

Запишем необходимые условия экстремума:

$
cases(
  (partial L) / (partial accent(a, \^)) = 
  -2 limits(sum)^n_(t = 1) (Y_t - accent(a,
  \^) - accent(b, \^) X_t) = 0,

  (partial L) / (partial accent(a, \^)) =
  -2 limits(sum)^n_(t = 1) X_t (Y_t - accent(a, \^) - accent(b, \^) X_t) = 0
)
$

Раскрывая скобки, получим:

$
cases(
  limits(sum)^n_(t = 1) Y_t - 
  accent(a, \^) n - 
  accent(b, \^) limits(sum)^n_(t = 1) X_t = 0,

  limits(sum)^n_(t = 1) X_t Y_t - 
  accent(a, \^) limits(sum)^n_(t = 1) X_t - 
  accent(b, \^) limits(sum)^n_(t = 1) X^2_t = 0
)
$

Из первого уравнения системы имеем оценку параметра $a$:

$
accent(a, \^) = 
1 / n limits(sum)^n_(t = 1) Y_t - 
accent(b, \^) 1 / n limits(sum)^n_(t = 1) X_t = overline(y) - 
accent(b, \^) overline(x)
$

Преобразуем второе уравнение системы и подставим полученную оценку $accent(a, \^)$:

$
limits(sum)^n_(t = 1) X_t Y_t - 
accent(a, \^) limits(sum)^n_(t = 1) X_t - 
accent(b, \^) limits(sum)^n_(t = 1) X^2_t = 
n overline(x y) - 
accent(a, \^) overline(x) - 
n accent(b, \^) (S^2_x + overline(x)^2) = 0 \

overline(x y) - 
overline(x y) + 
accent(b, \^) overline(x)^2 - 
accent(b, \^) S^2_x - 
accent(b, \^) overline(x)^2 = 0
$

Отсюда получаем оценку параметра $b$:
$
accent(b, \^) = (overline(x y) - overline(x) dot overline(y)) / S^2_x = (overline(x y) - overline(x) dot overline(y)) / (S_x S_y) S_y / S_x = r S_y / S_x
$

Таким образом, решение системы уравнений имеет вид:
$
cases(
  accent(b, \^) = r S_y / S_x,
  accent(a, \^) = overline(y) - accent(b, \^) overline(x)
)
$

Уравнение регрессии $Y$ на $X$ имеет вид:
$
overline(y)_x = overline(y) + r S_y / S_x (x - overline(x))
$

Уравнение регресиии $X$ на $Y$ имеет вид:
$
overline(x)_y = overline(x) + 1 / r S_x / S_y (y - overline(y))
$

Заметим, что каждое из уравнений имеет $overline(x)$ своим решением, т.е. графики проходят через точку $(overline(x), overline(y))$ --- центр совместного распределения величин $X$ и $Y$.