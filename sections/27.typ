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

== Применение ММ к построению оценок параметров $cal(N)(a, sigma^2)$
$ f(x) = 1 / (sigma sqrt(2 pi)) e^(-(x - a)^2 / (2 sigma^2)) $

$ 
m_1 = M xi, space accent(m_1, ~) = overline(x_B)\ 
m_2 = M(xi - M xi)^2 = D xi, space overline(m_2) = overline(D_B)
$ 

Получим:

$
cases(
  M xi = overline(x_B),
  D xi = overline(D_B)
) \

cases(
  M xi = a = overline(x_B),
  D xi = sigma^2 = D_B
)
$

Находим оценки параметров:

$
cases(
  a = overline(x_B) = 1 / n sum x_i n_i,
  sigma = sqrt(D_B) = sqrt(1 / n sum (x_i - overline(x_B))^2 n_i)
)
$
