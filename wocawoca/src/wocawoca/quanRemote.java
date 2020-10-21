/*
 * MATLAB Compiler: 4.11 (R2009b)
 * Date: Wed Sep 04 10:53:14 2013
 * Arguments: "-B" "macro_default" "-W" "java:wocawoca,quan" "-d" 
 * "C:\\Users\\admini\\Documents\\MATLAB\\wocawoca\\src" "-T" "link:lib" "-v" 
 * "class{quan:C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_backpropclassify.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY_INIT.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_makebatches.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_minimize.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_mnistclassify.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_rbm.m}" 
 */

package wocawoca;

import com.mathworks.toolbox.javabuilder.pooling.Poolable;
import java.util.List;
import java.rmi.Remote;
import java.rmi.RemoteException;

/**
 * The <code>quanRemote</code> class provides a Java RMI-compliant interface to the 
 * M-functions from the files:
 * <pre>
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_backpropclassify.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY_INIT.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_makebatches.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_minimize.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_mnistclassify.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_rbm.m
 * </pre>
 * The {@link #dispose} method <b>must</b> be called on a <code>quanRemote</code> 
 * instance when it is no longer needed to ensure that native resources allocated by this 
 * class are properly freed, and the server-side proxy is unexported.  (Failure to call 
 * dispose may result in server-side threads not being properly shut down, which often 
 * appears as a hang.)  
 *
 * This interface is designed to be used together with 
 * <code>com.mathworks.toolbox.javabuilder.remoting.RemoteProxy</code> to automatically 
 * generate RMI server proxy objects for instances of wocawoca.quan.
 */
public interface quanRemote extends Poolable
{
    /**
     * Provides the standard interface for calling the <code>DL_backpropclassify</code> 
     * M-function with 11 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * %%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE 
     * MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_backpropclassify(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_CG_CLASSIFY</code> 
     * M-function with 5 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_CG_CLASSIFY(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_CG_CLASSIFY_INIT</code> 
     * M-function with 5 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_CG_CLASSIFY_INIT(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_makebatches</code> 
     * M-function with 3 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * %%% Reset random seeds
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_makebatches(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_minimize</code> 
     * M-function with 4 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * %%%最优化fX，需要不断计算合适的步长与搜索方向
     * % Minimize a differentiable multivariate function. 
     * %minimize一个可微多元方程
     * % Usage: [X, fX, i] = minimize(X, f, length, P1, P2, P3, ... )
     * %
     * % where the starting point is given by "X" (D by 1), and the function named in
     * % the string "f", must return a function value and a vector of partial
     * % derivatives of f wrt X, the "length" gives the length of the run: if it is
     * % positive, it gives the maximum number of line searches, if negative its
     * % absolute gives the maximum allowed number of function evaluations. You can
     * % (optionally) give "length" a second component, which will indicate the
     * % reduction in function value to be expected in the first line-search (defaults
     * % to 1.0). The parameters P1, P2, P3, ... are passed on to the function f.
     * 
     * %起始点有X给出，方程的名字为f，返回值是方程值和f关于X的偏导数向量，length给出运行的长度：若为正，给出线搜索的最大次数；若为负，它的绝对值给出（function
     * % 
     * evaluations）的次数。（可选）也可以给“length”第二个元素，代表第一次线搜索中方程值减少的幅度（空缺默认为1.0）.参数P1等是方
     * % 程f的参数。
     * % The function returns when either its length is up, or if no further progress
     * % can be made (ie, we are at a (local) minimum, or so close that due to
     * % numerical problems, we cannot get any closer). NOTE: If the function
     * % terminates within a few iterations, it could be an indication that the
     * % function values and derivatives are not consistent (ie, there may be a bug in
     * % the implementation of your "f" function). The function returns the found
     * % solution "X", a vector of function values "fX" indicating the progress made
     * % and "i" the number of iterations (line searches or function evaluations,
     * % depending on the sign of "length") used.
     * 
     * %或者当length为正，或者不能得到进一步的结果（如（局部）最优，或者由于数值问题导致太接近，无法再接近了）注意：如果方程在几次迭代之后就终止，可能
     * 
     * %意味着方程值和derivative导数不恒定（比如，“f”的（代码实现）中有bug）。方程返回找到的解“X”，方程值向量“fX”代表（所做的进展），
     * %“i”是迭代的次数。
     * % The Polack-Ribiere flavour of conjugate gradients is used to compute search
     * % directions,用共轭梯度法求搜索方向 and a line search using quadratic and cubic 
     * polynomial
     * % approximations and the Wolfe-Powell stopping criteria is used together with
     * % the slope ratio method for guessing initial step sizes（line search 
     * 和Wolf-Powell停止条件猜初始步长）. Additionally a bunch
     * % of checks are made to make sure that exploration is taking place and that
     * % extrapolation will not be unboundedly large.
     * %
     * % See also: checkgrad 
     * %
     * % Copyright (C) 2001 - 2006 by Carl Edward Rasmussen (2006-09-08).
     * %it's too fucking hard too undersdand...这是有的没的方法都用到了么
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_minimize(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_mnistclassify</code> 
     * M-function with 14 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * % save mnistvhclassify vishid hidrecbiases visbiases;
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_mnistclassify(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>DL_rbm</code> M-function 
     * with 10 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * M-documentation as provided by the author of the M function:
     * <pre>
     * % epsilonw      = 0.001;   % Learning rate for weights 0.1
     * % epsilonvb     = 0.001;   % Learning rate for biases of visible units 0.1
     * % epsilonhb     = 0.001;   % Learning rate for biases of hidden units 0.1
     * % weightcost  = 0.00002;   %权损失，惩罚项0.0002
     * % initialmomentum  = 0.1;%5;%momentum-动量0.5
     * % finalmomentum    = 0.5;%0.9
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.jmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] DL_rbm(int nargout, Object... rhs) throws RemoteException;
  
    /** Frees native resources associated with the remote server object */
    void dispose() throws RemoteException;
}
