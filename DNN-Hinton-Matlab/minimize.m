function [X, fX, i] = minimize(X, f, length, varargin)%X就是传进来的VV，一堆权重
%%%最优化fX，需要不断计算合适的步长与搜索方向
% Minimize a differentiable multivariate function. 
%minimize一个可微多元方程
% Usage: [X, fX, i] = minimize(X, f, length, P1, P2, P3, ... )
%
% where the starting point is given by "X" (D by 1), and the function named in
% the string "f", must return a function value and a vector of partial
% derivatives of f wrt X, the "length" gives the length of the run: if it is
% positive, it gives the maximum number of line searches, if negative its
% absolute gives the maximum allowed number of function evaluations. You can
% (optionally) give "length" a second component, which will indicate the
% reduction in function value to be expected in the first line-search (defaults
% to 1.0). The parameters P1, P2, P3, ... are passed on to the function f.
%起始点有X给出，方程的名字为f，返回值是方程值和f关于X的偏导数向量，length给出运行的长度：若为正，给出线搜索的最大次数；若为负，它的绝对值给出（function
% evaluations）的次数。（可选）也可以给“length”第二个元素，代表第一次线搜索中方程值减少的幅度（空缺默认为1.0）.参数P1等是方
% 程f的参数。
% The function returns when either its length is up, or if no further progress
% can be made (ie, we are at a (local) minimum, or so close that due to
% numerical problems, we cannot get any closer). NOTE: If the function
% terminates within a few iterations, it could be an indication that the
% function values and derivatives are not consistent (ie, there may be a bug in
% the implementation of your "f" function). The function returns the found
% solution "X", a vector of function values "fX" indicating the progress made
% and "i" the number of iterations (line searches or function evaluations,
% depending on the sign of "length") used.
%或者当length为正，或者不能得到进一步的结果（如（局部）最优，或者由于数值问题导致太接近，无法再接近了）注意：如果方程在几次迭代之后就终止，可能
%意味着方程值和derivative导数不恒定（比如，“f”的（代码实现）中有bug）。方程返回找到的解“X”，方程值向量“fX”代表（所做的进展），
%“i”是迭代的次数。
% The Polack-Ribiere flavour of conjugate gradients is used to compute search
% directions,用共轭梯度法求搜索方向 and a line search using quadratic and cubic polynomial
% approximations and the Wolfe-Powell stopping criteria is used together with
% the slope ratio method for guessing initial step sizes（line search 和Wolf-Powell停止条件猜初始步长）. Additionally a bunch
% of checks are made to make sure that exploration is taking place and that
% extrapolation will not be unboundedly large.
%
% See also: checkgrad 
%
% Copyright (C) 2001 - 2006 by Carl Edward Rasmussen (2006-09-08).
%it's too fucking hard too undersdand...这是有的没的方法都用到了么

INT = 0.1;    % don't reevaluate within 0.1 of the limit of the current bracket
EXT = 3.0;                  % extrapolate maximum 3 times the current step-size
MAX = 20;                         % max 20 function evaluations per line search
RATIO = 10;                                       % maximum allowed slope ratio10
SIG = 0.1; RHO = SIG/2; % SIG(0.1) and RHO are the constants controlling the Wolfe-
% Powell conditions. SIG is the maximum allowed absolute ratio between
% previous and new slopes (derivatives in the search direction), thus setting
% SIG to low (positive) values forces higher precision in the line-searches.
% RHO is the minimum allowed fraction of the expected (from the slope at the
% initial point in the linesearch). Constants must satisfy 0 < RHO < SIG < 1.
% Tuning of SIG (depending on the nature of the function to be optimized) may
% speed up the minimization; it is probably not worth playing much with
% RHO.沃尔夫鲍威尔条件的两个参数，对计算收敛的速度有影响。

% The code falls naturally into 3 parts, after the initial line search is
% started in the direction of steepest descent. 1) we first enter a while loop
% which uses point 1 (p1) and (p2) to compute an extrapolation (p3), until we
% have extrapolated far enough (Wolfe-Powell conditions). 2) if necessary, we
% enter the second loop which takes p2, p3 and p4 chooses the subinterval
% containing a (local) minimum, and interpolates it, unil an acceptable point
% is found (Wolfe-Powell conditions). Note, that points are always maintained
% in order p0 <= p1 <= p2 < p3 < p4. 3) compute a new search direction using
% conjugate gradients (Polack-Ribiere flavour), or revert to steepest if there
% was a problem in the previous line-search. Return the best value so far, if
% two consecutive line-searches fail, or whenever we run out of function
% evaluations or line-searches. During extrapolation, the "f" function may fail
% either with an error or returning Nan or Inf, and minimize should handle this
% gracefully.
%初始的线搜索以“最陡峭”（下降最快）的方向开始后，代码分为三段：（1）我们进入一个while循环，用点1（p1）和点2（p2）推断p3，直到我们推断
%的足够远（Wolfe-Powell
%conditions)（共轭梯度算法指的是n时刻的梯度由n-1时刻和n-2时刻的梯度的某种组合决定）；（2）如果必要，我们进入第二个循环，用p2和p3以及p4选择包含一个（局部）最小的子区间，并且推断之，直到找到一个可以接受的
%点（Wolfe-Powell
%conditions)。注意，点的大小顺序为p0《=p1《=p2《=p3《=跑；（3）用共轭梯度算法(Polack-Ribiere
%flavour)计算一个新的搜索方向，或者如果上一次搜索有问题的话回到“最陡峭”。当两次连续的线搜索失败，或者我们跳出方程估计或者线搜索，则返回到目
%前为止的最优值。在推断期间，“f”方程可能因为一个错误或者返回非数值或无穷大值而失败，函数minimize会较好地应对（try）。

if max(size(length)) == 2, red=length(2);length=length(1); else red=1; end%length=3.red一直为1
if length>0, S='Linesearch'; else S='Function evaluation'; end %

i = 0;                                            % zero the run length counte%i是计数器
ls_failed = 0;                             % no previous line search has failed%一个标记
[f0 df0] = feval(f, X, varargin{:});          % get function value and gradient%计算方程值和梯度%但是函数的来由不明确，梯度的计算过程也不知道
fX = f0;
i = i + (length<0);                                            % count epochs?!%length
s = -df0; d0 = -s'*s;           % initial search direction (steepest) and slope%???????????????????????????????d0是什么东西，负的梯度的模的平方；。
%slope的算法是怎么来的----最速下降算法中，搜索方向等与负的函数偏微，他俩相乘就是slope
x3 = red/(1-d0);                                  % initial step is red/(|s|+1)%为什么是1除以这个数。%%%这是线搜索的步长---比1稍小的一个数，就是这么定

while i < abs(length)                                      % while not finished，i可以为0,1,2，循环进行三次
  i = i + (length>0);                                      % count iterations?!加一操作

  X0 = X; F0 = f0; dF0 = df0;                   % make a copy of current values
  if length>0, M = MAX; else M = min(MAX, -length-i); end%为什么要这么选择M值？if后边只有一句时会这么写，为什么
      %
  while 1  % keep extrapolating as long as necessary后面应该有强制终止环节
      %找一个至少大于W-P条件划定的下界，或者干脆大于划定的上界的步长x3，步子太大，look out for balls！
    x2 = 0; f2 = f0; d2 = d0; f3 = f0; df3 = df0;%存两份f0和d0
    success = 0;%初始化success？
        %
    while ~success && M > 0%success为1或M<=0时停止---直到求出有意义的f3和df3
        %
      try
        M = M - 1; i = i + (length<0);                         % count epochs?!不管怎么样M是要减一的
        [f3 df3] = feval(f, X+x3*s, varargin{:});%用加上调整值后的新值，求一组方程值和梯度
        if isnan(f3) || isinf(f3) || any(isnan(df3)+isinf(df3)), error(''), end%isnan是什么：将f3中的nan换为1，其他换为0。
        %isinf将inf换为1，其他0//
        %也就是，函数值为0/0或者无穷大，或者梯度值中有任何一个为0/0或无穷大-----此时出错，运行catch
        success = 1;
      catch                                % catch any error which occured in f
        x3 = (x2+x3)/2;                                  % bisect and try again%x2=0,这不是初始步长除以二吗-----迅速地找到一个接近起始点的有对应函数值的步长
      end
    end
    %
    if f3 < F0, X0 = X+x3*s; F0 = f3; dF0 = df3; end         % keep best values1%若新方程值小于旧值，更替方程值和梯度？？if后边的逗号是什么意思% X0 = X+x3*s，计算新的起始点，原起始点加步长乘以负梯度；函数值，梯度也更新
    %
    d3 = df3'*s; %用在沃尔夫-鲍威尔条件2中                                                   % new slope%新旧负梯度相乘？
        %
    if d3 > SIG*d0 || f3 > f0+x3*RHO*d0 || M == 0  % are we done extrapolating?%判断条件的来由是个啥？若不满足沃尔夫-鲍威尔条件，不存在大于零的步长，退出循环？？？？
        %找到一个足够“高”的点
        %但是为什么是符合条件1或不符合条件2呢？？？？----这样的话，跨这一步长就跳出W-P条件划定的范围的上界了
        %
      break
    end
    %如果落在W_P两个条件外的范围，用外推法，求一个新点（其实是搜索步长）
    %将步长x3扩大，向外找；直到break
    x1 = x2; f1 = f2; d1 = d2;                        % move point 2 to point 1%这是什么？？？？？？？？？
    x2 = x3; f2 = f3; d2 = d3;                        % move point 3 to point 2
    A = 6*(f1-f2)+3*(d2+d1)*(x2-x1);                 % make cubic extrapolation
    B = 3*(f2-f1)-(2*d1+d2)*(x2-x1);
    x3 = x1-d1*(x2-x1)^2/(B+sqrt(B*B-A*d1*(x2-x1))); % num. error possible, ok!
        %
    if ~isreal(x3) || isnan(x3) || isinf(x3) || x3 < 0 % num prob | wrong sign?如果x3不是实数，或者x3中有0/0或者无穷大的数，或者x3小于零
        %
      x3 = x2*EXT;                                 % extrapolate maximum amount
      %
    elseif x3 > x2*EXT                  % new point beyond extrapolation limit?步长超过限制
        %
      x3 = x2*EXT;                                 % extrapolate maximum amount
      %
    elseif x3 < x2+INT*(x2-x1)         % new point too close to previous point?新点里原来的点太近
        %
      x3 = x2+INT*(x2-x1);
    end
  end                                                       % end extrapolation
%
  while (abs(d3) > -SIG*d0 || f3 > f0+x3*RHO*d0) && M > 0  % keep interpolating若同时不满足强沃尔夫-鲍威尔条件的两个条件，且M大于零，继续循环？？？？
      %这是太远了，得插值
    if d3 > 0 || f3 > f0+x3*RHO*d0                         % choose subinterval
        %
      x4 = x3; f4 = f3; d4 = d3;                      % move point 3 to point 4
    else
      x2 = x3; f2 = f3; d2 = d3;                      % move point 3 to point 2
    end
    %
    if f4 > f0           
        %
      x3 = x2-(0.5*d2*(x4-x2)^2)/(f4-f2-d2*(x4-x2));  % quadratic interpolation这是样条插值的什么
    else
      A = 6*(f2-f4)/(x4-x2)+3*(d4+d2);                    % cubic interpolation
      B = 3*(f4-f2)-(2*d2+d4)*(x4-x2);
      x3 = x2+(sqrt(B*B-A*d2*(x4-x2)^2)-B)/A;        % num. error possible, ok!
    end
    %
    if isnan(x3) || isinf(x3)
        %
      x3 = (x2+x4)/2;               % if we had a numerical problem then bisect
    end
    x3 = max(min(x3, x4-INT*(x4-x2)),x2+INT*(x4-x2));  % don't accept too close
    [f3 df3] = feval(f, X+x3*s, varargin{:});
    %
    if f3 < F0, X0 = X+x3*s; F0 = f3; dF0 = df3; end         % keep best values2
    %
    M = M - 1; i = i + (length<0);                             % count epochs?!
    d3 = df3'*s;                                                    % new slope
  end                                                       % end interpolation
%
  if abs(d3) < -SIG*d0 && f3 < f0+x3*RHO*d0          % if line search succeeded%若满足强沃尔夫鲍威尔条件，继续，用步长和梯度调整函数值与计算起始点
      
      %%%%%%%%%%%%%%%
    X = X+x3*s; f0 = f3; fX = [fX' f0]';  % update variables；更新？？？？？？？？？？
    %%%%%%%%%%%%%%%%%%%%%%
    
%     fprintf('%s %6i;  Value %4.6e\r', S, i, f0);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%key,非线性共轭梯度法中求搜索方向的式子
    s = (df3'*df3-df0'*df3)/(df0'*df0)*s - df3;   % Polack-Ribiere CG direction%这是什么？？？？？？？？？？？这两位大哥提出的新梯度的计算方法
    %%%%%%%%%%%
    df0 = df3;                                               % swap derivatives
    d3 = d0; d0 = df0'*s;
    %
    if d0 > 0                                      % new slope must be negative
        %
      s = -df0; d0 = -s'*s;                  % otherwise use steepest direction
    end
    x3 = x3 * min(RATIO, d3/(d0-realmin));          % slope ratio but max RATIO%若新的slope超过10（不超过），新的步长等于旧步长乘以10（新slope）.。。
    %realmin是极小值的意思，防止d0为0
    ls_failed = 0;                              % this line search did not fail%打印：“本次线搜索成功”
  else
      %%%%%%%%%%%%%%
    X = X0; f0 = F0; df0 = dF0;                     % restore best point so far
    %%%%%%%%%%%%%%%%%%%%%%
    if ls_failed || i > abs(length)         % line search failed twice in a row%线搜索连续失败两次或者循环到次数了，跳出循环        %
      break;                             % or we ran out of time, so we give up
    end
    s = -df0; d0 = -s'*s;                                        % try steepest
    x3 = 1/(1-d0);                     
    ls_failed = 1;                                    % this line search failed
  end
end
% fprintf('\n');
