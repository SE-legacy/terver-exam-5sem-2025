Пример: (Показать, что $overline(x)$ является эфф. по Р-к оценкой параметра $a$
р-л $N(a; sigma^2)$)

Решение: $(X_1, dots, X_n) ~ N(a; sigma^2) : M X_i = a; quad D X_i = sigma^2$

Вычислим $e(overline(x)) = D (overline(x)) dot n space I(a)$

$
D (overline(x)) = D (1/n limits(sum)_(i = 1)^n X_i) = 1/n^2
  limits(sum)_(i = 1)^n D X_i = 1/n^2 dot n sigma^2 = sigma^2/n
$

$
I(a) = M ((nu ln f (xi, a))/(nu a))^2 = M ( (nu ln)/(nu a)
  dot (1/sqrt(2 pi) e^(- (xi - a)^2/(2 sigma^2))))^2 =\
  = M (nu/(nu a) (- 1/2 ln 2 pi - (xi - a)^2/(2 sigma^2)))^2
  = M ((2 (xi - a))/(2 sigma^2))^2 =\
  = 1/(sigma^4) M (xi - a)^2a = sigma^2/sigma^4 = 1/sigma^2
$

$
e(overline(x)) = sigma^2/n dot n dot 1/sigma^2 = 1
$

Так как $e(overline(x)) = 1$, то $overline(x)$ эффективен по Р-к, по
о единственности эффективности оценки.

$overline(x)$ эффективная оценка $M xi$ в $N(a; sigma^2)$
