.class public Lcom/color/widget/ColorInstallLoadProgress;
.super Lcom/color/widget/ColorLoadProgress;
.source "ColorInstallLoadProgress.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mDefaultFailTextColor:I

.field private mDefaultTextColor:I

.field private mDefaultTextSize:I

.field private mFailTextColor:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeight:I

.field private mInstallDownloadBg:Landroid/graphics/drawable/Drawable;

.field private mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

.field private mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

.field private mInstallFailBg:Landroid/graphics/drawable/Drawable;

.field private mInstallFailPressed:Landroid/graphics/drawable/Drawable;

.field private mIsChangeTextColor:Z

.field private mProgressTextColor:I

.field private mSpace:I

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextView:Ljava/lang/String;

.field private mUserFailTextColor:I

.field private mUserTextColor:I

.field private mUserTextSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0xc010463

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v4, "ColorInstallLoadProgress"

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->DEBUG:Z

    .line 38
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    .line 42
    iput v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextSize:I

    .line 45
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultTextColor:I

    .line 46
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultFailTextColor:I

    .line 47
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextColor:I

    .line 48
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserFailTextColor:I

    .line 49
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextColor:I

    .line 50
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFailTextColor:I

    .line 51
    iput v5, p0, Lcom/color/widget/ColorInstallLoadProgress;->mProgressTextColor:I

    .line 53
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadBg:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailBg:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailPressed:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v7, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 59
    iput v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->mSpace:I

    .line 60
    iput-boolean v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 74
    sget-object v4, Loppo/R$styleable;->ColorLoadProgress:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 77
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorInstallLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050462

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    .local v3, "textSize":I
    sget-object v4, Loppo/R$styleable;->ColorInstallLoadProgress:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 84
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 85
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    .line 86
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadBg:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

    .line 89
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailBg:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailPressed:Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mHeight:I

    .line 92
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc06041d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultTextColor:I

    .line 93
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc06041e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultFailTextColor:I

    .line 94
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc060424

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mProgressTextColor:I

    .line 96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 162
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    .line 163
    iget-object v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 164
    iget v0, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextSize:I

    .line 165
    .local v0, "textSize":I
    if-nez v0, :cond_0

    .line 166
    iget v0, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultTextSize:I

    .line 168
    :cond_0
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextColor:I

    iput v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextColor:I

    .line 169
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextColor:I

    if-ne v1, v2, :cond_1

    .line 170
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultTextColor:I

    iput v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextColor:I

    .line 172
    :cond_1
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserFailTextColor:I

    iput v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFailTextColor:I

    .line 173
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFailTextColor:I

    if-ne v1, v2, :cond_2

    .line 174
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mDefaultFailTextColor:I

    iput v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFailTextColor:I

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 177
    iget-object v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 178
    return-void
.end method

.method private onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    return-void
.end method

.method private onDrawText(Landroid/graphics/Canvas;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "buttonDrawableWidth"    # I
    .param p4, "buttonDrawableHeight"    # I
    .param p5, "left"    # I

    .prologue
    .line 185
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 187
    .local v0, "textWidth":I
    sub-int v3, p3, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p2, v3

    .line 188
    .local v1, "textX":I
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    sub-int v3, p4, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v4

    .line 189
    .local v2, "textY":I
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    iget-boolean v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/color/widget/ColorInstallLoadProgress;->mProgressTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    iget v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mSpace:I

    invoke-virtual {p1, p5, p2, v3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 195
    iget-object v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 197
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/color/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 200
    .end local v0    # "textWidth":I
    .end local v1    # "textX":I
    .end local v2    # "textY":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    invoke-super/range {p0 .. p1}, Lcom/color/widget/ColorLoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, "left":I
    const/4 v4, 0x0

    .line 207
    .local v4, "top":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/ColorInstallLoadProgress;->mWidth:I

    .line 208
    .local v5, "right":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/color/widget/ColorInstallLoadProgress;->mHeight:I

    .line 209
    .local v6, "bottom":I
    const/4 v15, 0x0

    .line 210
    .local v15, "scale":F
    sub-int v10, v5, v3

    .line 211
    .local v10, "buttonDrawableWidth":I
    sub-int v11, v6, v4

    .line 212
    .local v11, "buttonDrawableHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorInstallLoadProgress;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallFailPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorInstallLoadProgress;->mFailTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 218
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v4

    move v12, v3

    .line 219
    invoke-direct/range {v7 .. v12}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;IIII)V

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mProgress:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorInstallLoadProgress;->mMax:I

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 224
    int-to-float v1, v10

    mul-float/2addr v1, v15

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mSpace:I

    .line 225
    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 228
    .local v14, "min":I
    move v13, v11

    .line 229
    .local v13, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mSpace:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v1, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadProgress:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    .end local v13    # "height":I
    .end local v14    # "min":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorInstallLoadProgress;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/ColorInstallLoadProgress;->mInstallDownloadPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawBg(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mIsChangeTextColor:Z

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/color/widget/ColorInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorInstallLoadProgress;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v4

    move v12, v3

    .line 240
    invoke-direct/range {v7 .. v12}, Lcom/color/widget/ColorInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;IIII)V

    .line 242
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mWidth:I

    .line 156
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 157
    .local v0, "height":I
    iget v1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mWidth:I

    iget v2, p0, Lcom/color/widget/ColorInstallLoadProgress;->mHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/color/widget/ColorInstallLoadProgress;->setMeasuredDimension(II)V

    .line 158
    invoke-direct {p0}, Lcom/color/widget/ColorInstallLoadProgress;->init()V

    .line 159
    return-void
.end method

.method public setFailTextColor(I)V
    .locals 0
    .param p1, "failTextColor"    # I

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iput p1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserFailTextColor:I

    .line 141
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->invalidate()V

    .line 118
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iput p1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextColor:I

    .line 152
    :cond_0
    return-void
.end method

.method public setTextId(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/color/widget/ColorInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorInstallLoadProgress;->setText(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iput p1, p0, Lcom/color/widget/ColorInstallLoadProgress;->mUserTextSize:I

    .line 130
    :cond_0
    return-void
.end method
