#import "../conf.typ": *
#theorem([
  *(эффективность оценки мат. ождания)*

  Пусть $(X_1, X_2 , dots, X_n) = overline(X)_n ~ cal(L)_xi (x, theta)$, $M xi = a
  < + infinity$.

  Выб. среднее $overline(x)$ является эффективной оценкой $M xi$
], [

  Доказано, что $M overline(x) = a$ (несмещенное).

  Покажем, что $D overline(x) = i n f D limits(theta_n)^~$ $limits(theta_n)^~$
  --- несмещенная линейная оценка

  Рассмотрим

  $
    limits(theta_n)^~ = limits(sum)^n_(i = 1) alpha_i X_i\

    D limits(theta_n)^~ = D limits(sum)_(i = 1)^n  alpha_i X_i
      = limits(sum)_(i = 1)^n alpha_i^2 overbrace(D X_i, = sigma^2)
      = sigma^2 alpha_i^2
  $

  Заметим, что $limits(sum)_(i = 1)^n alpha_i = 1$; $sigma^2$ ---
  характеристика $xi => $ $min$ может быть достигнут только как $min
  g(overline(alpha)) = limits(sum)_(i = 1)^n alpha_i^2$

  Применим метод поиска условного $min$ составим функцию Лагранжа

  $
  cal(L) (alpha_1, dots, alpha_n)
    = limits(sum)_(i = 1)^n alpha_i^2
      + lambda(limits(sum)_(i = 1)^n alpha_i - 1)\

  cases(
    (nu alpha) / (nu alpha_i)
      = 2 alpha_i + lambda = 0\; quad forall i = overline(1\, n),
    (nu alpha) / (nu lambda) = limits(sum)_(i = 1)^n alpha_i - 1 = 0
  )\

  limits(sum)_(i = 1)^n (- lambda / 2) = 1\

  lambda = - 2 / n
    alpha_i = lambda / 2,
  $

  Получили , что $alpha_i = - lambda / 2 = (- 1 / 2) dot (- 2 / n) = 1 / n$

  $=> g(overline(alpha)) = limits(sum)_(i = 1)^n alpha_i^2
    #[--- достигает минимума при] alpha_i = 1/n$

  $=>$ эффективность является $limits(theta_n)^~ = limits(sum)_(i = 1)^n 1/n
  overline(X) = 1/n limits(sum)_(i = 1)^n X_i = overline(x)$
])
