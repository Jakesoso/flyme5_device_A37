.class public final Lcom/oppo/theme/OppoConvertIcon;
.super Ljava/lang/Object;
.source "OppoConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final DEBUG_NORMAL:Z = false

.field private static final IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "iphone_style_bg.png"

.field private static final IPHONE_STYLE_FG_NAME:Ljava/lang/String; = "iphone_style_fg.png"

.field private static final NEW_IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "new_iphone_style_bg.png"

.field private static final NEW_IPHONE_STYLE_MASK:Ljava/lang/String; = "new_iphone_style_mask.png"

.field private static final TAG:Ljava/lang/String; = "OppoConvertIcon"

.field private static drawForeground:Z

.field private static final drawabledirs:[Ljava/lang/String;

.field private static mIconBackground:Landroid/graphics/drawable/Drawable;

.field private static mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

.field private static mIconForeground:Landroid/graphics/drawable/Drawable;

.field public static mMaskBitmap:Landroid/graphics/Bitmap;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sCoverBackgroundPic:Ljava/lang/String;

.field private static sIconHeight:I

.field private static sIconSize:I

.field private static sIconWidth:I

.field private static sMaskBackgroundPic:Ljava/lang/String;

.field private static sMaskForegroundPic:Ljava/lang/String;

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sThemeParamScale:I

.field private static sThemeParamXOffset:I

.field private static sThemeParamYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    const/16 v0, 0x80

    sput v0, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    .line 51
    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    .line 52
    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    .line 54
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    .line 55
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    .line 56
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    .line 63
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 64
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 65
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 69
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 71
    sput-boolean v2, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "res/drawable-hdpi/"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "res/drawable-xhdpi/"

    aput-object v2, v0, v1

    const-string/jumbo v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 95
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 101
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oppo/theme/OppoConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ZZ)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z
    .param p3, "forceCutAndScale"    # Z

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v5, 0x0

    .line 202
    :goto_0
    return-object v5

    .line 112
    :cond_0
    sget-object v18, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    .line 113
    :try_start_0
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 117
    :cond_1
    sget v16, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    .line 118
    .local v16, "width":I
    sget v8, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    .line 119
    .local v8, "height":I
    const/4 v10, 0x0

    .line 120
    .local v10, "originalBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 122
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 123
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 124
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 149
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    if-gtz v17, :cond_6

    .line 150
    const/4 v5, 0x0

    monitor-exit v18

    goto :goto_0

    .line 203
    .end local v8    # "height":I
    .end local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "width":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 125
    .restart local v8    # "height":I
    .restart local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "width":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 128
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 129
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 136
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 137
    move-object v10, v5

    goto :goto_1

    .line 140
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 145
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 141
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 152
    :cond_6
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v19, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 154
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 155
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    if-eqz p2, :cond_b

    .line 160
    if-eqz p3, :cond_8

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 202
    :cond_7
    :goto_3
    monitor-exit v18

    goto/16 :goto_0

    .line 164
    :cond_8
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v19, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 166
    sget-boolean v17, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 167
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/oppo/theme/OppoConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 169
    :cond_9
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v19, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v17, :cond_a

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 171
    sget-boolean v17, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 172
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/oppo/theme/OppoConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 175
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 179
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 180
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 181
    .local v13, "sourceHeight":I
    if-lez v14, :cond_c

    if-lez v13, :cond_c

    .line 182
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v12, v17, v19

    .line 183
    .local v12, "ratio":F
    if-le v14, v13, :cond_d

    .line 185
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v8, v0

    .line 192
    .end local v12    # "ratio":F
    :cond_c
    :goto_4
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int v17, v17, v16

    div-int/lit8 v9, v17, 0x2

    .line 193
    .local v9, "left":I
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int v17, v17, v8

    div-int/lit8 v15, v17, 0x2

    .line 195
    .local v15, "top":I
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    add-int v17, v9, v16

    add-int v19, v15, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 186
    .end local v9    # "left":I
    .end local v15    # "top":I
    .restart local v12    # "ratio":F
    :cond_d
    if-le v13, v14, :cond_c

    .line 188
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_4
.end method

.method static coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 236
    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 241
    :cond_0
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 242
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_1
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 246
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 247
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 251
    :cond_2
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 252
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 253
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 254
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 255
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 256
    .local v0, "h":I
    sget v4, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_3
    :goto_0
    return-void

    .line 259
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_4
    const-string v4, "OppoConvertIcon"

    const-string v5, "coverBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static coverBitmapNoCut(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 12
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 207
    if-eqz p1, :cond_2

    .line 208
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 210
    .local v4, "mIconBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 211
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v10, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 218
    .local v0, "f":D
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v10, 0x43c80000    # 400.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    sget-boolean v9, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    if-eqz v9, :cond_1

    .line 219
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 222
    .local v6, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 224
    .local v5, "sourceHeight":I
    int-to-double v10, v6

    mul-double/2addr v10, v0

    double-to-int v8, v10

    .line 225
    .local v8, "width":I
    int-to-double v10, v5

    mul-double/2addr v10, v0

    double-to-int v2, v10

    .line 227
    .local v2, "height":I
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v3, v9, 0x2

    .line 228
    .local v3, "l":I
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v9, v2

    div-int/lit8 v7, v9, 0x2

    .line 229
    .local v7, "t":I
    add-int v9, v3, v8

    add-int v10, v7, v2

    invoke-virtual {p0, v3, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    .end local v0    # "f":D
    .end local v2    # "height":I
    .end local v3    # "l":I
    .end local v4    # "mIconBackground":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    .end local v7    # "t":I
    .end local v8    # "width":I
    :cond_2
    return-void
.end method

.method static cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 266
    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 272
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 275
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 276
    .local v0, "h":I
    sget v4, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_1
    :goto_0
    return-void

    .line 278
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "OppoConvertIcon"

    const-string v5, "cutAndScaleBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 343
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 346
    :cond_0
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 348
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 350
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 352
    :cond_1
    return-void
.end method

.method public static getIconBgType()Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    .locals 6

    .prologue
    .line 420
    const-string v1, "/data/theme/"

    .line 421
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 423
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.oppo.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v4, "iphone_style_bg.png"

    invoke-static {v3, v4}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 425
    const-string/jumbo v4, "iphone_style_fg.png"

    invoke-static {v3, v4}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    const/4 v4, 0x1

    sput-boolean v4, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 428
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 429
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    if-eqz v3, :cond_1

    .line 447
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v2, v3

    .line 454
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    return-object v4

    .line 431
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    const-string/jumbo v4, "new_iphone_style_bg.png"

    invoke-static {v3, v4}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "new_iphone_style_mask.png"

    invoke-static {v3, v4}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 433
    const-string/jumbo v4, "iphone_style_fg.png"

    invoke-static {v3, v4}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 434
    const/4 v4, 0x1

    sput-boolean v4, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 436
    :cond_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 437
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 446
    if-eqz v3, :cond_5

    .line 447
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_2
    move-object v2, v3

    .line 451
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 446
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    if-eqz v3, :cond_7

    .line 447
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 454
    :cond_7
    :goto_3
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    move-object v2, v3

    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    if-eqz v2, :cond_2

    .line 447
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 449
    :catch_1
    move-exception v5

    goto :goto_1

    .line 445
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 446
    :goto_5
    if-eqz v2, :cond_8

    .line 447
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 451
    :cond_8
    :goto_6
    throw v4

    .line 449
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_3

    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 445
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 439
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static getIconSize()I
    .locals 1

    .prologue
    .line 525
    sget v0, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    return v0
.end method

.method public static getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 498
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 499
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 500
    sput-object v6, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 502
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 504
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 505
    invoke-static {p0}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 507
    :cond_1
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v3, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 508
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 509
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    if-eqz v1, :cond_2

    .line 511
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v3, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 516
    :goto_0
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-object v2

    .line 514
    :cond_2
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public static getThemeParamScale()I
    .locals 1

    .prologue
    .line 521
    sget v0, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    return v0
.end method

.method public static hasInit()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initConvertIcon(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 529
    invoke-static {}, Lcom/oppo/theme/OppoThirdPartUtil;->setDefaultTheme()V

    .line 530
    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getIconBgType()Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    move-result-object v0

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    if-ne v0, v1, :cond_0

    .line 531
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v0

    const-string/jumbo v1, "new_iphone_style_mask.png"

    invoke-static {p0, v1}, Lcom/oppo/theme/OppoConvertIcon;->getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    :cond_0
    const-string/jumbo v0, "new_iphone_style_bg.png"

    const-string/jumbo v1, "iphone_style_fg.png"

    const-string/jumbo v2, "iphone_style_bg.png"

    invoke-static {p0, v0, v1, v2}, Lcom/oppo/theme/OppoConvertIcon;->initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v0

    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getIconSize()I

    move-result v1

    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getThemeParamScale()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->setCutAndScalePram(II)V

    .line 537
    return-void
.end method

.method private static initIconSize(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 363
    const/16 v1, 0x9c

    .line 364
    .local v1, "width":I
    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 366
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 367
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v1, v2, 0x5a

    .line 370
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    .line 371
    return-void
.end method

.method public static initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "maskBg"    # Ljava/lang/String;
    .param p2, "MaskFg"    # Ljava/lang/String;
    .param p3, "coverBg"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Lcom/oppo/theme/OppoIconParam;

    const-string/jumbo v2, "themeInfo.xml"

    invoke-direct {v0, v2}, Lcom/oppo/theme/OppoIconParam;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "oppoIconParam":Lcom/oppo/theme/OppoIconParam;
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->parseXml()Z

    .line 377
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getScale()F

    move-result v1

    .line 378
    .local v1, "tempRatio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 379
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    if-ne v2, v3, :cond_2

    .line 380
    const v1, 0x3f1eb852    # 0.62f

    .line 387
    :cond_0
    :goto_0
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 388
    invoke-static {p0}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 390
    :cond_1
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    .line 396
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getXOffset()F

    move-result v1

    .line 397
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    .line 402
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getYOffset()F

    move-result v1

    .line 403
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    .line 409
    invoke-static {p1, p2, p3}, Lcom/oppo/theme/OppoConvertIcon;->setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void

    .line 381
    :cond_2
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    if-ne v2, v3, :cond_3

    .line 382
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 383
    :cond_3
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgType:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    if-ne v2, v3, :cond_0

    .line 384
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 468
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, "file":Ljava/util/zip/ZipFile;
    invoke-static {v1, p1}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v2

    .line 470
    .local v2, "flag":Z
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1    # "file":Ljava/util/zip/ZipFile;
    .end local v2    # "flag":Z
    :goto_0
    return v2

    .line 472
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 488
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 490
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 491
    const/4 v2, 0x1

    .line 494
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_1
    return v2

    .line 488
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 494
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 10
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 284
    if-nez p1, :cond_0

    .line 285
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 287
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {p0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 294
    :cond_0
    if-eqz p1, :cond_6

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    if-nez v5, :cond_1

    .line 297
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 299
    :cond_1
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 300
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->scaleAndMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 302
    .local v2, "scale":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 303
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 307
    :cond_2
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 308
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v6, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v7, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 315
    :goto_0
    if-eqz v2, :cond_5

    .line 316
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 317
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 319
    .local v0, "h":I
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int v4, v5, v6

    .line 320
    .local v4, "xEndPosDiffer":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 321
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p3, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 333
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    .end local v4    # "xEndPosDiffer":I
    :goto_1
    return-void

    .line 313
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_3
    const-string v5, "OppoConvertIcon"

    const-string/jumbo v6, "maskBitmap -- mIconBackground == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .restart local v0    # "h":I
    .restart local v3    # "w":I
    .restart local v4    # "xEndPosDiffer":I
    :cond_4
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p3, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 327
    .end local v0    # "h":I
    .end local v3    # "w":I
    .end local v4    # "xEndPosDiffer":I
    :cond_5
    const-string v5, "OppoConvertIcon"

    const-string/jumbo v6, "maskBitmap -- scale == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_6
    const-string v5, "OppoConvertIcon"

    const-string/jumbo v6, "maskBitmap -- originalBitmap == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "maskBg"    # Ljava/lang/String;
    .param p1, "MaskFg"    # Ljava/lang/String;
    .param p2, "coverBg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 355
    sput-object p0, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 356
    sput-object p1, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 357
    sput-object p2, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 358
    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 359
    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 360
    return-void
.end method
