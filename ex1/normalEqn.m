function [theta] = normalEqn(X, y)
  %NORMALEQN Computes the closed-form solution to linear regression 
  %   NORMALEQN(X,y) computes the closed-form solution to linear 
  %   regression using the normal equations.
    
  theta = pinv(X' * X) * (X' * y); % Vectorized
  
  % ============================================================
  
end

%!test
%! X = [2 1 3; 7 1 9; 1 8 1; 3 7 4];
%! y = [2 ; 5 ; 5 ; 6];
%! theta = normalEqn(X,y);
%! assert(theta, [
%!    0.0083857
%!    0.5681342
%!    0.4863732
%! ], 0.0000001);
