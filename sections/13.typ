#import "../conf.typ": *
*Свойства:*
+ $forall x in RR quad limits(F_n)^~ in [0, 1]$
+ $limits(F_n)^~ (x)$ --- ступенчатая кусочно непрерывная функция, неубывающая,
  непрерывная слева
+ $#[При] x < x_1 quad limits(F_n)^~ (x) = 0$ \
  $#[При] x > x_n quad limits(F_n)^~ (x) = 1$
+ Случайная величина $mu_n (x) ~ B i n (n; F_xi (x))$ \
  Действительно при фиксированном $x$ рассмотрим событие ${X_i < x}$. Так как
  $X_i$ распределены, как $xi$, то $forall x space P{X_i < x} = P{xi < x}
  = F_xi (x)$\
  $cal(M) mu_n (x) = n dot p = n dot F_xi (x)$ \
  $cal(D) mu_n (x) = n p q = n F_xi (x) (1 - F_xi (x))$
+ $cal(M) limits(F_n)^~ (x) = F_xi (x)$ \
  $cal(D) limits(F_n)^~ (x) = (F_xi (x) (1 - F_xi (x))) / n$
+ #theorem([
    *(Гливенко)*
    $ limits(F_n)^~ (x) ->^p F_xi (x) $
  ],[
    _Доказательство._ Действительно по неравенству Чебышёва
    $
      forall epsilon > 0 space P{|limits(F_n)^~ (x) - F_xi (x)| < epsilon}
      >= 1 - (overbrace(F_xi (x), in [0, 1]) overbrace((1 - F_xi (x)),
      in [0, 1])) / (n epsilon^2) ->_(n -> infinity) 1
    $

    так как любая вероятность $<= 1$, то $exists limits(lim)_(n -> infinity)
    P {|limits(F_n)^~ (x) - F_xi (x)| < epsilon} = 1 =>
    limits(F_n)^~ (x) ->^p F_xi (x)$
  ])
