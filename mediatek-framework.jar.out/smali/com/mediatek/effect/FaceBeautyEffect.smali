.class public Lcom/mediatek/effect/FaceBeautyEffect;
.super Lcom/mediatek/effect/Effect;
.source "FaceBeautyEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceBeautyEffect"

.field private static mIsEmulator:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstImage:Landroid/media/Image;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReadyVariable:Landroid/os/ConditionVariable;

.field private mParamString:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "ro.mtk_emulator_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/mediatek/effect/FaceBeautyEffect;->mIsEmulator:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/effect/Effect;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mParamString:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReadyVariable:Landroid/os/ConditionVariable;

    .line 45
    sget-boolean v0, Lcom/mediatek/effect/FaceBeautyEffect;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0, p0}, Lcom/mediatek/effect/FaceBeautyEffect;->native_setup(Lcom/mediatek/effect/FaceBeautyEffect;)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/effect/FaceBeautyEffect;Landroid/media/Image;)Landroid/media/Image;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/FaceBeautyEffect;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mDstImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/effect/FaceBeautyEffect;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/FaceBeautyEffect;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReadyVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static createEffect()Lcom/mediatek/effect/Effect;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/mediatek/effect/FaceBeautyEffect;

    invoke-direct {v0}, Lcom/mediatek/effect/FaceBeautyEffect;-><init>()V

    return-object v0
.end method

.method private getContinuousRGBADataFromImage(Landroid/media/Image;)[B
    .locals 15
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 170
    const-string v13, "FaceBeautyEffect"

    const-string v14, "[getContinuousRGBADataFromImage] begin"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 172
    .local v2, "format":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v11

    .line 173
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 175
    .local v3, "height":I
    const/4 v1, 0x0

    .line 176
    .local v1, "data":[B
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 177
    .local v8, "planes":[Landroid/media/Image$Plane;
    const/4 v13, 0x4

    if-ne v2, v13, :cond_1

    .line 178
    new-instance v6, Landroid/graphics/PixelFormat;

    invoke-direct {v6}, Landroid/graphics/PixelFormat;-><init>()V

    .line 179
    .local v6, "pixelInfo":Landroid/graphics/PixelFormat;
    invoke-static {v2, v6}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 180
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 183
    .local v10, "rowStride":I
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 184
    .local v7, "pixelStride":I
    mul-int v13, v11, v3

    iget v14, v6, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x8

    new-array v1, v13, [B

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, "offset":I
    mul-int v13, v7, v11

    sub-int v9, v10, v13

    .line 189
    .local v9, "rowPadding":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-ge v12, v3, :cond_0

    .line 190
    mul-int v4, v11, v7

    .line 191
    .local v4, "length":I
    invoke-virtual {v0, v1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    add-int/2addr v5, v4

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "length":I
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "offset":I
    .end local v6    # "pixelInfo":Landroid/graphics/PixelFormat;
    .end local v7    # "pixelStride":I
    .end local v9    # "rowPadding":I
    .end local v10    # "rowStride":I
    .end local v12    # "y":I
    :cond_1
    const-string v13, "FaceBeautyEffect"

    const-string v14, "[getContinuousRGBADataFromImage] end"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v1
.end method

.method private native native_apply(Landroid/media/Image;Landroid/media/Image;)V
.end method

.method private native native_release()V
.end method

.method private native native_setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private native native_setup(Lcom/mediatek/effect/FaceBeautyEffect;)V
.end method

.method private prepareImageReader(III)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 150
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageReader_Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mHandlerThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 152
    iget-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 154
    .local v0, "imageLooper":Landroid/os/Looper;
    const/4 v1, 0x2

    invoke-static {p1, p2, p3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReader:Landroid/media/ImageReader;

    .line 155
    iget-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/mediatek/effect/FaceBeautyEffect$1;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/FaceBeautyEffect$1;-><init>(Lcom/mediatek/effect/FaceBeautyEffect;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mSurface:Landroid/view/Surface;

    .line 167
    return-void
.end method

.method private renderDataToSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 18
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/Surface;->isValid()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 204
    const-string v15, "FaceBeautyEffect"

    const-string v16, "surface is valid"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 207
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 208
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    if-eqz p3, :cond_3

    .line 210
    const/high16 v15, -0x10000

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    const/high16 v15, 0x43200000    # 160.0f

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 214
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

    .line 215
    .local v12, "textHeight":I
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 216
    .local v13, "textLength":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v13, v15

    float-to-int v15, v15

    add-int/lit8 v6, v15, 0x1

    .line 217
    .local v6, "lineCount":I
    const-string v15, "FaceBeautyEffect"

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

    .line 218
    const/4 v15, 0x1

    if-le v6, v15, :cond_2

    .line 219
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v14, "textStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 221
    .local v9, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 222
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    div-int/2addr v15, v6

    add-int/lit8 v16, v5, 0x1

    mul-int v15, v15, v16

    add-int/lit8 v4, v15, -0x1

    .line 223
    .local v4, "end":I
    add-int/lit8 v15, v6, -0x1

    if-ne v5, v15, :cond_0

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 226
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    move v9, v4

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v4    # "end":I
    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_3

    .line 231
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 232
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 233
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

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
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

    .line 241
    .end local v6    # "lineCount":I
    .end local v7    # "mFontWidth":Landroid/graphics/Paint$FontMetrics;
    .end local v12    # "textHeight":I
    .end local v13    # "textLength":F
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_4
    :goto_2
    return-void

    .line 242
    :catch_0
    move-exception v3

    .line 243
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "FaceBeautyEffect"

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
.method public apply(Landroid/media/Image;Landroid/media/Image;)V
    .locals 13
    .param p1, "srcImage"    # Landroid/media/Image;
    .param p2, "targetImage"    # Landroid/media/Image;

    .prologue
    .line 64
    const-string v10, "FaceBeautyEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apply(), srcImage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", targetImage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mParamString:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mParamString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-boolean v10, Lcom/mediatek/effect/FaceBeautyEffect;->mIsEmulator:Z

    if-eqz v10, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 67
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 68
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 69
    .local v4, "format":I
    invoke-direct {p0, v9, v5, v4}, Lcom/mediatek/effect/FaceBeautyEffect;->prepareImageReader(III)V

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/effect/FaceBeautyEffect;->getContinuousRGBADataFromImage(Landroid/media/Image;)[B

    move-result-object v1

    .line 71
    .local v1, "buffer":[B
    array-length v10, v1

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 72
    .local v6, "imageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    .line 77
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    :goto_0
    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 84
    const-string v10, "FaceBeautyEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitmap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReadyVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v10}, Landroid/os/ConditionVariable;->close()V

    .line 86
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mSurface:Landroid/view/Surface;

    iget-object v11, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mParamString:Ljava/lang/String;

    invoke-direct {p0, v10, v0, v11}, Lcom/mediatek/effect/FaceBeautyEffect;->renderDataToSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 87
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mImageReadyVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    .line 89
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mDstImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    .line 90
    .local v7, "srcPlanes":[Landroid/media/Image$Plane;
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 92
    .local v8, "srcbuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 93
    .local v3, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mDstImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->close()V

    .line 98
    iget-object v10, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "buffer":[B
    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "dstPlanes":[Landroid/media/Image$Plane;
    .end local v4    # "format":I
    .end local v5    # "height":I
    .end local v6    # "imageBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "srcPlanes":[Landroid/media/Image$Plane;
    .end local v8    # "srcbuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "width":I
    :goto_1
    return-void

    .line 81
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "buffer":[B
    .restart local v4    # "format":I
    .restart local v5    # "height":I
    .restart local v6    # "imageBuffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "width":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "buffer":[B
    .end local v4    # "format":I
    .end local v5    # "height":I
    .end local v6    # "imageBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "width":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/FaceBeautyEffect;->native_apply(Landroid/media/Image;Landroid/media/Image;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const-string v0, "facebeautyeffect"

    .line 112
    .local v0, "effectName":Ljava/lang/String;
    const-string v1, "FaceBeautyEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getName(), effectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/mediatek/effect/FaceBeautyEffect;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/mediatek/effect/FaceBeautyEffect;->native_release()V

    .line 147
    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    const-string v0, "FaceBeautyEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter(), parameterKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-boolean v0, Lcom/mediatek/effect/FaceBeautyEffect;->mIsEmulator:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mParamString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/FaceBeautyEffect;->mParamString:Ljava/lang/String;

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/FaceBeautyEffect;->native_setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
