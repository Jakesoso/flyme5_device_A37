.class public Lcom/color/widget/ColorSubtitleView;
.super Landroid/view/View;
.source "ColorSubtitleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEmptyBottle"


# instance fields
.field private mContentHeight:I

.field private mContentWidth:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextColor:I

.field private mDefaultTextSize:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextMarginTop:I

.field private mTextPaddingBottom:I

.field private mTextPaddingTop:I

.field protected mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field protected mTextView:Ljava/lang/String;

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserTextColor:I

.field private mUserTextSize:I

.field private mViewMarginTop:I

.field private mViewPaddingLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0xc01047b

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v3, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextColor:I

    .line 44
    iput v3, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextColor:I

    .line 45
    iput v3, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextSize:I

    .line 46
    iput v3, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextSize:I

    .line 48
    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 49
    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mTextView:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mViewMarginTop:I

    .line 54
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mContentHeight:I

    .line 55
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingTop:I

    .line 56
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingBottom:I

    .line 57
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mViewPaddingLeft:I

    .line 58
    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mContentWidth:I

    .line 71
    sget-object v1, Loppo/R$styleable;->ColorSubtitleView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextSize:I

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextColor:I

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mContentHeight:I

    .line 76
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingTop:I

    .line 77
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingBottom:I

    .line 78
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSubtitleView;->mViewPaddingLeft:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method


# virtual methods
.method protected initPaint()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 92
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 93
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 94
    iget v1, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextSize:I

    .line 95
    .local v1, "textSize":I
    if-ne v1, v4, :cond_0

    .line 96
    iget v1, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextSize:I

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 100
    iget v0, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextColor:I

    .line 101
    .local v0, "textColor":I
    if-ne v0, v4, :cond_1

    .line 102
    iget v0, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultTextColor:I

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 106
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, "textY":I
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextView:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 115
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 116
    .local v3, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/color/widget/ColorSubtitleView;->mTextView:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v5, v9

    .line 117
    .local v5, "textWidth":I
    const/4 v6, 0x0

    .line 118
    .local v6, "textX":I
    iget v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingTop:I

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v11, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v10, v11

    add-int v7, v9, v10

    .line 119
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextView:Ljava/lang/String;

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    .end local v3    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "textWidth":I
    .end local v6    # "textX":I
    :cond_0
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 123
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 124
    .local v1, "drawableHeight":I
    iget v9, p0, Lcom/color/widget/ColorSubtitleView;->mTextPaddingBottom:I

    add-int v8, v7, v9

    .line 125
    .local v8, "top":I
    const/4 v2, 0x0

    .line 126
    .local v2, "left":I
    iget v9, p0, Lcom/color/widget/ColorSubtitleView;->mContentWidth:I

    add-int v4, v2, v9

    .line 127
    .local v4, "right":I
    add-int v0, v8, v1

    .line 128
    .local v0, "bottom":I
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v2, v8, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    iget-object v9, p0, Lcom/color/widget/ColorSubtitleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    .end local v0    # "bottom":I
    .end local v1    # "drawableHeight":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v8    # "top":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/color/widget/ColorSubtitleView;->initPaint()V

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    .local v1, "width":I
    iget v2, p0, Lcom/color/widget/ColorSubtitleView;->mViewPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/color/widget/ColorSubtitleView;->mContentWidth:I

    .line 87
    iget v0, p0, Lcom/color/widget/ColorSubtitleView;->mContentHeight:I

    .line 88
    .local v0, "height":I
    iget v2, p0, Lcom/color/widget/ColorSubtitleView;->mContentWidth:I

    invoke-virtual {p0, v2, v0}, Lcom/color/widget/ColorSubtitleView;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/color/widget/ColorSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSubtitleView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/color/widget/ColorSubtitleView;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/color/widget/ColorSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSubtitleView;->setMessage(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/color/widget/ColorSubtitleView;->mTextView:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextColor:I

    .line 178
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/color/widget/ColorSubtitleView;->mUserTextSize:I

    .line 186
    return-void
.end method
