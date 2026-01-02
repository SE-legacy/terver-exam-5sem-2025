#import "../conf.typ": *

#definition([
  *Оценка $limits(theta_n)^~$ параметра $theta$ называется не смещенной*, если
  $ M limits(theta_n)^~ = theta $
])

#definition([
  *Оценка $limits(theta_n)^~$ параметра $theta$ называется состоятельной*, если
  $limits(theta_n)^~ ->^p theta$, то есть

  $
    forall epsilon > 0 space : space limits(lim)_(n -> infinity)
      P { | limits(theta_n)^~ - theta | < epsilon } = 1
  $
])


#definition([
  *Оценка $limits(theta^*)^~$ параметра $theta$ называется эффективной*, если
  $ D limits(theta^*)^~ = limits(i n f)_(limits(theta)^~)
      space D(limits(theta)^~) $

])

Эффективная оценка не всегда существует, но оценки можно сравнивать.

Говорят, что оценка $limits(theta_1)^~$ лучше оценки $limits(theta_2)^~$, если
$D(limits(theta_1)^~) < D(limits(theta_2)^~)$

