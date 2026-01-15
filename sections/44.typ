#import "../conf.typ": *

Пусть рассматривается нормальная регрессионная модель, т.е.
$epsilon_t ~ cal(N)(0; sigma^2)$.
Тогда 
$overline(epsilon) ~ cal(N)(0; underbrace(sigma^2 I_n, "един. матр. разм. n"))$,
где
$overline(epsilon) = (epsilon_1, dots, epsilon_n)$ ---
вектор ошибок модели, 
$epsilon_t$ --- н. о. р. сл. в.

+ $Y_t = a + b X_t + epsilon_t => M Y_t = a + b X_t$\
  $accent(y, ->) ~ cal(N)(a + b overline(x); sigma^2 I_n), space accent(y, ->) = (y_1, dots, y_n)$\
  $accent(a, \^) ~ cal(N)(a; sigma^2 (sum X^2_t) / (n sum X^2_t)) space space accent(b, \^) ~ cal(N)(b; sigma^2 1 / (limits(sum)^n_(t = 1) X^2_t))$

+ Дисперсия ошибок $epsilon_t$\
  $overline(epsilon) ~ cal(N)(0;  sigma^2 I_n); ((n - 2) S^2) / sigma^2 ~ cal(chi)^2 (n-2)$\
  $S^2 = limits(sum)^n_(t = 1) (epsilon_t - overline(epsilon))^2; space overline(epsilon) = 1 / n limits(sum)^n_(t = 1) epsilon_t$

+ Дисперсия ошибок $S^2$, оценки $accent(a, \^)$, $accent(b, \^)$ --- независимые сл.в. 