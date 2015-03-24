function y=g(gamma)
global kL kR hc rhoR TL TR Tc lambdaL lambdaR

y=gamma*sqrt(kL)*hc*rhoR-...
    lambdaL*(Tc-TL)/erf(gamma)*exp(-gamma^2)/sqrt(pi*kL)-...
    lambdaR*(Tc-TR)/erfc(gamma*sqrt(kL/kR))*exp(-gamma^2*kL/kR)/sqrt(pi*kR);