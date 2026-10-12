#import "../conf.typ": *
#theorem(
  [
    Если $xi_n ->^(L_2) xi$, то $xi_n ->^p xi$
  ],
  [
    По условию $xi_n$ сходится в среднем, что означает $M|xi_n - xi|^2 -> 0$, тогда по неравенству Чебышева:

    $ forall epsilon > 0 quad P {|xi_n - xi| < epsilon} >= 1 - (M |xi_n - xi|^2)/epsilon^2 >= 1, $

    а это и есть сходимость по вероятности.
  ]
)
