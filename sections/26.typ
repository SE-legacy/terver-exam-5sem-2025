#import "../conf.typ": *

#example(
  [
    Пусть $X_1, X_2, dots, X_n ~ cal(N)(a, sigma)$ --- выборка из нормального 
    распределения с математическим ожиданием $a$ и дисперсией $sigma^2$. Оценим
    методом максимального правдоподобия параметры нормального распределения.

    Составим функцию правдоподобия

    $ L(overline(X)_n, a, sigma) = product_(i=1)^n 1 / (sqrt(2 pi) sigma)
      e^(-(X_i - a)^2\/2 sigma^2) = (1 / (sqrt(2 pi) sigma))^n 
      exp (- 1 / (2 sigma^2) sum_(i=1)^n (X_i - a)^2). $

    Возьмем $ln$

    $ ln L (overline(X)_n, a, sigma) = - n / 2 ln 2 pi - n ln sigma - 
      1 / (2 sigma^2) sum_(i=1)^n (X_i - a)^2. $
    
    Вычислим производные и решим соответствующие уравнения

    $
      cases(
        (diff ln L(overline(X)_n, a, sigma)) / (diff a) = 1 / sigma^2 
        sum_(i=1)^n (X_i - a) = 0\, ,
        (diff ln L(overline(X)_n, a, sigma)) / (diff sigma) = - n / sigma +
        1 / sigma^3 sum_(i=1)^n (X_i - a)^2 = 0.
      )
    $

    Получаем

    $ cases(
      n overline(x) - n a = 0 \,,
      -n + 1 / sigma^2 sum_(i=1)^n (X_i - a)^2 = 0.
    ) $

    $ cases(
      a = overline(x) \,,
      -n + 1 / sigma^2 sum_(i=1)^n (X_i - a)^2 = 0.
    ) $

    Решение этой системы, таким образом, имеет вид $a = overline(x), space
    sigma^2 = S^2.$

    Докажем, что эти значения доставляют максимум функции правдоподобия.

    $
      cases(
        (diff^2 ln L(overline(X)_n, a, sigma)) / (diff a^2) = - n / sigma^2 
        |_(sigma^2 = S^2) = - n / S^2 < 0 \, ,
        (diff^2 ln L(overline(X)_n, a, sigma)) / (diff sigma^2) = n / sigma^2 -
        3 1 / sigma^4 sum_(i=1)^n (X_i - a)^2 |_(a = overline(x), sigma^2 = S^2)
        = - 2 n / S^2 < 0 \,,
        (diff^2 ln L(overline(X)_n, a, sigma)) / (diff sigma diff a) = - 2 / 
        sigma^3 sum_(i=1)^n (X_i - a) |_(a=overline(x), sigma^2 = S^2) = 
        - 2 / sigma^3 (n overline(x) - n overline(x)) = 0. 
      )
    $

    Таким образом, оценками, полученными ММП, параметров нормального 
    распределения являются $limits(a)^\^ = overline(x), space, limits(sigma^2)
    ^\^ = S^2.$
  ]
)