#import "../conf.typ": *

#definition([
  *Оценка $limits(theta_n)^~$ параметра $theta$ называется не смещенной*, если
  $ M limits(theta_n)^~ = theta $
])

#definition([
  *Оценка $limits(theta_n)^~$ параметра $theta$ называется состоятельной*, если
  $ limits(theta_n)^~ ->^p theta $
  $ forall epsilon > 0
      P{|overline(X)_n : limits(theta)^~ (X_n) - theta| gt.eq epsilon}
      ->_(n -> infinity) 0 $
])


#definition([
  *Оценка $limits(theta_n)^~$ параметра $theta$ называется эффективной*, если
  $ D limits(theta_n)^~ = limits(i n f)_(limits(theta_n)^~)
      space D(limits(theta_n)^~) $

])

Эффективная оценка не всегда существует, но оценки можно сравнивать.

Говорят, что оценка $limits(theta_1)^~$ лучше оценки $limits(theta_2)^~$, если
$ D(limits(theta_1)^~) < D(limits(theta_2)^~) $

