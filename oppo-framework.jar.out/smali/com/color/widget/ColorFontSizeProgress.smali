.class public Lcom/color/widget/ColorFontSizeProgress;
.super Landroid/view/View;
.source "ColorFontSizeProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCutDrawable:Landroid/graphics/drawable/Drawable;

.field private mCutDrawableHeight:I

.field private mCutDrawableWidth:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawableHeight:I

.field private mDefaultDrawableWidth:I

.field private mDefaultNumber:I

.field private mInit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorFontSizeHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mNumber:I

.field private mOffsetHalfWidth:F

.field private mOnStateChangeListener:Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;

.field private mSectionWidth:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:I

.field private mThumbPos:I

.field private mThumbRect:Landroid/graphics/Rect;

.field private mThumbWidth:I

.field private mTouchDownX:F

.field private mTouchSlop:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorFontSizeProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0xc010468

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorFontSizeProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v2, "ColorFontSizeProgress"

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v5, p0, Lcom/color/widget/ColorFontSizeProgress;->DEBUG:Z

    .line 41
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableWidth:I

    .line 42
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableHeight:I

    .line 43
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableHeight:I

    .line 44
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    .line 45
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mNumber:I

    .line 46
    iput v6, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    .line 47
    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mSectionWidth:F

    .line 48
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    .line 49
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbRect:Landroid/graphics/Rect;

    .line 52
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchSlop:I

    .line 53
    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    .line 54
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewWidth:I

    .line 55
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewHeight:I

    .line 56
    iput-boolean v5, p0, Lcom/color/widget/ColorFontSizeProgress;->mInit:Z

    .line 58
    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    .line 60
    const/16 v2, 0x96

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mWidth:I

    .line 74
    sget-object v2, Loppo/R$styleable;->ColorFontSizeProgress:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableWidth:I

    .line 77
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050489

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableHeight:I

    .line 79
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05048a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableHeight:I

    .line 81
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iget v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mWidth:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewHeight:I

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 86
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchSlop:I

    .line 87
    return-void
.end method

.method private initSizeinfo()V
    .locals 6

    .prologue
    .line 90
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableHeight:I

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    .line 91
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mNumber:I

    if-eqz v3, :cond_0

    .line 92
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mNumber:I

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    .line 94
    :cond_0
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    add-int/lit8 v4, v4, 0x1

    mul-int v0, v3, v4

    .line 95
    .local v0, "cutTotalWidth":I
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableWidth:I

    sub-int v2, v3, v0

    .line 96
    .local v2, "restWidth":I
    int-to-float v3, v2

    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mSectionWidth:F

    .line 97
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    .line 99
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    .line 101
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    if-gt v1, v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/color/widget/ColorFontSizeHelper;

    invoke-direct {v5}, Lcom/color/widget/ColorFontSizeHelper;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    .line 105
    return-void
.end method

.method private invalidateThumb(F)V
    .locals 5
    .param p1, "upX"    # F

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    if-ge v0, v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorFontSizeHelper;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorFontSizeHelper;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 234
    move v2, v0

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorFontSizeHelper;->getLeft()I

    move-result v4

    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorFontSizeHelper;->getRight()I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorFontSizeHelper;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v4, v3

    .line 239
    .local v1, "middlePosition":F
    cmpl-float v3, p1, v1

    if-ltz v3, :cond_3

    .line 240
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mOnStateChangeListener:Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mOnStateChangeListener:Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;

    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    invoke-interface {v3, p0, v4}, Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;->OnPositionChanged(Lcom/color/widget/ColorFontSizeProgress;I)V

    .line 247
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/color/widget/ColorFontSizeProgress;->mInit:Z

    .line 248
    return-void

    .line 242
    :cond_3
    iput v2, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    goto :goto_1
.end method

.method private isTouchView(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 213
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTouchViewX(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorFontSizeHelper;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorFontSizeHelper;->getLeft()I

    move-result v0

    int-to-float p1, v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorFontSizeHelper;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorFontSizeHelper;->getRight()I

    move-result v0

    int-to-float p1, v0

    .line 226
    :cond_1
    return p1
.end method


# virtual methods
.method public getThumbIndex()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "cutLeft":I
    const/4 v4, 0x0

    .line 118
    .local v4, "cutTop":I
    const/4 v3, 0x0

    .line 119
    .local v3, "cutRight":I
    const/4 v1, 0x0

    .line 120
    .local v1, "cutBottom":I
    const/4 v6, 0x0

    .line 121
    .local v6, "defaultLeft":I
    const/4 v7, 0x0

    .line 122
    .local v7, "defaultRight":I
    const/4 v8, 0x0

    .line 123
    .local v8, "defaultTop":I
    const/4 v5, 0x0

    .line 124
    .local v5, "defaultBottom":I
    const/4 v12, 0x0

    .line 125
    .local v12, "thumbLeft":I
    const/4 v13, 0x0

    .line 126
    .local v13, "thumbRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mViewHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v14, v15

    .line 127
    .local v14, "thumbTop":I
    const/4 v11, 0x0

    .line 129
    .local v11, "thumbBottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    float-to-int v10, v15

    .line 130
    .local v10, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_0

    .line 131
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultNumber:I

    if-gt v9, v15, :cond_0

    .line 132
    int-to-float v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mSectionWidth:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int v2, v10, v15

    .line 133
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    add-int v3, v2, v15

    .line 134
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int v4, v14, v15

    .line 135
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableHeight:I

    add-int v1, v4, v15

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v15, v2}, Lcom/color/widget/ColorFontSizeHelper;->setLeft(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v15, v3}, Lcom/color/widget/ColorFontSizeHelper;->setRight(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 145
    .end local v9    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_1

    .line 146
    move v6, v10

    .line 147
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int v8, v14, v15

    .line 148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableWidth:I

    add-int v7, v6, v15

    .line 149
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableHeight:I

    add-int v5, v8, v15

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v6, v8, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mInit:Z

    if-eqz v15, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbRect:Landroid/graphics/Rect;

    iget v12, v15, Landroid/graphics/Rect;->left:I

    .line 161
    :goto_1
    if-gez v12, :cond_2

    .line 162
    const/4 v12, 0x0

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    sub-int v15, v7, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    if-le v12, v15, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mCutDrawableWidth:I

    sub-int v15, v7, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v12, v15

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    add-int v13, v12, v15

    .line 170
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbHeight:I

    add-int v11, v14, v15

    .line 172
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbRect:Landroid/graphics/Rect;

    .line 177
    :cond_4
    return-void

    .line 159
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorFontSizeProgress;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mThumbPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/color/widget/ColorFontSizeHelper;

    invoke-virtual {v15}, Lcom/color/widget/ColorFontSizeHelper;->getLeft()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorFontSizeProgress;->mOffsetHalfWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v12, v15

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/color/widget/ColorFontSizeProgress;->initSizeinfo()V

    .line 110
    iget v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mDefaultDrawableWidth:I

    iget v1, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewWidth:I

    .line 111
    iget v0, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewWidth:I

    iget v1, p0, Lcom/color/widget/ColorFontSizeProgress;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorFontSizeProgress;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 182
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 183
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return v6

    .line 185
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchDownX:F

    .line 186
    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchDownX:F

    invoke-direct {p0, v4, v3}, Lcom/color/widget/ColorFontSizeProgress;->isTouchView(FF)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 192
    .local v0, "moveX":F
    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchDownX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/color/widget/ColorFontSizeProgress;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 193
    iput-boolean v6, p0, Lcom/color/widget/ColorFontSizeProgress;->mInit:Z

    .line 194
    iget-object v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbRect:Landroid/graphics/Rect;

    float-to-int v5, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 195
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->invalidate()V

    goto :goto_0

    .line 200
    .end local v0    # "moveX":F
    :pswitch_2
    iget v4, p0, Lcom/color/widget/ColorFontSizeProgress;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v1, v2, v4

    .line 201
    .local v1, "thumbMiddlePos":F
    invoke-direct {p0, v1}, Lcom/color/widget/ColorFontSizeProgress;->setTouchViewX(F)F

    move-result v1

    .line 202
    invoke-direct {p0, v1}, Lcom/color/widget/ColorFontSizeProgress;->invalidateThumb(F)V

    .line 203
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->invalidate()V

    goto :goto_0

    .line 206
    .end local v1    # "thumbMiddlePos":F
    :pswitch_3
    invoke-virtual {p0}, Lcom/color/widget/ColorFontSizeProgress;->invalidate()V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/color/widget/ColorFontSizeProgress;->mNumber:I

    .line 278
    return-void
.end method

.method public setOnPositionChangeListener(Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/color/widget/ColorFontSizeProgress;->mOnStateChangeListener:Lcom/color/widget/ColorFontSizeProgress$OnPositionChangeListener;

    .line 263
    return-void
.end method
