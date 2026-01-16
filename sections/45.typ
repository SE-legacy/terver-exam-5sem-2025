#import "../conf.typ": *

Оценим дисперсию ошибок $sigma^2$. По теореме Гаусса-Маркова имеем "наилучшие" оценки коэффициентов регрессии $a, b$. 

Обозначим через $accent(Y, \^) = accent(a, \^) + accent(b, \^) X_t$ прогноз значения $Y_t$ в точке $X_t$. Остатки регрессии $e_t$ определяются из уравнения $Y_t = accent(Y, \^) + e_t = accent(a, \^) + accent(b, \^) X_t + e_t$. Остатки $e_t$, также как и ошибки $epsilon_t$, являются случайными величинами, однако остатки, в отличие от ошибок, наблюдаемые.

Оценка $sigma^2$ связана с суммой квадратов остатков регресии $e_t = Y_t - accent(a, \^) - accent(b, \^) X_t$. В самом деле,
$
limits(sum)^n_(t = 2) e^2_t =

limits(sum)^n_(t = 1) (Y_t - accent(a, \^) - 
accent(b, \^) X_t)^2 = 

limits(sum)^n_(t = 1) (overline(Y) + y_t - accent(a, \^) - 
accent(b, \^) overline(x) - 
accent(b, \^) x_t)^2 =

limits(sum)^n_(t = 1) (y_t - accent(b, \^) x_t)^2 = \

= limits(sum)^n_(t = 1) (overline(Y) + y_t - accent(a, \^) - 
accent(b, \^) overline(X) - 
accent(b, \^) x_t)^2 = 

limits(sum)^n_(t = 1) ((b - accent(b, \^)) x_t + 
(epsilon_t - overline(epsilon)))^2 = \

= x^2_t (b - accent(b, \^))^2 + 
2 (b - accent(b, \^)) limits(sum)^n_(t = 1) x_t (epsilon_t - overline(epsilon)) + 
limits(sum)^n_(t = 1) (epsilon_t - overline(epsilon))^2 =
 \ 
= "I + II + III"
$

Вычислим математическое ожидание $M limits(sum)^n_(t = 1) e^2_t = M(I) + M("II") + M("III")$

$
M(I) = 

M(limits(sum)^n_(t = 1) x^2_t (b - accent(b, \^))^2) = 

limits(sum)^n_(t = 1) x^2_t V(accent(b, \^)) = 

limits(sum)^n_(t = 1) x^2_t sigma^2 / (limits(sum)^n_(k = 1) x^2_k) =

sigma^2
$

Введём обозначение 
$
omega_t = x^2_t / (limits(sum)^n_(k = 1) x^2_k)
$

Используя соотношение
$
accent(b, \^) = 

limits(sum)^n_(t = 1) omega_t y_t = 

limits(sum)^n_(t = 1) omega_t (b x_t + epsilon_t - overline(epsilon)) =

b + 
limits(sum)^n_(t = 1) omega_t epsilon_t
$

Получаем
$
M("II") = 

-2 M(
  limits(sum)^n_(t = 1) t omega_t epsilon_t 
  limits(sum)^n_(t = 1) x_s 
    (
      epsilon_s - overline(epsilon)
    )
) =

-2 M(
  limits(sum)^n_(t = 1) t s omega_t s_x epsilon_t epsilon_s - 
  limits(sum)^n_(t = 1) t omega_t epsilon_t overline(epsilon) 
  limits(sum)^n_(t = 1) s x_s
) = \

= -2 limits(sum)^n_(t = 1) t omega_t x_t sigma^2 = -2 sigma^2
$

$
M("III") = 

M(
  limits(sum)^n_(t = 1) epsilon^2_t - 
  2 overline(epsilon) limits(sum)^n_(t = 1) epsilon_t + 
  n overline(epsilon^2)
) =

n sigma^2 - 2 n 1 / n sigma^2 + n 1 / n sigma^2 = (n - 1) sigma^2
$

Таким образом, $M limits(sum)^n_(t = 1) e^2_t = M(I) + M("II") + M("III") = sigma^2 - 2 sigma^2 + (n - 1) sigma^2 = (n - 2) sigma^2$.

Отсюда следует, что $s^2 = accent(sigma, \^)^2 = 1 / (n - 2) limits(sum)^n_(t = 1) e^2_t$ является несмещенной оценкой дисперсии ошибок $sigma^2$.