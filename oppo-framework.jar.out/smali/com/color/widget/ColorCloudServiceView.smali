.class public Lcom/color/widget/ColorCloudServiceView;
.super Lcom/color/widget/ColorEmptyPage;
.source "ColorCloudServiceView.java"


# instance fields
.field private mContentWidth:I

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextView:Ljava/lang/String;

.field private mLineDistance:I

.field private mSecondLinePos:I

.field private mTextMarginTop:I

.field private mTextSize:I

.field private mViewMarginTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorCloudServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const v0, 0xc010479

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorCloudServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorEmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v1, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iput v2, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultColor:I

    .line 44
    iput-object v1, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultTextView:Ljava/lang/String;

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mSecondLinePos:I

    .line 46
    iput v2, p0, Lcom/color/widget/ColorCloudServiceView;->mWidth:I

    .line 47
    iput v2, p0, Lcom/color/widget/ColorCloudServiceView;->mLineDistance:I

    .line 48
    iput v2, p0, Lcom/color/widget/ColorCloudServiceView;->mViewMarginTop:I

    .line 49
    iput v2, p0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    .line 60
    sget-object v1, Loppo/R$styleable;->ColorEmptyPage:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultTextView:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mTextSize:I

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mDefaultColor:I

    .line 65
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mTextMarginTop:I

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mViewMarginTop:I

    .line 67
    invoke-virtual {p0}, Lcom/color/widget/ColorCloudServiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mLineDistance:I

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method


# virtual methods
.method public initPaint()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/color/widget/ColorEmptyPage;->initPaint()V

    .line 83
    iget-object v3, p0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    .local v2, "textLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 87
    .local v0, "c":C
    const/16 v3, 0xa

    if-ne v3, v0, :cond_1

    .line 88
    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mSecondLinePos:I

    .line 93
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "textLength":I
    :cond_0
    return-void

    .line 85
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "textLength":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    const/16 v17, 0x0

    .line 98
    .local v17, "textX":I
    const/16 v18, 0x0

    .line 99
    .local v18, "textY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 100
    .local v8, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 101
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v8

    div-int/lit8 v9, v20, 0x2

    .line 102
    .local v9, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mViewMarginTop:I

    move/from16 v19, v0

    .line 103
    .local v19, "top":I
    add-int v14, v9, v8

    .line 104
    .local v14, "right":I
    add-int v5, v19, v7

    .line 105
    .local v5, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 110
    .local v6, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mSecondLinePos:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v15

    .line 112
    .local v15, "textLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mSecondLinePos:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "previousText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 114
    .local v11, "previousWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v11

    div-int/lit8 v17, v20, 0x2

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextMarginTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v18, v20, v21

    .line 116
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mSecondLinePos:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "rearText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 120
    .local v13, "rearWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v13

    div-int/lit8 v17, v20, 0x2

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mLineDistance:I

    move/from16 v20, v0

    add-int v20, v20, v18

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v18, v20, v21

    .line 122
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    .end local v10    # "previousText":Ljava/lang/String;
    .end local v11    # "previousWidth":I
    .end local v12    # "rearText":Ljava/lang/String;
    .end local v13    # "rearWidth":I
    .end local v15    # "textLength":I
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 125
    .local v16, "textWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    div-int/lit8 v17, v20, 0x2

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextMarginTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v18, v20, v21

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorCloudServiceView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/color/widget/ColorCloudServiceView;->initPaint()V

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    .line 76
    iget v1, p0, Lcom/color/widget/ColorCloudServiceView;->mViewMarginTop:I

    iget-object v2, p0, Lcom/color/widget/ColorCloudServiceView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 77
    .local v0, "height":I
    iget v1, p0, Lcom/color/widget/ColorCloudServiceView;->mContentWidth:I

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorCloudServiceView;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method
