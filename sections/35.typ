Пусть ${X_n; F_xi (x, lambda) : lambda > 0}$ --- показательная параметрическая модель.

Пусть $H_0: \"lambda = lambda_0\"$, $H_1: \"lambda = lambda_1\"$, $lambda_0 < lambda_1$, $f_xi (x) = cases(lambda e^(-lambda)\, & x gt.eq.slant 0\,, 0\, & x < 0.)$

Составим функцию правдоподобия:

$
  L(overline(X)_n, lambda) = product_(i=1)^(n) lambda e^(-lambda X_i) = lambda^n e^(-lambda sum_(i=1)^(n)X_i) = lambda^n exp(-lambda sum_(i=1)^(n)X_i).
$

Отношение правдоподобия:

$
  phi(overline(X)_n) = L(overline(X)_n, lambda_1) / L(overline(X)_n, lambda_0) = (lambda^n_1 exp(-lambda_1 sum_(i=1)^(n) X_i)) / (lambda^n_0 exp(-lambda_0 sum_(i=1)^(n) X_i)) = (lambda_1 / lambda_0)^n exp(-(lambda_1 - lambda_0) sum_(i=1)^(n) X_i).
$

По критерию Неймана-Пирсона для заданного $alpha$:

$ P{phi(overline(X)_n) gt.eq.slant C_phi} = alpha, space C_phi = ? $

Рассмотрим $phi(overline(X)_n) gt.eq.slant C_phi$:

$
  & phi(overline(X)_n) gt.eq.slant C_phi \
  & <=> (lambda_1 / lambda_0)^n exp(-(lambda_1 - lambda_0) sum_(i=1)^(n) X_i) gt.eq.slant C_phi \
  & <=> (lambda_0 - lambda_1) sum_(i=1)^(n) X_i gt.eq.slant ln(lambda_0/lambda_1)^n C_phi \
  & <=> sum_(i=1)^(n) X_i lt.eq.slant 1/(lambda_0 - lambda_1) ln ((lambda_0/lambda_1)^n C_phi) = C.
$

Рассмотрим случайную величину $k = sum_(i=1)^(n) X_i$, где $X_i ~ Pi(lambda)$.

По свойству /* ориг: "..." */ показательного распределения:

$ 2lambda sum_(i=1)^(n) X_i ~ chi^2 (2n) = xi_1^2 + xi_2^2 + ... + xi_(2n)^2; space xi_i ~ N(0, 1). $

Значит, если верна нулевая гипотеза, то случайная величина:

$ alpha lambda_0 sum_(i=1)^(n) X_i ~ chi^2 (2n), $

с функцией распределения $F_chi_(2n)^2 (x)$.

Пусть $alpha$ --- дано. Найдём $q_alpha$ такое, что:

$
  alpha = P{sum_(i=1)^(n) X_i lt.eq.slant C | H_0 } = P{2 lambda_0 sum_(i=1)^(n) X_i lt.eq.slant 2 lambda_0 C } = limits(integral)_(-oo)^q_alpha f_chi_(2n)^2(x) dif x.
$

Значит:

$ 2lambda_0 C = q^2 <=> C = q_alpha / (2 lambda_0). $

Критерий: если $sum_(i=1)^(n) X_i lt.eq.slant q_alpha / (2 lambda_0)$, то нулевую гипотезу следует отвергнуть. В противном случае принять за рабочую.

Ошибка второго рода:

$
  beta = P {sum_(i=1)^(n) X_i > q_alpha / (2lambda_0) | H_1 } = P {2lambda_1 sum_(i=1)^(n) X_i > (q_alpha lambda_1) / lambda_0} = 1 - F_(x_(2n)^2) ((q_alpha lambda_1) / lambda_0).
$
