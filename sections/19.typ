#import "../conf.typ": *
#let thetatilde = $limits(theta_n)^~$
#definition([
  *Информация Фишера* в одном наблюдении --- это величина
  $ I(theta) = M ((partial ln f_xi (x, theta)) / (partial theta))^2 $
])

#definition([
  Оценка $thetatilde$ --- *эффективная по Фишеру*, если для нее
  $ D thetatilde = 1 / (n I(theta)) $

  Если $thetatilde$ --- эффективная по Фишеру, то по теореме о единственности
  она эффективна.
])
