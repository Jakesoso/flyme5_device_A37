.class public Lcom/oppo/launcher/graphic/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BRIGHTNESS:F = 0.8f

.field private static final DEFAULT_RADIUS:I = 0x19

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final EXECUTOR_THREADS:I

.field private static final TAG:Ljava/lang/String; = "GaussianBlur"

.field private static mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

.field public static mScreenHeight:I

.field public static mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 24
    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenHeight:I

    .line 27
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR_THREADS:I

    .line 33
    sget v0, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR_THREADS:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 36
    const-string v0, "gaussgraphic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/oppo/launcher/graphic/GaussianBlur;

    invoke-direct {v0}, Lcom/oppo/launcher/graphic/GaussianBlur;-><init>()V

    sput-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    .line 48
    :cond_0
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    return-object v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    const/high16 v0, 0x3e800000    # 0.25f

    .line 70
    .local v0, "scale":F
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p0, v1}, Lcom/oppo/launcher/graphic/GaussianBlur;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    .line 74
    const/4 v7, 0x0

    .line 75
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 76
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    sub-int v1, v0, v2

    .line 79
    .local v1, "beginX":I
    sget v3, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 80
    .local v3, "width":I
    if-gez v1, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 84
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 86
    .end local v1    # "beginX":I
    .end local v3    # "width":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    if-eqz v7, :cond_2

    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "GaussianBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gaussian:captureWallpaper bm.getWidth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", bmp.getWidth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    return-object v7
.end method

.method public static setScreenWidth(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 52
    sget v5, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    if-eq v5, v6, :cond_0

    sget v5, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    if-ne v5, v6, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 54
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 58
    .local v3, "realWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    .local v2, "realHeight":I
    if-ge v3, v2, :cond_2

    move v5, v3

    :goto_0
    sput v5, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 60
    if-ge v3, v2, :cond_3

    .end local v2    # "realHeight":I
    :goto_1
    sput v2, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenHeight:I

    .line 61
    sget-boolean v5, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 62
    const-string v5, "GaussianBlur"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GaussianBlur:setScreenWidth   getRotation() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mScreenWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "realWidth":I
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "realHeight":I
    .restart local v3    # "realWidth":I
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :cond_2
    move v5, v2

    .line 59
    goto :goto_0

    :cond_3
    move v2, v3

    .line 60
    goto :goto_1
.end method


# virtual methods
.method public native blurBrightness_native([IIIF)V
.end method

.method public native blurIterationAlpha_native([IIIIIII)V
.end method

.method public native blurIteration_native([IIIIIII)V
.end method

.method public blurIteration_native([IIIIZ)V
    .locals 9
    .param p1, "inout"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # I
    .param p5, "hasAlpha"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    if-eqz p5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v5

    .line 258
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIterationAlpha_native([IIIIIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v8

    .line 259
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIterationAlpha_native([IIIIIII)V

    .line 264
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v5

    .line 261
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIteration_native([IIIIIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v8

    .line 262
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIteration_native([IIIIIII)V

    goto :goto_0
.end method

.method public blurIteration_nativeTask([IIIIZ)V
    .locals 13
    .param p1, "inout"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # I
    .param p5, "hasAlpha"    # Z

    .prologue
    .line 267
    sget v6, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR_THREADS:I

    .line 269
    .local v6, "cores":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v11, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v12, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 273
    new-instance v0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;-><init>(Lcom/oppo/launcher/graphic/GaussianBlur;[IIIIIIIZ)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;

    const/4 v8, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;-><init>(Lcom/oppo/launcher/graphic/GaussianBlur;[IIIIIIIZ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 278
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :try_start_1
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v10

    .line 280
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "GaussianBlur"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GaussianBlur:blurIteration_nativeTask  e1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 287
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v0, "GaussianBlur"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GaussianBlur:blurIteration_nativeTask  e2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public captureScreen(Landroid/content/Context;IIFII)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scale"    # F
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I

    .prologue
    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "bmp":Landroid/graphics/Bitmap;
    move v9, p2

    .local v9, "w":I
    move v8, p3

    .line 110
    .local v8, "h":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/oppo/launcher/graphic/GaussianBlur;->setScreenWidth(Landroid/content/Context;)V

    .line 112
    sget v9, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 113
    sget v8, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenHeight:I

    .line 115
    :cond_1
    if-ltz p5, :cond_2

    if-gez p6, :cond_3

    .line 116
    :cond_2
    int-to-float v0, v9

    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 121
    :goto_0
    return-object v7

    .line 118
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float v1, v9

    mul-float/2addr v1, p4

    float-to-int v1, v1

    int-to-float v2, v8

    mul-float/2addr v2, p4

    float-to-int v2, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p5

    move/from16 v4, p6

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "brightness"    # F
    .param p3, "recycle"    # Z

    .prologue
    .line 142
    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "brightness"    # F
    .param p4, "recycle"    # Z

    .prologue
    .line 146
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;IFZZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "brightness"    # F
    .param p4, "hasAlpha"    # Z
    .param p5, "recycle"    # Z

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 151
    const/4 v10, 0x0

    .line 183
    :cond_0
    :goto_0
    return-object v10

    .line 154
    :cond_1
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 155
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmap  Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_6

    move v9, p4

    .line 158
    .local v9, "isAlpha":Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 159
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 160
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 161
    .local v1, "inoutPixels":[I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 162
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v4, p0

    move-object v5, v1

    move v6, v3

    move v8, p2

    .line 164
    invoke-virtual/range {v4 .. v9}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIteration_native([IIIIZ)V

    .line 166
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 167
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmap  generate brightness"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    .line 171
    invoke-virtual {p0, v1, v7, v3, p3}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurBrightness_native([IIIF)V

    .line 174
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 175
    if-eqz p5, :cond_5

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    const/4 p1, 0x0

    .line 180
    :cond_5
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmap  generate Complete"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v1    # "inoutPixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v9    # "isAlpha":Z
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    .line 138
    const/16 v0, 0x19

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateGaussianBitmapTask(Landroid/graphics/Bitmap;IFZZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "brightness"    # F
    .param p4, "hasAlpha"    # Z
    .param p5, "recycle"    # Z

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    const/4 v10, 0x0

    .line 220
    :cond_0
    :goto_0
    return-object v10

    .line 191
    :cond_1
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 192
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmapTask  Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_6

    move v9, p4

    .line 195
    .local v9, "isAlpha":Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 196
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 197
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 198
    .local v1, "inoutPixels":[I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 199
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v4, p0

    move-object v5, v1

    move v6, v3

    move v8, p2

    .line 201
    invoke-virtual/range {v4 .. v9}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIteration_nativeTask([IIIIZ)V

    .line 203
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 204
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmap  generate brightness"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    .line 208
    invoke-virtual {p0, v1, v7, v3, p3}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurBrightness_native([IIIF)V

    .line 211
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 212
    if-eqz p5, :cond_5

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 p1, 0x0

    .line 217
    :cond_5
    sget-boolean v0, Lcom/oppo/launcher/graphic/GaussianBlur;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "GaussianBlur"

    const-string v2, "GaussianBlur:generateGaussianBitmapTask  generate Complete"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v1    # "inoutPixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v9    # "isAlpha":Z
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public generateGaussianScreenshot(Landroid/content/Context;FIF)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scale"    # F
    .param p3, "radius"    # I
    .param p4, "brightness"    # F

    .prologue
    const/4 v2, -0x1

    .line 132
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/launcher/graphic/GaussianBlur;->captureScreen(Landroid/content/Context;IIFII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 134
    .local v7, "bmp":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    invoke-virtual {p0, v7, p3, p4, v0}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generateGaussianWallpaper(Landroid/content/Context;FIF)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scale"    # F
    .param p3, "radius"    # I
    .param p4, "brightness"    # F

    .prologue
    const/4 v2, -0x1

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LAYER_WALLPAPER"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, "wallpaperLayer":I
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v6, v5

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/oppo/launcher/graphic/GaussianBlur;->captureScreen(Landroid/content/Context;IIFII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 128
    .local v7, "bmp":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    invoke-virtual {p0, v7, p3, p4, v0}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(III)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "i"    # I

    .prologue
    .line 94
    return-void
.end method
