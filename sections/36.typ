#import "../conf.typ": *

Пусть дана гипотеза $H_0: \" theta = theta_0 \"; space H_1: \" theta > theta_0
\"$.

Рассмотрим общий случай:
$
  H_0: \" theta <= Theta_0 \"\
  H_1: \" theta in.not Theta_1 \"\
  Theta_0 inter Theta_1 = diameter
$

Ошибка первого рода
$
  alpha (theta) = P { overline(X)_n in w | M_0} theta_0 in Theta_0
$

Ошибка второго рода
$
  beta (theta) = P { overline(X)_n in overline(w) | H_1 } theta_1 in Theta_1
$

#image("images/05.png", height: 30%)

#definition([
  *Размер критерия* --- $alpha = max_(theta in Theta_0) alpha (theta)$
])

#definition([
  *Функция мощьности критерия* --- называется $m(theta) = P {overline(X)_n in w}$
  $=>
    cases(
      alpha (theta) = m(theta)\, space theta in Theta_0,
      beta (theta) = 1 - m(theta)\, space theta in Theta_1
    )
  $
])

#definition([
 *Равномерно наиболее мощным критерием* называется критерий $K(overline(X)_n)$
  который при фиксировнном размере $alpha$ максимизирует функцию мощности по
  всем $theta in Theta_1$
])

== Задача
Дана выборка $X_1, dots X_n ~ N (a, sigma^2)$ $sigma^2$ --- известно
$
  H_0: \"a = a_0\"\
  H_1: \"a > a_0\"\
$

$alpha$ --- задано

#image("images/06.png", height: 15%)

Заметим, что $(a_0, infinity)$  состоит $a_1 > a_0$
$
  H_1: \" a > a_0 \" = \" union {a = a_1}\"
$

Пусть $a_1$ --- фиксированно, тогда
$
  H_0: \" a = a_0 \"\
  H_1: \" a = a_1 \"\
  a_0 < a_1
$

Ее решение по критерию Н-П
$
  C = n a_0 + u_(0.5 - alpha) sigma sqrt(n)
$

#image("images/07.png", height: 10%)

Заметим, что $C$ не зависит от выбора $a_1 => $ будет верно при $forall a$ из $H_1$

Мощность: $1 - beta = 0.5 - Phi(u_(0.5 - alpha) -(sqrt(n) (a_1 - a_0))/sigma) =
1 - F(u_(0.5 - alpha) -(sqrt(n) (a_1 - a_0))/sigma)$

