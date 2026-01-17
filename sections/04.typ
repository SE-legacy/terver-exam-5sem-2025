#import "../conf.typ": *

#theorem(
  [
    Если $xi_n ->^d c$, то $xi_n ->^p c$
  ],
  [
    Функцию распределения

    $ F_c (x) = cases( 0 \, x <= c,
                       1 \, x > c) $
    Рассмотрим $forall epsilon > 0$

    $ P {|xi_n - c| < epsilon} = P{-epsilon < xi_n - c < epsilon} = \
      P{c - epsilon < xi_n < c + epsilon} >= 
      P{c - epsilon < xi_n < c + epsilon / 2} = \
      F_(xi_n) (c + epsilon / 2) -
      F_(xi_n)(c - epsilon) ->^d F_epsilon (c + epsilon / 2) - F_epsilon (c - epsilon) = 1 - 0 = 1 $

    Получим $forall epsilon > 0 quad P {|xi_n - c| < epsilon} >= 1$, 
    
    но $P{A} <= 1 =>$ 
    
    $ lim_(n->infinity) P{|xi_n - c| < epsilon} = 1 => xi_n ->^p c $
  ]
)