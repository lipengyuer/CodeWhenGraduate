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

/**
 * <i>INTERNAL USE ONLY</i>
 */
public class WocawocaMCRFactory
{
    /** Application key data */
    private static final byte[] sSessionKey = { 66, 70, 65, 54, 48, 69, 57, 67, 56, 51, 
        53, 53, 57, 48, 50, 55, 52, 48, 69, 69, 51, 52, 52, 70, 54, 70, 51, 69, 51, 54, 
        48, 67, 49, 68, 66, 57, 65, 67, 54, 65, 66, 67, 67, 49, 50, 68, 52, 54, 50, 54, 
        53, 53, 48, 57, 67, 54, 51, 53, 49, 65, 66, 65, 55, 67, 51, 56, 57, 50, 57, 68, 
        52, 51, 56, 56, 55, 48, 68, 56, 51, 55, 70, 57, 56, 56, 66, 55, 56, 52, 54, 56, 
        49, 69, 68, 56, 70, 67, 68, 52, 66, 50, 67, 53, 57, 53, 56, 51, 54, 69, 66, 68, 
        54, 52, 56, 65, 65, 54, 55, 48, 51, 67, 48, 66, 54, 65, 54, 55, 51, 70, 69, 66, 
        68, 54, 50, 57, 48, 56, 52, 51, 53, 55, 52, 66, 67, 53, 52, 51, 65, 49, 67, 66, 
        68, 54, 53, 51, 66, 48, 67, 54, 70, 55, 66, 56, 49, 68, 70, 49, 51, 48, 56, 66, 
        70, 49, 65, 68, 54, 48, 70, 65, 57, 53, 69, 51, 54, 55, 66, 68, 51, 66, 67, 68, 
        65, 69, 49, 56, 70, 70, 51, 51, 69, 67, 49, 67, 69, 55, 57, 48, 50, 57, 52, 50, 
        70, 50, 57, 67, 56, 57, 66, 68, 70, 48, 67, 51, 66, 52, 69, 48, 70, 50, 65, 57, 
        70, 53, 66, 49, 55, 67, 51, 65, 52, 54, 66, 54, 48, 56, 69, 53, 67, 55, 51, 51, 
        49, 68, 50, 49, 56, 54 };
    
    /** Public key data */
    private static final byte[] sPublicKey = { 51, 48, 56, 49, 57, 68, 51, 48, 48, 68, 
        48, 54, 48, 57, 50, 65, 56, 54, 52, 56, 56, 54, 70, 55, 48, 68, 48, 49, 48, 49, 
        48, 49, 48, 53, 48, 48, 48, 51, 56, 49, 56, 66, 48, 48, 51, 48, 56, 49, 56, 55, 
        48, 50, 56, 49, 56, 49, 48, 48, 67, 52, 57, 67, 65, 67, 51, 52, 69, 68, 49, 51, 
        65, 53, 50, 48, 54, 53, 56, 70, 54, 70, 56, 69, 48, 49, 51, 56, 67, 52, 51, 49, 
        53, 66, 52, 51, 49, 53, 50, 55, 55, 69, 68, 51, 70, 55, 68, 65, 69, 53, 51, 48, 
        57, 57, 68, 66, 48, 56, 69, 69, 53, 56, 57, 70, 56, 48, 52, 68, 52, 66, 57, 56, 
        49, 51, 50, 54, 65, 53, 50, 67, 67, 69, 52, 51, 56, 50, 69, 57, 70, 50, 66, 52, 
        68, 48, 56, 53, 69, 66, 57, 53, 48, 67, 55, 65, 66, 49, 50, 69, 68, 69, 50, 68, 
        52, 49, 50, 57, 55, 56, 50, 48, 69, 54, 51, 55, 55, 65, 53, 70, 69, 66, 53, 54, 
        56, 57, 68, 52, 69, 54, 48, 51, 50, 70, 54, 48, 67, 52, 51, 48, 55, 52, 65, 48, 
        52, 67, 50, 54, 65, 66, 55, 50, 70, 53, 52, 66, 53, 49, 66, 66, 52, 54, 48, 53, 
        55, 56, 55, 56, 53, 66, 49, 57, 57, 48, 49, 52, 51, 49, 52, 65, 54, 53, 70, 48, 
        57, 48, 66, 54, 49, 70, 67, 50, 48, 49, 54, 57, 52, 53, 51, 66, 53, 56, 70, 67, 
        56, 66, 65, 52, 51, 69, 54, 55, 55, 54, 69, 66, 55, 69, 67, 68, 51, 49, 55, 56, 
        66, 53, 54, 65, 66, 48, 70, 65, 48, 54, 68, 68, 54, 52, 57, 54, 55, 67, 66, 49, 
        52, 57, 69, 53, 48, 50, 48, 49, 49, 49 };
    
    /** Component's MATLAB path */
    private static final String[] sMatlabPath = { "wocawoca/", "$TOOLBOXDEPLOYDIR/", 
        "Users/admini/Desktop/shenduxuexi/", "$TOOLBOXMATLABDIR/general/", 
        "$TOOLBOXMATLABDIR/ops/", "$TOOLBOXMATLABDIR/lang/", "$TOOLBOXMATLABDIR/elmat/", 
        "$TOOLBOXMATLABDIR/randfun/", "$TOOLBOXMATLABDIR/elfun/", 
        "$TOOLBOXMATLABDIR/specfun/", "$TOOLBOXMATLABDIR/matfun/", 
        "$TOOLBOXMATLABDIR/datafun/", "$TOOLBOXMATLABDIR/polyfun/", 
        "$TOOLBOXMATLABDIR/funfun/", "$TOOLBOXMATLABDIR/sparfun/", 
        "$TOOLBOXMATLABDIR/scribe/", "$TOOLBOXMATLABDIR/graph2d/", 
        "$TOOLBOXMATLABDIR/graph3d/", "$TOOLBOXMATLABDIR/specgraph/", 
        "$TOOLBOXMATLABDIR/graphics/", "$TOOLBOXMATLABDIR/uitools/", 
        "$TOOLBOXMATLABDIR/strfun/", "$TOOLBOXMATLABDIR/imagesci/", 
        "$TOOLBOXMATLABDIR/iofun/", "$TOOLBOXMATLABDIR/audiovideo/", 
        "$TOOLBOXMATLABDIR/timefun/", "$TOOLBOXMATLABDIR/datatypes/", 
        "$TOOLBOXMATLABDIR/verctrl/", "$TOOLBOXMATLABDIR/codetools/", 
        "$TOOLBOXMATLABDIR/helptools/", "$TOOLBOXMATLABDIR/winfun/", 
        "$TOOLBOXMATLABDIR/winfun/net/", "$TOOLBOXMATLABDIR/demos/", 
        "$TOOLBOXMATLABDIR/timeseries/", "$TOOLBOXMATLABDIR/hds/", 
        "$TOOLBOXMATLABDIR/guide/", "$TOOLBOXMATLABDIR/plottools/", "toolbox/local/", 
        "toolbox/shared/dastudio/", "$TOOLBOXMATLABDIR/datamanager/", "toolbox/compiler/" 
        };
    
    /** Items to be added to component's class path */
    private static final String[] sClassPath = {};
    
    /** Items to be added to component's lib path */
    private static final String[] sLibraryPath = {};
    
    /** MCR instance-specific runtime options */
    private static final String[] sApplicationOptions = {};
    
    /** MCR global runtime options */
    private static final String[] sRuntimeOptions = {  };
    
    /** Runtime warning states */
    private static final String[] sSetWarningState = { 
        "off:MATLAB:dispatcher:nameConflict" };
    
    /** Component's preference directory */
    private static final String sComponentPrefDir = "wocawoca_2D9A41FDBCCCFF341A719DB733A58FBA";
    
    /** Component name */
    private static final String sComponentName = "wocawoca";
    
    /** Pointer to native component-data structure */
    private static final NativeComponentData sComponentData = 
        new NativeComponentData(
            createComponentData(
                MWMCR.findComponentParentDirOnClassPath(
                    sComponentName, 
                    "wocawoca"
                )
            )
        );
    
    /** Pointer to default component options */
    private static final MWComponentOptions sDefaultComponentOptions = 
        new MWComponentOptions(
            MWCtfExtractLocation.EXTRACT_TO_CACHE, 
            new MWCtfClassLoaderSource(WocawocaMCRFactory.class)
        );
    
    /** Creates a native component-data structure */
    static NativePtr createComponentData(String pathToComponent)
    {
        try {
            return MWMCR.getNativeMCR().mclCreateComponentData(
                sPublicKey, 
                sComponentName, 
                "",
                sSessionKey,
                sMatlabPath,
                sClassPath,
                sLibraryPath,
                sApplicationOptions,
                sRuntimeOptions,
                sComponentPrefDir,
                pathToComponent,
                sSetWarningState
            );
        }
        catch (MWException e) {
            return NativePtr.NULL;
        }
    }
    
    private WocawocaMCRFactory()
    {
        // Never called.
    }
    
    public static MWMCR newInstance(MWComponentOptions componentOptions) throws MWException
    {
        if (null == componentOptions.getCtfSource()) {
            componentOptions = new MWComponentOptions(componentOptions);
            componentOptions.setCtfSource(sDefaultComponentOptions.getCtfSource());
        }
        return MWMCR.newInstance(
            sComponentData, 
            componentOptions, 
            WocawocaMCRFactory.class, 
            sComponentName, 
            new int[]{7,11}
        );
    }
    
    public static MWMCR newInstance() throws MWException
    {
        return newInstance(sDefaultComponentOptions);
    }
}
