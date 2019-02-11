.class public Lcom/color/widget/ColorEmptyPage;
.super Landroid/view/View;
.source "ColorEmptyPage.java"


# static fields
.field private static final NEW_LINE:C = '\n'

.field private static final TAG:Ljava/lang/String; = "OppoEmptyBottle"


# instance fields
.field private mContentWidth:I

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextView:Ljava/lang/String;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewLinePos:I

.field private mTextMarginTop:I

.field protected mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field protected mTextView:Ljava/lang/String;

.field private mUserColor:I

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserTextView:Ljava/lang/String;

.field private mViewMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorEmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const v0, 0xc010477

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorEmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
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

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v3, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultColor:I

    .line 45
    iput v3, p0, Lcom/color/widget/ColorEmptyPage;->mUserColor:I

    .line 47
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    .line 48
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultTextView:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mUserTextView:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput v2, p0, Lcom/color/widget/ColorEmptyPage;->mViewMarginTop:I

    .line 55
    iput v2, p0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    .line 57
    iput v3, p0, Lcom/color/widget/ColorEmptyPage;->mNewLinePos:I

    .line 69
    sget-object v1, Loppo/R$styleable;->ColorEmptyPage:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultTextView:Ljava/lang/String;

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextSize:I

    .line 73
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultColor:I

    .line 74
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextMarginTop:I

    .line 75
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorEmptyPage;->mViewMarginTop:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private getTextNewLinePos(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 193
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, "c":C
    const/16 v3, 0xa

    if-ne v3, v0, :cond_0

    .line 200
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return v1

    .line 193
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    .line 88
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 89
    iget v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextSize:I

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/color/widget/ColorEmptyPage;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 92
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorEmptyPage;->mUserColor:I

    .line 93
    .local v0, "textColor":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget v0, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultColor:I

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mUserTextView:Ljava/lang/String;

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mDefaultTextView:Ljava/lang/String;

    iput-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    .line 108
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    const/4 v15, 0x0

    .line 112
    .local v15, "textX":I
    const/16 v16, 0x0

    .line 113
    .local v16, "textY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mViewMarginTop:I

    move/from16 v17, v0

    .line 114
    .local v17, "top":I
    const/4 v5, 0x0

    .line 115
    .local v5, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 117
    .local v8, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 118
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v8

    div-int/lit8 v9, v20, 0x2

    .line 119
    .local v9, "left":I
    add-int v11, v9, v8

    .line 120
    .local v11, "right":I
    add-int v5, v17, v7

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    .end local v7    # "iconHeight":I
    .end local v8    # "iconWidth":I
    .end local v9    # "left":I
    .end local v11    # "right":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 127
    .local v6, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v10

    .line 128
    .local v10, "length":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mNewLinePos:I

    move/from16 v20, v0

    if-gez v20, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 130
    .local v14, "textWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v14

    div-int/lit8 v15, v20, 0x2

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextMarginTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v16, v20, v21

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    .end local v6    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v10    # "length":I
    .end local v14    # "textWidth":I
    :cond_1
    :goto_0
    return-void

    .line 134
    .restart local v6    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v10    # "length":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mNewLinePos:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "textLine1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 136
    .local v18, "widthLine1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v18

    div-int/lit8 v15, v20, 0x2

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextMarginTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v16, v20, v21

    .line 138
    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextView:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mNewLinePos:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "textLine2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 142
    .local v19, "widthLine2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    div-int/lit8 v15, v20, 0x2

    .line 143
    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v16, v16, v20

    .line 144
    int-to-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorEmptyPage;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/color/widget/ColorEmptyPage;->initPaint()V

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 83
    .local v0, "height":I
    iget v1, p0, Lcom/color/widget/ColorEmptyPage;->mContentWidth:I

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorEmptyPage;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/color/widget/ColorEmptyPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorEmptyPage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/color/widget/ColorEmptyPage;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/color/widget/ColorEmptyPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorEmptyPage;->setMessage(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/color/widget/ColorEmptyPage;->mUserTextView:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/color/widget/ColorEmptyPage;->mUserTextView:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/color/widget/ColorEmptyPage;->getTextNewLinePos(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "newLinePos":I
    if-ltz v0, :cond_0

    .line 187
    iput v0, p0, Lcom/color/widget/ColorEmptyPage;->mNewLinePos:I

    .line 189
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/color/widget/ColorEmptyPage;->mUserColor:I

    .line 217
    return-void
.end method

.method public useDeepColorStyle(Z)V
    .locals 2
    .param p1, "deepColorStyle"    # Z

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string v0, "OppoEmptyBottle"

    const-string v1, "Please don\'t use deepColorStyle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method
