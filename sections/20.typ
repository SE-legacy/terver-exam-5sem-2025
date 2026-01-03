#import "../conf.typ": *

#example([
  *(Показать, что $overline(x)$ является эффективной по Рао-Крамеру(Р-К) оценкой
  параметра $a$ пауссоновского распределения $P o i s(lambda)$)*

  $(X_1, X_2, dots, X_n) ~ P o i s(lambda)$ Построить эффективную (оптимальную)
  оценку $lambda$
  $
    P{ xi = k } = (e^(- lambda) dot lambda^k) / (k!)
      => forall x_i P{ x_i = k } = P{ xi = k }\
    M x_i = lambda
      , space D x_i = lambda #[(из т.в.)]
      , space M x_i^2 = lambda^2 + lambda
  $

  Пусть $overline(x) = 1 / n limits(sum)^n_(i = 1) x_i$ --- оценка $lambda$.
  $
    M overline(x) = lambda quad D overline(x) = D (1 / n limits(sum)_(i = 1)^n)
      = 1 / n^2 limits(sum)^infinity_(i = 1) D x_i = 1 / n^2 dot n dot lambda
      = lambda / n
  $

  Найдем $I(lambda)$ --- в одном наблюдении
  $
    I(lambda) = M ( (partial ln (lambda e^(- lambda)) / (k!))
                  / (partial lambda) )^lambda
      = M(partial / (partial lambda) (xi ln lambda - lambda - ln xi!)^2) = \
      = M(xi / lambda - 1)^2
      = M(xi^2 / lambda - (2 xi) / lambda + 1)
      = 1 / lambda M xi^2 - 2 / lambda M xi + 1 = \
      = 1 / lambda (lambda^2 + lambda) - 2 / lambda lambda + 1
      = 1 + 1 / lambda - lambda + 1
      = 1 / lambda
  $

  Вычислим $e(overline(x)) = lambda / n dot n dot 1 / lambda = 1 => overline(x)$
  --- эффективная оценка параметра $lambda$
])
