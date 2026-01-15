#import "../conf.typ": *
Рассмотрим проверку сложных гипотез относительно параметров распределения.

Сложными гипотезами называются гипотезы вида $H_0: \" theta in Theta_0 \", space
Theta_0 in RR, space H_0 : \" a > a_0 \", space H_0: \" a in.not a_0 \"$ и т.п.

Пусть нулевая гипотеза имеет вид $H_0: \" theta in Theta_0 \"$, а конкурирующая
$H_1: \" theta in Theta_1 \"$, где два $Theta_0 inter Theta_1 = diameter$ ---
непересекающиеся множества из $RR$ Тогда вероятности ошибок первого и второго
рода можно рассматривать как заданные на соответствующих множествах функции:

Ошибка первого рода
$
  alpha (theta)
    = P { overline(X)_n = (X_1, X_2, dots, X_n) in W
        |  theta_0 in Theta_0 }
$

Ошибка второго рода
$
  beta (theta)
    = P { overline(X)_n = (X_1, X_2, dots, X_n) in overline(W)
        | theta_1 in Theta_1 }
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
