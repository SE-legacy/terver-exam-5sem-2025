#import "../conf.typ": *
#let limitstheta = $limits(theta)$
#let thetaarrow = $limitstheta^\^$
#let thetatilde = $limitstheta^~$
#let thetamult = $theta^\*$
#let overlxn = $(overline(X)_n)$
#let cov = $c o v$

#theorem([
  *(О единственности эффективной оценки)*

  Пусть $thetaarrow overlxn$ и $thetatilde overlxn$
  --- 2 эффективные оценки параметра $theta$.

  Тогда $thetaarrow overlxn = thetatilde overlxn$, где
  $P{ overline(X)_n
    in { overline(x)_n space :
      space thetaarrow overlxn
      eq.not thetatilde overlxn } } = 0$
  , то есть эффективная оценка единственна.
], [
  Расмотрим оценку
  $
    thetamult overlxn
      = (thetaarrow overlxn + thetatilde overlxn) / 2
  $
  Так как $thetaarrow overlxn$  и $thetatilde overline(X)_n)$
  эффективные, то $D thetaarrow overlxn = D thetatilde overlxn$,
  и $M thetaarrow overlxn = M thetatilde overlxn = theta$

  Найдем характеристики оценки $thetamult overlxn$.

  $
    M thetamult overlxn
      = M (thetaarrow overlxn + thetatilde overlxn) / 2
      = 1 / 2 (M thetaarrow overlxn + M thetatilde overlxn) = theta.\
    D thetamult overlxn = D (thetaarrow overlxn + thetatilde overlxn) / 2 = \
      = 1 / 4 ( D thetaarrow overlxn
              + D thetatilde overlxn
              + 2 cov(thetaarrow overlxn, thetatilde overlxn) ) = \
      = 1 / 2 D thetaarrow overlxn
        + 1 / 2 cov(thetaarrow overlxn, thetatilde overlxn)
  $

  Имеем
  $
    | cov(thetaarrow overlxn, thetatilde overlxn) |
      = | M (theta - thetaarrow overlxn) (theta - thetatilde overlxn) | lt.eq\
      lt.eq sqrt(M (theta - thetaarrow overlxn)^2 M(theta - thetatilde overlxn)^2)
      = sqrt(D thetaarrow overlxn D thetatilde overlxn)
      = D thetaarrow overlxn
  $

  Тогда
  $
    D thetamult = | D thetamult |
      = 1 / 2 | D thetaarrow overlxn
        + cov(thetaarrow overlxn, thetatilde overlxn) | lt.eq \
      lt.eq 1 / 2 | D thetaarrow overlxn |
        + 1 / 2 | cov(thetaarrow overlxn, thetatilde overlxn) |
      lt.eq D thetaarrow overlxn
  $
  Таким образом, $thetamult$ несмещенная оценка, и ее дисперсия $D thetamult
  overlxn = D thetaarrow overlxn$, и следовательно, оценка $thetamult overlxn$
  также является эффективной.

  Получаем уравнение
  $
    D thetamult overlxn
      = 1 / 2 D thetaarrow overlxn
        + 1 / 2 cov(thetaarrow overlxn, thetatilde overlxn)
  $

  Откуда следует $cov(thetaarrow overlxn, thetatilde overlxn) = D thetaarrow
  overlxn$.

  Вычислим коэффициент корреляции
  $
    r(thetaarrow, thetatilde)
      = (cov(thetaarrow overlxn, thetatilde overlxn))
        / sqrt(D thetaarrow overlxn D thetatilde overlxn)
      = (D thetaarrow overlxn) / (D thetaarrow overlxn) = 1
  $

  Следовательно, величины $thetaarrow overlxn$ и $thetatilde overlxn$ линейно
  связаны
  $
    thetaarrow overlxn = a thetatilde overlxn + b.
  $

  Пользуясь несмещенностью, получаем
  $
    M thetaarrow overlxn = a M thetatilde overlxn + b\
    theta = a theta + b.
  $

  Отсуюда следует, что
  $ a = 1, space b = 0, thetaarrow overlxn = thetatilde overlxn. $
])
