#import "../conf.typ": *
#definition([
  *Статистикой* назывется случайная величина $T$
  $ T(overline(X)_n) = f (X_1, dots, X_n) $
])
Например, порядковая статистика

$
  theta_([1]) = T_([1]) = min {X_1, dots, X_n} #[--- первая поядковая статистика]\
  theta_([n]) = T_([n]) = max {X_1, dots, X_n} #[--- n-ая поядковая статистика]\
  theta_([(n + 1)/2]) = M e #[--- медиана, n - нечетная]\
  M e = 1/2 (theta_([n/2]) + theta_([(n + 1)/2])) #[если четное]
$

#definition([
  *Оценкой параметра $theta$* называется случайная величина
  $ limits(theta_n)^~ = f (X_1, dots, X_n) $

  $f$ --- измеримая функция
])

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

#definition([
  *Выборочными характеристиками* называются функфции от наблюдений (точечные
  оценки), приближенно оценивающие соответствующие числовые характеристики
  случайной величины.
])
