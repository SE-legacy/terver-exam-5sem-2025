#import "../conf.typ": *

#theorem(
  [
    Из сходимости почти наверное вытекает сходимость по вероятности,

    $ {xi_n} ->^(п.н.) xi => {xi_n} ->^p xi. $

    Из сходимости по вероятности вытекает сходимость по распределению,

    $ {xi_n} ->^p xi => {xi_n} ->^d xi. $

    Из сходимости в среднем вытекает сходимость по вероятности,

    $ {xi_n} ->^(l.i.m) xi => {xi_n} ->^p xi. $
  ],
  [
    2. Пусть верно $forall epsilon > 0 space P { |xi_n - xi| >= epsilon } ->_(n -> oo) 0$ \
      Требуется доказать, что $F_n (x_0) -> F_xi (x_0), #[где] x_0 #[--- точка непрерывности] F_xi (x)$ \
      Пусть $x' < x_0 < x''$ \
      #image("images/5.png", height: 10%)
      Рассмотрим $F_xi (x')$:
      $ #rect[$F_xi (x')$] = P {xi < x'} = P {(xi < x' inter (xi_n < x_0 union xi_n >= x_0))} = \
        P {((xi < x') inter (xi_n < x_0)) union (xi < x' inter xi_n >= x_0)} <= \
        P {xi_n < x_0} + underbrace(P {|xi_n - xi| >= underbrace(x_0 - x', epsilon (x_0, x'))}, #[стремится к 0, так как] xi_n ->^P xi) <=
        #rect[$limits(underline(lim))_(n -> oo \ x' -> x_0) F_n (x_0)$] $
      #image("images/6.png", height: 10%)
      $ #rect[$F_n (x_0)$] = P {xi_n < x_0} = P {xi_n < x_0 inter (xi < x'' union xi >= x'')} = \
        = P {(xi_n < x_0 inter xi < x'')} + P {(xi_n < x_0) inter (xi >= x'')} <= \
        <= P {xi < x''} <= #rect[$F_xi (x'')$] $
      $ F_xi (x') <= limits(underline(lim))_(n -> oo) F_n (x_0) <= limits(overline(lim))_(n -> oo) F_n (x_0) <= F_xi (x'') $
      Пусть $x' -> x_0, space x'' -> x_0$. \
      Тогда $limits(lim)_(n -> oo) F_n (x_0) = F(x_0)$

    3. Воспользуемся неравенством Чебышева:

      $ forall epsilon > 0 space P { |xi - M_xi| < epsilon } >= 1 - ((M (xi - M_xi)^2) / epsilon^2) $
      $ forall epsilon > 0 space P { |xi_n - xi| < epsilon } >= 1 - ((M (xi - M_xi)^2) / epsilon^2) >= 1 $
      где $quad (M (xi - M_xi)^2) -> 0$, $quad P {xi > epsilon} <= (M g (xi)) / (g (epsilon))$ --- неравенство Чебышева
  ]
)
