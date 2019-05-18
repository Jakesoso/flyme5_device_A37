.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Stk-IL"

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static sSimCount:I

.field private static sThread:[Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mSlotId:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 60
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 83
    iput p3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 322
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 323
    const/4 v0, -0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 5
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v2, :cond_1

    .line 89
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 117
    :cond_0
    :goto_0
    return-object v1

    .line 91
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    .line 93
    sget v2, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    new-array v2, v2, [Landroid/os/HandlerThread;

    sput-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ge v0, v2, :cond_2

    .line 95
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aput-object v1, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    :cond_2
    if-eqz p1, :cond_0

    .line 99
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    if-nez v2, :cond_3

    .line 100
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Cat Icon Loader"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, p2

    .line 101
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 103
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    new-instance v1, Lcom/android/internal/telephony/cat/IconLoader;

    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    sput-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 111
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "numOfBits"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_0

    .line 412
    :goto_0
    return v0

    .line 388
    :pswitch_0
    const/4 v0, 0x1

    .line 389
    goto :goto_0

    .line 391
    :pswitch_1
    const/4 v0, 0x3

    .line 392
    goto :goto_0

    .line 394
    :pswitch_2
    const/4 v0, 0x7

    .line 395
    goto :goto_0

    .line 397
    :pswitch_3
    const/16 v0, 0xf

    .line 398
    goto :goto_0

    .line 400
    :pswitch_4
    const/16 v0, 0x1f

    .line 401
    goto :goto_0

    .line 403
    :pswitch_5
    const/16 v0, 0x3f

    .line 404
    goto :goto_0

    .line 406
    :pswitch_6
    const/16 v0, 0x7f

    .line 407
    goto :goto_0

    .line 409
    :pswitch_7
    const/16 v0, 0xff

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 227
    const-string v1, "Stk-IL"

    const-string v2, "call handleImageDescriptor"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez v1, :cond_0

    .line 230
    const-string v0, "Stk-IL"

    const-string v1, "fail to parse image raw data"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    const-string v1, "Stk-IL"

    const-string v2, "success to parse image raw data"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 289
    const/4 v8, 0x0

    .line 290
    .local v8, "valueIndex":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 291
    .local v10, "width":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 292
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 294
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 296
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 297
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 298
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    move v9, v8

    .line 299
    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 301
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 302
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 303
    const/4 v0, 0x7

    .line 305
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 308
    :cond_0
    if-eq v6, v4, :cond_1

    .line 309
    const-string v11, "IconLoader"

    const-string v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    .prologue
    .line 340
    const/16 v16, 0x0

    .line 341
    .local v16, "valueIndex":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .local v17, "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 342
    .local v18, "width":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v9, v0, 0xff

    .line 343
    .local v9, "height":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 344
    .local v4, "bitsPerImg":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 346
    .local v11, "numOfClutEntries":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 347
    add-int/lit8 v19, v11, -0x1

    const/16 v20, 0x0

    aput-byte v20, p3, v19

    .line 350
    :cond_0
    mul-int v12, v18, v9

    .line 351
    .local v12, "numOfPixels":I
    new-array v15, v12, [I

    .line 353
    .local v15, "pixels":[I
    const/16 v16, 0x6

    .line 354
    const/4 v13, 0x0

    .line 355
    .local v13, "pixelIndex":I
    rsub-int/lit8 v5, v4, 0x8

    .line 356
    .local v5, "bitsStartOffset":I
    move v2, v5

    .line 357
    .local v2, "bitIndex":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v8, p0, v16

    .line 358
    .local v8, "currentByte":B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v10

    .line 359
    .local v10, "mask":I
    const/16 v19, 0x8

    rem-int v19, v19, v4

    if-nez v19, :cond_1

    const/4 v3, 0x1

    .local v3, "bitsOverlaps":Z
    :goto_0
    move v14, v13

    .line 360
    .end local v13    # "pixelIndex":I
    .local v14, "pixelIndex":I
    :goto_1
    if-ge v14, v12, :cond_3

    .line 362
    if-gez v2, :cond_4

    .line 363
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v17

    .line 364
    if-eqz v3, :cond_2

    move v2, v5

    .line 366
    :goto_2
    shr-int v19, v8, v2

    and-int v6, v19, v10

    .line 367
    .local v6, "clutEntry":I
    mul-int/lit8 v7, v6, 0x3

    .line 368
    .local v7, "clutIndex":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    aget-byte v19, p3, v7

    add-int/lit8 v20, v7, 0x1

    aget-byte v20, p3, v20

    add-int/lit8 v21, v7, 0x2

    aget-byte v21, p3, v21

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    aput v19, v15, v14

    .line 370
    sub-int/2addr v2, v4

    move v14, v13

    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    .line 371
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_1

    .line 359
    .end local v3    # "bitsOverlaps":Z
    .end local v6    # "clutEntry":I
    .end local v7    # "clutIndex":I
    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 364
    .end local v13    # "pixelIndex":I
    .end local v17    # "valueIndex":I
    .restart local v3    # "bitsOverlaps":Z
    .restart local v14    # "pixelIndex":I
    .restart local v16    # "valueIndex":I
    :cond_2
    mul-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 373
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    :cond_4
    move/from16 v16, v17

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    goto :goto_2
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 273
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    mul-int/lit8 v4, v0, 0x3

    .line 240
    .local v4, "length":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 241
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 244
    return-void
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "Stk-IL"

    const-string v1, "call readIconData"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 262
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 263
    return-void
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 248
    const-string v1, "Stk-IL"

    const-string v2, "call readId"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 251
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startLoadingIcon(I)V
    .locals 3
    .param p1, "recordNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "Stk-IL"

    const-string v1, "call startLoadingIcon"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 146
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 147
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 148
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "Stk-IL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconsCache contains record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "Stk-IL"

    const-string v1, "to load icon from EFimg"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    iput-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 423
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 425
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 426
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aput-object v3, v1, v2

    .line 429
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ge v0, v1, :cond_1

    .line 430
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    array-length v1, v1

    if-le v1, v0, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 435
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ne v0, v1, :cond_2

    .line 436
    sput-object v3, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 439
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 440
    sput-object v3, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 441
    return-void

    .line 429
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 166
    const/4 v4, 0x0

    .line 169
    .local v4, "rawData":[B
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const-string v6, "Stk-IL"

    const-string v7, "load EFimg done"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "Stk-IL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg.obj is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 174
    .local v1, "ar":Landroid/os/AsyncResult;
    const-string v6, "Stk-IL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ar is null? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 176
    const-string v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EFimg raw data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v5, "Stk-IL"

    const-string v6, "load icon done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 186
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 187
    const-string v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icon raw data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load icon CODING_SCHEME = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v7, v7, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 190
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 191
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 193
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_3

    .line 194
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    goto/16 :goto_0

    .line 197
    :cond_3
    const-string v5, "Stk-IL"

    const-string v6, "else  /postIcon "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 202
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v5, "Stk-IL"

    const-string v6, "load clut done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 204
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 205
    .local v2, "clut":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 207
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 126
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 128
    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 130
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method
