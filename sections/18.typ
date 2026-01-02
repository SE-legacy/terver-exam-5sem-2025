#import "../conf.typ": *
#theorem([
  *(Неравенство Рао-Крамера)*.

  Пусть $(X_1, dots, X_n)$ --- выборка из распределения случайной величины $xi$
  и ${ X_n, space F_xi (x, theta), space theta in Theta }$ --- регулярна и $limits(theta)^~$ ($overline(X)_n$ несмещенная оценка параметра $theta$).

  Тогда
  $
    D theta_n gt.eq 1 / (n I(theta))
  $
  где
  $
    I(theta) = M ((partial ln f(x, theta)) / (partial theta))^2
  $
],[])
