.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$GammaLut;,
        Lcom/mediatek/pq/PictureQuality$Range;,
        Lcom/mediatek/pq/PictureQuality$Hist;
    }
.end annotation


# static fields
.field public static final CAPABILITY_MASK_COLOR:I = 0x1

.field public static final CAPABILITY_MASK_DC:I = 0x8

.field public static final CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final CAPABILITY_MASK_OD:I = 0x10

.field public static final CAPABILITY_MASK_SHARPNESS:I = 0x2

.field public static final DCHIST_INFO_NUM:I = 0x14

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final GAMMA_LUT_SIZE:I = 0x200

.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_MASK:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_VIDEO:I = 0x2

.field public static final OPPO_PROTECT_EYES_LEVEL1:I = 0x1

.field public static final OPPO_PROTECT_EYES_LEVEL2:I = 0x2

.field public static final OPPO_PROTECT_EYES_LEVEL3:I = 0x3

.field public static final OPPO_PROTECT_EYES_MASK:I = 0xf

.field public static final OPPO_PROTECT_EYES_OFF:I = 0x0

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 146
    :try_start_0
    const-string v1, "JNI_PQ"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 148
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI_PQ"

    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static enableColor(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 236
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColor(I)Z

    move-result v0

    return v0
.end method

.method public static enableColorEffect(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 253
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColorEffect(I)Z

    move-result v0

    return v0
.end method

.method public static enableDynamicContrast(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 248
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicContrast(I)Z

    move-result v0

    return v0
.end method

.method public static enableGamma(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 259
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableGamma(I)Z

    move-result v0

    return v0
.end method

.method public static enableOD(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 264
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result v0

    return v0
.end method

.method public static enablePQ(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 230
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQ(I)Z

    move-result v0

    return v0
.end method

.method public static enableSharpness(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 242
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static getCapability()I
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static getColorEffectIndex()I
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndex()I

    move-result v0

    return v0
.end method

.method public static getColorEffectIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 363
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 364
    return-object v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 289
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 290
    return-object v0
.end method

.method public static getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .locals 1
    .param p0, "srcBuffer"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 222
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 223
    .local v0, "outHist":Lcom/mediatek/pq/PictureQuality$Hist;
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    .line 224
    return-object v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 349
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 350
    return-object v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .prologue
    .line 405
    const-string v0, "persist.sys.gamma.index"

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 385
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 386
    return-object v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 319
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 320
    return-object v0
.end method

.method public static getPictureMode()I
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 304
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 305
    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 334
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 335
    return-object v0
.end method

.method private static native nativeEnableColor(I)Z
.end method

.method private static native nativeEnableColorEffect(I)Z
.end method

.method private static native nativeEnableDynamicContrast(I)Z
.end method

.method private static native nativeEnableGamma(I)Z
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQ(I)Z
.end method

.method private static native nativeEnableSharpness(I)Z
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetColorEffectIndex()I
.end method

.method private static native nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeSetCameraPreviewMode()V
.end method

.method private static native nativeSetColorEffectIndex(I)V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGalleryNormalMode()V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method private static native nativeSetPictureMode(I)Z
.end method

.method private static native nativeSetProtectEyesLevel1()V
.end method

.method private static native nativeSetProtectEyesLevel2()V
.end method

.method private static native nativeSetProtectEyesLevel3()V
.end method

.method private static native nativeSetProtectEyesOff()V
.end method

.method private static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method private static native nativeSetVideoPlaybackMode()V
.end method

.method public static setColorEffectIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 372
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorEffectIndex(I)V

    .line 373
    return-void
.end method

.method public static setColorRegion(IIIII)Z
    .locals 1
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 283
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static setContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 298
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(I)V

    .line 299
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 358
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    .line 359
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 395
    const-string v0, "persist.sys.gamma.index"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(I)V

    .line 397
    return-void
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 177
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode()V

    .line 192
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 184
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode()V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode()V

    goto :goto_0
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 328
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(I)V

    .line 329
    return-void
.end method

.method public static setPictureMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 276
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(I)Z

    move-result v0

    return v0
.end method

.method public static setProtectEyesMode(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 200
    and-int/lit8 v0, p0, 0xf

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetProtectEyesOff()V

    .line 216
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 206
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetProtectEyesLevel1()V

    goto :goto_0

    .line 208
    :cond_1
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 210
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetProtectEyesLevel2()V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetProtectEyesLevel3()V

    goto :goto_0
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 313
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(I)V

    .line 314
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 343
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    .line 344
    return-void
.end method
