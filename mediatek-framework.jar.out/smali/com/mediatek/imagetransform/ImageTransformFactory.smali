.class public Lcom/mediatek/imagetransform/ImageTransformFactory;
.super Ljava/lang/Object;
.source "ImageTransformFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/imagetransform/ImageTransformFactory$Options;
    }
.end annotation


# static fields
.field public static final FLIP_H:Ljava/lang/String; = "horizontally"

.field public static final FLIP_V:Ljava/lang/String; = "vertically"

.field public static final ROT_0:I = 0x0

.field public static final ROT_180:I = 0xb4

.field public static final ROT_270:I = 0x10e

.field public static final ROT_90:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "ImageTransformFactory"

.field private static mIsEmulator:Z

.field private static sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstImage:Landroid/media/Image;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReadyVariable:Landroid/os/ConditionVariable;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const-string v2, "ro.mtk_emulator_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mIsEmulator:Z

    .line 281
    sget-boolean v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 282
    const-string v0, "jni_imagetransform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReadyVariable:Landroid/os/ConditionVariable;

    .line 104
    return-void
.end method

.method static synthetic access$602(Lcom/mediatek/imagetransform/ImageTransformFactory;Landroid/media/Image;)Landroid/media/Image;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mDstImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/imagetransform/ImageTransformFactory;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReadyVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private applyTransformForEmulator(Landroid/media/Image;Landroid/media/Image;Ljava/lang/String;)V
    .locals 14
    .param p1, "srcImage"    # Landroid/media/Image;
    .param p2, "targetImage"    # Landroid/media/Image;
    .param p3, "option"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v11, "ImageTransformFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[applyTransform], srcImage:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetImage:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", option:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v10

    .line 289
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 290
    .local v6, "height":I
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    .line 291
    .local v5, "format":I
    invoke-direct {p0, v10, v6, v5}, Lcom/mediatek/imagetransform/ImageTransformFactory;->prepareImageReader(III)V

    .line 292
    invoke-direct {p0, p1}, Lcom/mediatek/imagetransform/ImageTransformFactory;->getContinuousRGBADataFromImage(Landroid/media/Image;)[B

    move-result-object v2

    .line 293
    .local v2, "buffer":[B
    array-length v11, v2

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 294
    .local v7, "imageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_0

    .line 299
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    iput-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 304
    :goto_0
    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 305
    const-string v11, "ImageTransformFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bitmap:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReadyVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->close()V

    .line 307
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0}, Lcom/mediatek/imagetransform/ImageTransformFactory;->renderDataToSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 308
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReadyVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->block()V

    .line 310
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mDstImage:Landroid/media/Image;

    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 311
    .local v8, "srcPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 313
    .local v9, "srcbuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 314
    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 315
    .local v3, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 316
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mDstImage:Landroid/media/Image;

    invoke-virtual {v11}, Landroid/media/Image;->close()V

    .line 319
    iget-object v11, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    .line 320
    return-void

    .line 302
    .end local v3    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "dstPlanes":[Landroid/media/Image$Plane;
    .end local v8    # "srcPlanes":[Landroid/media/Image$Plane;
    .end local v9    # "srcbuffer":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static createImageTransformFactory()Lcom/mediatek/imagetransform/ImageTransformFactory;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/mediatek/imagetransform/ImageTransformFactory;

    invoke-direct {v0}, Lcom/mediatek/imagetransform/ImageTransformFactory;-><init>()V

    sput-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    .line 114
    :cond_0
    sget-object v0, Lcom/mediatek/imagetransform/ImageTransformFactory;->sImageTransformFactory:Lcom/mediatek/imagetransform/ImageTransformFactory;

    return-object v0
.end method

.method private getContinuousRGBADataFromImage(Landroid/media/Image;)[B
    .locals 15
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 343
    const-string v13, "ImageTransformFactory"

    const-string v14, "[getContinuousRGBADataFromImage] begin"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 345
    .local v2, "format":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v11

    .line 346
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 348
    .local v3, "height":I
    const/4 v1, 0x0

    .line 349
    .local v1, "data":[B
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 350
    .local v8, "planes":[Landroid/media/Image$Plane;
    const/4 v13, 0x4

    if-ne v2, v13, :cond_1

    .line 351
    new-instance v6, Landroid/graphics/PixelFormat;

    invoke-direct {v6}, Landroid/graphics/PixelFormat;-><init>()V

    .line 352
    .local v6, "pixelInfo":Landroid/graphics/PixelFormat;
    invoke-static {v2, v6}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 353
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 355
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 356
    .local v10, "rowStride":I
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 357
    .local v7, "pixelStride":I
    mul-int v13, v11, v3

    iget v14, v6, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x8

    new-array v1, v13, [B

    .line 358
    const/4 v5, 0x0

    .line 359
    .local v5, "offset":I
    mul-int v13, v7, v11

    sub-int v9, v10, v13

    .line 362
    .local v9, "rowPadding":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-ge v12, v3, :cond_0

    .line 363
    mul-int v4, v11, v7

    .line 364
    .local v4, "length":I
    invoke-virtual {v0, v1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 367
    add-int/2addr v5, v4

    .line 362
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 369
    .end local v4    # "length":I
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "offset":I
    .end local v6    # "pixelInfo":Landroid/graphics/PixelFormat;
    .end local v7    # "pixelStride":I
    .end local v9    # "rowPadding":I
    .end local v10    # "rowStride":I
    .end local v12    # "y":I
    :cond_1
    const-string v13, "ImageTransformFactory"

    const-string v14, "[getContinuousRGBADataFromImage] end"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v1
.end method

.method private static native native_applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z
.end method

.method private prepareImageReader(III)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 323
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageReader_Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mHandlerThread:Landroid/os/HandlerThread;

    .line 324
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 325
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 327
    .local v0, "imageLooper":Landroid/os/Looper;
    const/4 v1, 0x2

    invoke-static {p1, p2, p3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReader:Landroid/media/ImageReader;

    .line 328
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/mediatek/imagetransform/ImageTransformFactory$1;

    invoke-direct {v2, p0}, Lcom/mediatek/imagetransform/ImageTransformFactory$1;-><init>(Lcom/mediatek/imagetransform/ImageTransformFactory;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 339
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory;->mSurface:Landroid/view/Surface;

    .line 340
    return-void
.end method

.method private renderDataToSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 18
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/view/Surface;->isValid()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 377
    const-string v15, "ImageTransformFactory"

    const-string v16, "surface is valid"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 380
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 381
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    if-eqz p3, :cond_3

    .line 383
    const/high16 v15, -0x10000

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    const/high16 v15, 0x43200000    # 160.0f

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 385
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 387
    .local v7, "mFontWidth":Landroid/graphics/Paint$FontMetrics;
    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/lit8 v12, v15, 0x2

    .line 388
    .local v12, "textHeight":I
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 389
    .local v13, "textLength":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v13, v15

    float-to-int v15, v15

    add-int/lit8 v6, v15, 0x1

    .line 390
    .local v6, "lineCount":I
    const-string v15, "ImageTransformFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "textLength:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lineCount:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v15, 0x1

    if-le v6, v15, :cond_2

    .line 392
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v14, "textStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 394
    .local v9, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 395
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    div-int/2addr v15, v6

    add-int/lit8 v16, v5, 0x1

    mul-int v15, v15, v16

    add-int/lit8 v4, v15, -0x1

    .line 396
    .local v4, "end":I
    add-int/lit8 v15, v6, -0x1

    if-ne v5, v15, :cond_0

    .line 397
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 399
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    move v9, v4

    .line 394
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    .end local v4    # "end":I
    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_3

    .line 404
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 405
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 406
    .local v11, "strlen":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v11, v16

    sub-float v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    mul-int v17, v12, v5

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v10, v15, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 410
    .end local v5    # "i":I
    .end local v9    # "start":I
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "strlen":F
    .end local v14    # "textStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v13, v16

    sub-float v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    .end local v6    # "lineCount":I
    .end local v7    # "mFontWidth":Landroid/graphics/Paint$FontMetrics;
    .end local v12    # "textHeight":I
    .end local v13    # "textLength":F
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_4
    :goto_2
    return-void

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "ImageTransformFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IllegalArgumentException:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z
    .locals 9
    .param p1, "srcImage"    # Landroid/media/Image;
    .param p2, "targetImage"    # Landroid/media/Image;
    .param p3, "options"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 120
    const-string v7, "ImageTransformFactory"

    const-string v8, "applyTransform()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-boolean v7, Lcom/mediatek/imagetransform/ImageTransformFactory;->mIsEmulator:Z

    if-eqz v7, :cond_0

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$000(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "cropValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$100(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "flipValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rotation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$200(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "rotationValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Quality:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$300(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "qualityValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dither:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$400(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "ditherValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sharpness:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I
    invoke-static {p3}, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->access$500(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "sharpValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "option":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v3}, Lcom/mediatek/imagetransform/ImageTransformFactory;->applyTransformForEmulator(Landroid/media/Image;Landroid/media/Image;Ljava/lang/String;)V

    .line 132
    const/4 v7, 0x1

    .line 134
    .end local v0    # "cropValue":Ljava/lang/String;
    .end local v1    # "ditherValue":Ljava/lang/String;
    .end local v2    # "flipValue":Ljava/lang/String;
    .end local v3    # "option":Ljava/lang/String;
    .end local v4    # "qualityValue":Ljava/lang/String;
    .end local v5    # "rotationValue":Ljava/lang/String;
    .end local v6    # "sharpValue":Ljava/lang/String;
    :goto_0
    return v7

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/mediatek/imagetransform/ImageTransformFactory;->native_applyTransform(Landroid/media/Image;Landroid/media/Image;Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z

    move-result v7

    goto :goto_0
.end method
