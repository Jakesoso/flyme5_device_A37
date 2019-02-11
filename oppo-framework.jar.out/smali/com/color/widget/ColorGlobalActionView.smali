.class public Lcom/color/widget/ColorGlobalActionView;
.super Landroid/view/View;
.source "ColorGlobalActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;
    }
.end annotation


# static fields
.field private static final mNoAlphaColor:I = 0xff

.field private static final mScale:F = 1.3f


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBgAlpha:I

.field private mBgHeight:I

.field private mBgLeft:I

.field private mBgRight:I

.field private mBgWidth:I

.field private mBootBg:Landroid/graphics/drawable/Drawable;

.field private mBootSlideBlock:Landroid/graphics/drawable/Drawable;

.field private mBootSlidePressed:Landroid/graphics/drawable/Drawable;

.field private mBootTextColor:I

.field private mBootTextSize:I

.field private mBootTextView:Ljava/lang/String;

.field private mFirstInit:Z

.field private mGap:I

.field private mIsTouchRange:Z

.field private mMiddlePosition:I

.field private mMoveX:F

.field private mOnTouchXListener:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

.field private mSlideBlockHeight:I

.field private mSlideBlockWidth:I

.field private mSlideRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTouchDownX:F

.field private mTouchFlag:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorGlobalActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const v0, 0xc01048b

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorGlobalActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-string v1, "ColorGlobalActionView"

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lcom/color/widget/ColorGlobalActionView;->DEBUG:Z

    .line 41
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextView:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    .line 48
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    .line 49
    iput-boolean v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    .line 51
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchSlop:I

    .line 52
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    .line 53
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockHeight:I

    .line 54
    iput-boolean v5, p0, Lcom/color/widget/ColorGlobalActionView;->mFirstInit:Z

    .line 55
    iput-boolean v2, p0, Lcom/color/widget/ColorGlobalActionView;->mIsTouchRange:Z

    .line 56
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mMiddlePosition:I

    .line 57
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    .line 58
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    .line 59
    iput-object v3, p0, Lcom/color/widget/ColorGlobalActionView;->mOnTouchXListener:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    .line 60
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    .line 61
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    .line 62
    iput v4, p0, Lcom/color/widget/ColorGlobalActionView;->mMoveX:F

    .line 63
    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    .line 64
    iput v4, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchDownX:F

    .line 77
    sget-object v1, Loppo/R$styleable;->ColorGlobalActionView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextSize:I

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextColor:I

    .line 83
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextView:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    .line 85
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    .line 86
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    .line 87
    iget-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorGlobalActionView;->init()V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    .line 100
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 101
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 102
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    .line 105
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchSlop:I

    .line 107
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockHeight:I

    .line 109
    iget-object v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    .line 111
    :cond_0
    iget v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/color/widget/ColorGlobalActionView;->mMiddlePosition:I

    .line 112
    return-void
.end method

.method private isTouchRange(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBootBgAlpha(F)V
    .locals 4
    .param p1, "alphaX"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 231
    iget v0, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    .line 232
    .local v0, "previousAlpha":I
    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    int-to-float v1, v1

    div-float v1, p1, v1

    mul-float/2addr v1, v2

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    .line 233
    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    iget v3, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    .line 236
    :cond_0
    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    if-eq v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    :cond_1
    return-void
.end method

.method private setEndX()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    iget v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    iget v2, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    if-lt v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 247
    iget-object v0, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "bgTop":I
    const/4 v0, 0x0

    .line 117
    .local v0, "bgBottom":I
    const/4 v4, 0x0

    .line 118
    .local v4, "slideBlockLeft":I
    const/4 v6, 0x0

    .line 119
    .local v6, "slideBlockTop":I
    const/4 v3, 0x0

    .line 120
    .local v3, "slideBlockBottom":I
    const/4 v5, 0x0

    .line 122
    .local v5, "slideBlockRight":I
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 124
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    iput v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    .line 125
    const/4 v1, 0x0

    .line 126
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    add-int v0, v1, v10

    .line 127
    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mFirstInit:Z

    if-eqz v10, :cond_7

    .line 128
    const/4 v10, 0x0

    iput v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    .line 129
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    iget v12, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    invoke-virtual {v10, v11, v1, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextView:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 137
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 138
    .local v2, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextView:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v7, v10

    .line 139
    .local v7, "textWidth":I
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    add-int v8, v10, v11

    .line 140
    .local v8, "textX":I
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v12, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x0

    .line 141
    .local v9, "textY":I
    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mFirstInit:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    sub-int/2addr v10, v11

    if-nez v10, :cond_2

    .line 142
    :cond_1
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootTextView:Ljava/lang/String;

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcom/color/widget/ColorGlobalActionView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    .end local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v7    # "textWidth":I
    .end local v8    # "textX":I
    .end local v9    # "textY":I
    :cond_2
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v6, v10, 0x0

    .line 146
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockHeight:I

    add-int v3, v6, v10

    .line 148
    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mFirstInit:Z

    if-eqz v10, :cond_8

    .line 149
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    iget v11, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    add-int v4, v10, v11

    .line 153
    :goto_1
    iget v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    add-int v5, v4, v10

    .line 155
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    if-eqz v10, :cond_4

    :cond_3
    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mIsTouchRange:Z

    if-nez v10, :cond_5

    .line 156
    :cond_4
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4, v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlideBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    .line 161
    :cond_5
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mIsTouchRange:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    if-eqz v10, :cond_6

    .line 162
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4, v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootSlidePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    .line 168
    :cond_6
    return-void

    .line 132
    :cond_7
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    invoke-virtual {v10, v11, v1, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mBootBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 151
    :cond_8
    iget-object v10, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 95
    iget v0, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mBgHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorGlobalActionView;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 176
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 178
    .local v3, "y":F
    const/4 v1, 0x0

    .line 179
    .local v1, "previousX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 228
    :goto_0
    return v7

    .line 181
    :pswitch_0
    iput-boolean v8, p0, Lcom/color/widget/ColorGlobalActionView;->mFirstInit:Z

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchDownX:F

    .line 183
    iget v4, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchDownX:F

    invoke-direct {p0, v4, v3}, Lcom/color/widget/ColorGlobalActionView;->isTouchRange(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    iput-boolean v7, p0, Lcom/color/widget/ColorGlobalActionView;->mIsTouchRange:Z

    .line 189
    invoke-direct {p0}, Lcom/color/widget/ColorGlobalActionView;->setEndX()V

    .line 190
    iput-boolean v7, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    .line 191
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->invalidate()V

    goto :goto_0

    .line 186
    :cond_0
    iput-boolean v8, p0, Lcom/color/widget/ColorGlobalActionView;->mIsTouchRange:Z

    goto :goto_0

    .line 195
    :pswitch_1
    iget v4, p0, Lcom/color/widget/ColorGlobalActionView;->mMoveX:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 196
    iget v1, p0, Lcom/color/widget/ColorGlobalActionView;->mMoveX:F

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorGlobalActionView;->mMoveX:F

    .line 199
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/color/widget/ColorGlobalActionView;->mMoveX:F

    iget v6, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchDownX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 200
    invoke-direct {p0}, Lcom/color/widget/ColorGlobalActionView;->setEndX()V

    .line 201
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/color/widget/ColorGlobalActionView;->setBootBgAlpha(F)V

    .line 203
    iput-boolean v7, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    .line 204
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->invalidate()V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 209
    .local v0, "middlePos":F
    iget v4, p0, Lcom/color/widget/ColorGlobalActionView;->mMiddlePosition:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    iget v6, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 211
    iget v4, p0, Lcom/color/widget/ColorGlobalActionView;->mBgWidth:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/color/widget/ColorGlobalActionView;->setBootBgAlpha(F)V

    .line 213
    :cond_2
    iget v4, p0, Lcom/color/widget/ColorGlobalActionView;->mMiddlePosition:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_3

    .line 214
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/color/widget/ColorGlobalActionView;->mGap:I

    iget v6, p0, Lcom/color/widget/ColorGlobalActionView;->mBgLeft:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 215
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/color/widget/ColorGlobalActionView;->setBootBgAlpha(F)V

    .line 217
    :cond_3
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mOnTouchXListener:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/color/widget/ColorGlobalActionView;->mBgRight:I

    iget v6, p0, Lcom/color/widget/ColorGlobalActionView;->mSlideBlockWidth:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_4

    .line 218
    iget-object v4, p0, Lcom/color/widget/ColorGlobalActionView;->mOnTouchXListener:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    invoke-interface {v4}, Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;->OnTouchX()V

    .line 220
    :cond_4
    iput-boolean v8, p0, Lcom/color/widget/ColorGlobalActionView;->mTouchFlag:Z

    .line 221
    invoke-virtual {p0}, Lcom/color/widget/ColorGlobalActionView;->invalidate()V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTouchXListener(Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;)V
    .locals 0
    .param p1, "touchX"    # Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/color/widget/ColorGlobalActionView;->mOnTouchXListener:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    .line 262
    return-void
.end method
