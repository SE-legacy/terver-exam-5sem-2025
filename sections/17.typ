#import "../conf.typ": *
#definition([
  *Параметрической (статической) моделью* называется совокупность
  $
    { X_n; space F_xi (x, theta) space : space theta in Theta }
  $

  где $X_n$ -- выборочное пространство, $F_xi (x, theta)$ --- функция
  распределения наблюдаемой случайной величны $xi$, известная с точностью до
  параметра $theta, Theta$ --- множество значений параметра $Theta$.
])

#definition([
  Параметрическая модель называется *регулярной*, если:

  + параметрическое множество открытое.
  + носитель распределения, то есть $A = { x space : space f(x) > 0 }$ не
    зависит от параметра распределения.
  + производная
    $ (partial ln f(x, theta)) / (partial theta) > 0 space (< + infinity)
      space forall theta in Theta, space x in A$.
  + $ M((partial ln f(x, theta)) / (partial theta)) = 0
    , M((partial ln f(x, theta)) / (partial theta))^2 < + infinity$.
  + Возможно дифференцирование по параметру $theta$ под знаком интеграла дважды.
])
