/*
 * MATLAB Compiler: 4.11 (R2009b)
 * Date: Wed Sep 04 10:53:14 2013
 * Arguments: "-B" "macro_default" "-W" "java:wocawoca,quan" "-d" 
 * "C:\\Users\\admini\\Documents\\MATLAB\\wocawoca\\src" "-T" "link:lib" "-v" 
 * "class{quan:C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_backpropclassify.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY_INIT.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_makebatches.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_minimize.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_mnistclassify.m,C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_rbm.m}" 
 */

package wocawoca;

import com.mathworks.toolbox.javabuilder.*;
import com.mathworks.toolbox.javabuilder.internal.*;
import java.util.*;

/**
 * The <code>quan</code> class provides a Java interface to the M-functions
 * from the files:
 * <pre>
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_backpropclassify.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_CG_CLASSIFY_INIT.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_makebatches.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_minimize.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_mnistclassify.m
 *  C:\\Users\\admini\\Desktop\\shenduxuexi\\DL_rbm.m
 * </pre>
 * The {@link #dispose} method <b>must</b> be called on a <code>quan</code> instance when 
 * it is no longer needed to ensure that native resources allocated by this class are 
 * properly freed.
 * @version 0.0
 */
public class quan extends MWComponentInstance<quan>
{
    /**
     * Tracks all instances of this class to ensure their dispose method is
     * called on shutdown.
     */
    private static final Set<Disposable> sInstances = new HashSet<Disposable>();

    /**
     * Maintains information used in calling the <code>DL_backpropclassify</code> 
     *M-function.
     */
    private static final MWFunctionSignature sDL_backpropclassifySignature =
        new MWFunctionSignature(/* max outputs = */ 4,
                                /* has varargout = */ false,
                                /* function name = */ "DL_backpropclassify",
                                /* max inputs = */ 11,
                                /* has varargin = */ false);
    /**
     * Maintains information used in calling the <code>DL_CG_CLASSIFY</code> M-function.
     */
    private static final MWFunctionSignature sDL_CG_CLASSIFYSignature =
        new MWFunctionSignature(/* max outputs = */ 3,
                                /* has varargout = */ false,
                                /* function name = */ "DL_CG_CLASSIFY",
                                /* max inputs = */ 5,
                                /* has varargin = */ false);
    /**
     * Maintains information used in calling the <code>DL_CG_CLASSIFY_INIT</code> 
     *M-function.
     */
    private static final MWFunctionSignature sDL_CG_CLASSIFY_INITSignature =
        new MWFunctionSignature(/* max outputs = */ 3,
                                /* has varargout = */ false,
                                /* function name = */ "DL_CG_CLASSIFY_INIT",
                                /* max inputs = */ 5,
                                /* has varargin = */ false);
    /**
     * Maintains information used in calling the <code>DL_makebatches</code> M-function.
     */
    private static final MWFunctionSignature sDL_makebatchesSignature =
        new MWFunctionSignature(/* max outputs = */ 4,
                                /* has varargout = */ false,
                                /* function name = */ "DL_makebatches",
                                /* max inputs = */ 3,
                                /* has varargin = */ false);
    /**
     * Maintains information used in calling the <code>DL_minimize</code> M-function.
     */
    private static final MWFunctionSignature sDL_minimizeSignature =
        new MWFunctionSignature(/* max outputs = */ 3,
                                /* has varargout = */ false,
                                /* function name = */ "DL_minimize",
                                /* max inputs = */ 4,
                                /* has varargin = */ true);
    /**
     * Maintains information used in calling the <code>DL_mnistclassify</code> M-function.
     */
    private static final MWFunctionSignature sDL_mnistclassifySignature =
        new MWFunctionSignature(/* max outputs = */ 4,
                                /* has varargout = */ false,
                                /* function name = */ "DL_mnistclassify",
                                /* max inputs = */ 14,
                                /* has varargin = */ false);
    /**
     * Maintains information used in calling the <code>DL_rbm</code> M-function.
     */
    private static final MWFunctionSignature sDL_rbmSignature =
        new MWFunctionSignature(/* max outputs = */ 4,
                                /* has varargout = */ false,
                                /* function name = */ "DL_rbm",
                                /* max inputs = */ 10,
                                /* has varargin = */ false);

    /**
     * Shared initialization implementation - private
     */
    private quan (final MWMCR mcr) throws MWException
    {
        super(mcr);
        // add this to sInstances
        synchronized(quan.class) {
            sInstances.add(this);
        }
    }

    /**
     * Constructs a new instance of the <code>quan</code> class.
     */
    public quan() throws MWException
    {
        this(WocawocaMCRFactory.newInstance());
    }
    
    private static MWComponentOptions getPathToComponentOptions(String path)
    {
        MWComponentOptions options = new MWComponentOptions(new MWCtfExtractLocation(path),
                                                            new MWCtfDirectorySource(path));
        return options;
    }
    
    /**
     * @deprecated Please use the constructor {@link #quan(MWComponentOptions componentOptions)}.
     * The <code>com.mathworks.toolbox.javabuilder.MWComponentOptions</code> class provides API to set the
     * path to the component.
     * @param pathToComponent Path to component directory.
     */
    public quan(String pathToComponent) throws MWException
    {
        this(WocawocaMCRFactory.newInstance(getPathToComponentOptions(pathToComponent)));
    }
    
    /**
     * Constructs a new instance of the <code>quan</code> class. Use this constructor to 
     * specify the options required to instantiate this component.  The options will be 
     * specific to the instance of this component being created.
     * @param componentOptions Options specific to the component.
     */
    public quan(MWComponentOptions componentOptions) throws MWException
    {
        this(WocawocaMCRFactory.newInstance(componentOptions));
    }
    
    /** Frees native resources associated with this object */
    public void dispose()
    {
        try {
            super.dispose();
        } finally {
            synchronized(quan.class) {
                sInstances.remove(this);
            }
        }
    }
  
    /**
     * Invokes the first m-function specified by MCC, with any arguments given on
     * the command line, and prints the result.
     */
    public static void main (String[] args)
    {
        try {
            MWMCR mcr = WocawocaMCRFactory.newInstance();
            mcr.runMain( sDL_backpropclassifySignature, args);
            mcr.dispose();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
    /**
     * Calls dispose method for each outstanding instance of this class.
     */
    public static void disposeAllInstances()
    {
        synchronized(quan.class) {
            for (Disposable i : sInstances) i.dispose();
            sInstances.clear();
        }
    }

    /**
     * Provides the interface for calling the <code>DL_backpropclassify</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE 
     * MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_backpropclassify(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_backpropclassifySignature);
    }

    /**
     * Provides the interface for calling the <code>DL_backpropclassify</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE 
     * MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_backpropclassify(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_backpropclassifySignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_backpropclassify</code>
     * M-function with 11 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%%% PREINITIALIZE WEIGHTS OF THE DISCRIMINATIVE 
     * MODEL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_backpropclassify(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_backpropclassifySignature), 
                    sDL_backpropclassifySignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_CG_CLASSIFY</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_CG_CLASSIFY(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_CG_CLASSIFYSignature);
    }

    /**
     * Provides the interface for calling the <code>DL_CG_CLASSIFY</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_CG_CLASSIFY(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_CG_CLASSIFYSignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_CG_CLASSIFY</code>
     * M-function with 5 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_CG_CLASSIFY(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_CG_CLASSIFYSignature), 
                    sDL_CG_CLASSIFYSignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_CG_CLASSIFY_INIT</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_CG_CLASSIFY_INIT(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_CG_CLASSIFY_INITSignature);
    }

    /**
     * Provides the interface for calling the <code>DL_CG_CLASSIFY_INIT</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_CG_CLASSIFY_INIT(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_CG_CLASSIFY_INITSignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_CG_CLASSIFY_INIT</code>
     * M-function with 5 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % Do decomversion.
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_CG_CLASSIFY_INIT(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_CG_CLASSIFY_INITSignature), 
                    sDL_CG_CLASSIFY_INITSignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_makebatches</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%% Reset random seeds
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_makebatches(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_makebatchesSignature);
    }

    /**
     * Provides the interface for calling the <code>DL_makebatches</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%% Reset random seeds
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_makebatches(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_makebatchesSignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_makebatches</code>
     * M-function with 3 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * %%% Reset random seeds
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_makebatches(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_makebatchesSignature), 
                    sDL_makebatchesSignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_minimize</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
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
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_minimize(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_minimizeSignature);
    }

    /**
     * Provides the interface for calling the <code>DL_minimize</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
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
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_minimize(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_minimizeSignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_minimize</code>
     * M-function with 4 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
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
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_minimize(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_minimizeSignature), 
                    sDL_minimizeSignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_mnistclassify</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % save mnistvhclassify vishid hidrecbiases visbiases;
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_mnistclassify(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_mnistclassifySignature);
    }

    /**
     * Provides the interface for calling the <code>DL_mnistclassify</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % save mnistvhclassify vishid hidrecbiases visbiases;
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_mnistclassify(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_mnistclassifySignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_mnistclassify</code>
     * M-function with 14 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % save mnistvhclassify vishid hidrecbiases visbiases;
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_mnistclassify(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_mnistclassifySignature), 
                    sDL_mnistclassifySignature);
        return lhs;
    }
    /**
     * Provides the interface for calling the <code>DL_rbm</code> M-function 
     * where the first input, an instance of List, receives the output of the M-function and
     * the second input, also an instance of List, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % epsilonw      = 0.001;   % Learning rate for weights 0.1
     * % epsilonvb     = 0.001;   % Learning rate for biases of visible units 0.1
     * % epsilonhb     = 0.001;   % Learning rate for biases of hidden units 0.1
     * % weightcost  = 0.00002;   %权损失，惩罚项0.0002
     * % initialmomentum  = 0.1;%5;%momentum-动量0.5
     * % finalmomentum    = 0.5;%0.9
     * </pre>
     * </p>
     * @param lhs List in which to return outputs. Number of outputs (nargout) is
     * determined by allocated size of this List. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs List containing inputs. Number of inputs (nargin) is determined
     * by the allocated size of this List. Input arguments may be passed as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or
     * as arrays of any supported Java type. Arguments passed as Java types are
     * converted to MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_rbm(List lhs, List rhs) throws MWException
    {
        fMCR.invoke(lhs, rhs, sDL_rbmSignature);
    }

    /**
     * Provides the interface for calling the <code>DL_rbm</code> M-function 
     * where the first input, an Object array, receives the output of the M-function and
     * the second input, also an Object array, provides the input to the M-function.
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % epsilonw      = 0.001;   % Learning rate for weights 0.1
     * % epsilonvb     = 0.001;   % Learning rate for biases of visible units 0.1
     * % epsilonhb     = 0.001;   % Learning rate for biases of hidden units 0.1
     * % weightcost  = 0.00002;   %权损失，惩罚项0.0002
     * % initialmomentum  = 0.1;%5;%momentum-动量0.5
     * % finalmomentum    = 0.5;%0.9
     * </pre>
     * </p>
     * @param lhs array in which to return outputs. Number of outputs (nargout)
     * is determined by allocated size of this array. Outputs are returned as
     * sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>.
     * Each output array should be freed by calling its <code>dispose()</code>
     * method.
     *
     * @param rhs array containing inputs. Number of inputs (nargin) is
     * determined by the allocated size of this array. Input arguments may be
     * passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     * @throws MWException An error has occurred during the function call.
     */
    public void DL_rbm(Object[] lhs, Object[] rhs) throws MWException
    {
        fMCR.invoke(Arrays.asList(lhs), Arrays.asList(rhs), sDL_rbmSignature);
    }

    /**
     * Provides the standard interface for calling the <code>DL_rbm</code>
     * M-function with 10 input arguments.
     * Input arguments may be passed as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of
     * any supported Java type. Arguments passed as Java types are converted to
     * MATLAB arrays according to default conversion rules.
     *
     * <p>M-documentation as provided by the author of the M function:
     * <pre>
     * % epsilonw      = 0.001;   % Learning rate for weights 0.1
     * % epsilonvb     = 0.001;   % Learning rate for biases of visible units 0.1
     * % epsilonhb     = 0.001;   % Learning rate for biases of hidden units 0.1
     * % weightcost  = 0.00002;   %权损失，惩罚项0.0002
     * % initialmomentum  = 0.1;%5;%momentum-动量0.5
     * % finalmomentum    = 0.5;%0.9
     * </pre>
     * </p>
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the M function.
     * @return Array of length nargout containing the function outputs. Outputs
     * are returned as sub-classes of
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>. Each output array
     * should be freed by calling its <code>dispose()</code> method.
     * @throws MWException An error has occurred during the function call.
     */
    public Object[] DL_rbm(int nargout, Object... rhs) throws MWException
    {
        Object[] lhs = new Object[nargout];
        fMCR.invoke(Arrays.asList(lhs), 
                    MWMCR.getRhsCompat(rhs, sDL_rbmSignature), 
                    sDL_rbmSignature);
        return lhs;
    }
}
