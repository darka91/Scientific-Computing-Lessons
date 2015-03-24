% derivative of the internal energy function Q1 of temperature using a piecewise linear
% regularization in a small interval [Tc-epsilon, Tc+epsilon]

function y=dQ1(T)
global kL kR hc cL cR rhoL rhoR lambdaL lambdaR Tc TL TR epsilon

if(T<Tc-epsilon)
    % ice
    y = rhoL*cL;
else
    % phase transition in the interval [Tc-epsilon, Tc+epsilon]
    dQdT = ((rhoR*cR*(Tc+epsilon-Tc)+rhoR*hc)-(rhoL*cL*(Tc-epsilon-Tc)))/(2*epsilon);
    y = dQdT;
end
