#import "../conf.typ": *
#theorem([
  *(О несмещенной и состоятельной оценке математического ожидания):*

  Пусть $X_1, dots, X_n ~ cal(L)(x, theta)$ --- выборка из распределения случайной величины $xi$ с $\ M xi = a < +
  infinity$.

  Тогда несмещенной и состоятельной оценкой $M xi$ является выборочная средняя
  $overline(x)$.
],[
  *Несмещенность:* $M overline(x) = a$; ($M overline(x) = M xi$)

  $
    M overline(x) = M (1/n limits(sum)_(i = 1)^n X_i)
      = 1/n limits(sum)_(i = 1)^n M X_i =\
      = mat(delim: "[",
          X_i ~ xi;
          M X_i = M xi;
        )
      = 1/n limits(sum)_(i = 1)^n M xi = 1/n dot n dot a = a
  $

  *Состоятельность:* т.е. что $forall epsilon > 0$ имеет место $limits(lim)_(n
  -> infinity) P{ |overline(x) - a| < epsilon } = 1$.

  По неравенству Чебышёва

  $
    forall epsilon > 0 space P{|overline(x) - a| < epsilon}
      gt.eq 1 -  (D overline(x))/epsilon^2
      = 1 - 1 / epsilon^2 D (1/n limits(sum)_(i = 1)^n X_i) =\
      = 1 - 1 / epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D (X_i)
      = 1 - 1 / epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D xi =\
      = 1 - 1 / epsilon^2 dot 1/n^2 dot n dot sigma^2
      = 1 - sigma^2 / (n epsilon^2) ->_(n -> infinity) 1
  $

  С другой стороны, по свойству вероятности имеем $P{ |overline(x) - a| <
  epsilon } lt.eq 1$. Таким образом, доказано $forall epsilon > 0 space
  limits(lim)_(n -> infinity) P{ |overline(x) - a| < epsilon } = 1$ и оценка
  $overline(x)$ является состоятельной.
])
