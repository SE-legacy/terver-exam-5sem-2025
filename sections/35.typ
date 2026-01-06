/ Задача.: Дано показательное распределение $X_1, ..., X_n tilde product(lambda)$, где $lambda$ задана. Пусть $lambda_0 < lambda_1$. Проверить следующие гипотезы:

$ H_0 : \"lambda = lambda_0\", $
$ H_1 : \"lambda = lambda_1\". $

/ Решение.:

Построим оптимальный критерий Неймана-Пирсона (Н-П), то есть:

$ P{phi(overline(X_n)) gt.eq.slant C_phi | H_0 } = alpha, $
$ L(overline(X_n), lambda) = product_(i=1)^(n) lambda e^(-lambda X_i) = lambda^n e^(-lambda limits(sum)_(i=1)^(n) X_i) = lambda^n e^(-lambda n overline(x)). $

Тогда:

$ phi(overline(x)_n) = L(overline(x)_n, lambda_1) / L(overline(x)_n, lambda_0) = lambda_1^n / lambda_0^n dot e^(-lambda_1 n overline(x)) / e^(-lambda_0 n overline(x)) = (lambda_1 / lambda_0)^n e^(-n overline(x) (lambda_1 - lambda_0)). $

Решим неравенство:

$ & phi(overline(x)_n) gt.eq.slant C_phi / ((lambda_1 / lambda_0)^n e^(-n overline(x) (lambda_1 - lambda_0))) gt.eq.slant C_phi \ & => n overline(x) <= 1 / (-lambda_1 - lambda_0) ln (lambda_0^n C_phi) / lambda_1^n = 1 / (lambda_1 - lambda_0) ln lambda_1^n / (lambda_0^n C_phi) = C. $

В качестве критерия:

$ K = sum_(i = 1)^n X_i = n overline(x). $

Из т.в. известно, что:

$ X_i tilde product(lambda) => 2lambda(X_1 + dots + X_n) tilde X^2(2n). $

Тогда:

$ & P{phi(x_n) gt.eq.slant C_phi | H_0 } \ & = P{limits(sum)_(i = 1)^n  X_i lt.eq.slant C | H_0 : \"lambda=lambda_0\" } \ & = P{2lambda_0 limits(sum)_(i = 1)^n X_i < 2lambda_0 C } \ & = alpha = F_chi^2_(2n) (q_alpha). $

Обозначая $2lambda_0C = q_alpha$, получим, что $C=q_alpha/(2lambda_0)$ и:

$ beta & = P{ sum_(i=1)^n X_i > C | H_1 \"lambda = lambda_1\" } \ & = P{ 2lambda_1 sum_(i=1)^n X_i > q_alpha/(2lambda_0) 2lambda_1 } \ & = P{ 2lambda_1 sum_(i=1)^n X_i > (q_alpha lambda_1) / lambda_0 } \ & = 1 - F_chi^2 ((q_alpha lambda_1) / lambda_0). $
