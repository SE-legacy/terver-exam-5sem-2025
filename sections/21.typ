#import "../conf.typ": *
#theorem([
  *(О несмещенной и состоятельной оценке математического ожидания):*

  Пусть $X_1, dots, X_n$ --- выборка из распределения $cal(L)$ с $M xi = a < +
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

  *Состоятельность:* $overline(X)_n ->^p a$

  По неравенству Чебышёва

  $
    forall epsilon > 0 space P{|overline(X)_n - a| gt.eq epsilon}
      lt.eq (D overline(X))/epsilon^2
      = 1 / epsilon^2 D (1/n limits(sum)_(i = 1)^n X_i) =\
      = 1 / epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D (X_i)
      = 1 / epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D xi =\
      = 1 / epsilon^2 dot 1/n^2 dot n dot sigma^2
      = sigma^2 / (n epsilon^2) ->_(n -> infinity) 0
  $

  Т.к. $P(A) gt.eq 0$, то $exists limits(lim)_(n -> infinity) P{|overline(X)
  - a| gt.eq epsilon} = 0 => overline(X) ->^p a$

  т.е. состоятельная оценка

])
