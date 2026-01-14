#import "../conf.typ": *

== Применение ММ к построению оценок параметров $"Bin"(m, p)$

$
(X_1, dots, X_n) ~ "Bin"(m, p)
$
т.е. $F_(X_1) (x) = F_(X_n) (x) = F_xi (x)$

$
P{X_1 = k} = C^k_m p^k q^(m-k) 
$

Метод моментов:
$ 
m_1 = M xi = m p \
limits(m_1)^~ = 1 / n limits(sum)^n_(i=1) X_i = overline(x) 
$

Составляем уравнение:
$ 
m p = overline(x) => limits(p_m)^~ = overline(x) / m 
$

== Применение ММ к построению оценок параметров $R(a, b)$
Пусть по выборке
$X_1, dots, X_10 ~ R(a, b)$,
где 
$overline(x) = 2.3$,
$S^2 = 4.41$
требуется оценить параметры $a, b$ равномерного распределения.

$
m_1 = M xi = (a + b) / 2 \
limits(m_1)^~ = overline(x) \
mu_2 = D xi = (b - a)^2 / 12 \
limits(mu_2)^~ = 1 / n sum_(i = 1)^(n) (X_i - overline(x))^2 = S^2 
$

Метод моментов:

$
cases(
  m_k = limits(m_k)^~,
  mu_k = limits(mu_k)^~
)\

cases(
  (a + b) / 2 = 2.3,
  (b - a)^2 / 12 = 4.41
)\

cases(
  b + a = 4.6,
  b - a = 2.1 dot 2 sqrt(3)
)\

2b = 4.6 + 4.2 sqrt(3)\
cases(
  limits(b)^~ = 2.3 + 2 sqrt(3),
  limits(a)^~ = 2.3 - 2 sqrt(3)
)
$