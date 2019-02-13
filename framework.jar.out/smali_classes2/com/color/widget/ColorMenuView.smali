.class public Lcom/color/widget/ColorMenuView;
.super Landroid/view/View;
.source "ColorMenuView.java"


# static fields
.field private static IETM_NUMBERS:I = 0x0

.field static final MAX_MENU_ITEM_COUNTS:I = 0x5

.field static final STATE_ENABLED:[I

.field static final STATE_NORMAL:[I

.field static final STATE_PRESSED:[I

.field static final STATE_UNENABLED:[I

.field private static final TAG:Ljava/lang/String; = "ColorMenuView"

.field static final VIEW_STATE_ENABLED:I = 0x101009e

.field static final VIEW_STATE_PRESSED:I = 0x10100a7


# instance fields
.field private bottom:[I

.field private left:[I

.field private mColorItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIconTextDis:I

.field private mIsSelected:Z

.field private mItemCounts:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mNormalColor:I

.field private mOnclickRunnable:Ljava/lang/Runnable;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedColor:I

.field private mSelectedPosition:I

.field private mTextSize:F

.field private right:[I

.field private scale:F

.field private selectRect:Landroid/graphics/Rect;

.field private top:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/color/widget/ColorMenuView;->STATE_ENABLED:[I

    .line 55
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/color/widget/ColorMenuView;->STATE_UNENABLED:[I

    .line 56
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/color/widget/ColorMenuView;->STATE_PRESSED:[I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/color/widget/ColorMenuView;->STATE_NORMAL:[I

    .line 74
    const/4 v0, 0x5

    sput v0, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 57
    :array_1
    .array-data 4
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    .line 60
    iput v1, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMenuView;->selectRect:Landroid/graphics/Rect;

    .line 65
    iput-boolean v1, p0, Lcom/color/widget/ColorMenuView;->mIsSelected:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    .line 68
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mTextSize:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->scale:F

    .line 224
    new-instance v0, Lcom/color/widget/ColorMenuView$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMenuView$1;-><init>(Lcom/color/widget/ColorMenuView;)V

    iput-object v0, p0, Lcom/color/widget/ColorMenuView;->mOnclickRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc060417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mSelectedColor:I

    .line 91
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc060418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mNormalColor:I

    .line 92
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050471

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mTextSize:F

    .line 93
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050480

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mPaddingLeft:I

    .line 94
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050481

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mPaddingTop:I

    .line 95
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050482

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mItemHeight:I

    .line 96
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mItemWidth:I

    .line 97
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050484

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->mIconTextDis:I

    .line 98
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/color/widget/ColorMenuView;->scale:F

    .line 100
    return-void
.end method

.method private clearState()V
    .locals 4

    .prologue
    .line 250
    iget-object v3, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorItem;

    .line 251
    .local v0, "ci":Lcom/color/widget/ColorItem;
    invoke-virtual {v0}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    sget-object v3, Lcom/color/widget/ColorMenuView;->STATE_NORMAL:[I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 256
    .end local v0    # "ci":Lcom/color/widget/ColorItem;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/color/widget/ColorMenuView;->mIsSelected:Z

    .line 257
    const/4 v3, -0x1

    iput v3, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    .line 258
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->invalidate()V

    .line 259
    return-void
.end method

.method private getRect(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->left:[I

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getWidth()I

    move-result v2

    sget v3, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    div-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 182
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->top:[I

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mPaddingTop:I

    aput v1, v0, p1

    .line 183
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->right:[I

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mItemWidth:I

    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->left:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 184
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->bottom:[I

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mPaddingTop:I

    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemHeight:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 185
    iget-object v0, p0, Lcom/color/widget/ColorMenuView;->left:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/color/widget/ColorMenuView;->top:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->right:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/color/widget/ColorMenuView;->bottom:[I

    aget v3, v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    return-void
.end method

.method private initStateListDrawable(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 122
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 125
    .local v1, "statelistDrawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 126
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 128
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 129
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 133
    sget-object v2, Lcom/color/widget/ColorMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorItem;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 136
    invoke-direct {p0}, Lcom/color/widget/ColorMenuView;->clearState()V

    .line 137
    return-void
.end method

.method private selectedIndex(FF)I
    .locals 3
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getWidth()I

    move-result v1

    sget v2, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, p1, v1

    float-to-int v0, v1

    .line 190
    .local v0, "position":I
    iget v1, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    if-ge v0, v1, :cond_0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 231
    .local v0, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 232
    .local v1, "eventY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 233
    .local v2, "pointerCount":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 236
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/color/widget/ColorMenuView;->selectedIndex(FF)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    .line 237
    iget v3, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorMenuView;->left:[I

    iget v4, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    aget v3, v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorMenuView;->right:[I

    iget v4, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    aget v3, v3, v4

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 239
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    goto :goto_0

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/color/widget/ColorMenuView;->clearState()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 141
    iget v1, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    if-ge v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    iget v2, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorItem;

    invoke-virtual {v1}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 147
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 148
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/color/widget/ColorMenuView;->mPaddingLeft:I

    .line 160
    sget v2, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getWidth()I

    move-result v2

    sget v3, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorMenuView;->mItemWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/color/widget/ColorMenuView;->mPaddingLeft:I

    .line 163
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    if-ge v1, v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->selectRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/color/widget/ColorMenuView;->getRect(ILandroid/graphics/Rect;)V

    .line 165
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorItem;

    .line 166
    .local v0, "ci":Lcom/color/widget/ColorItem;
    invoke-virtual {v0}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/color/widget/ColorMenuView;->selectRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {v0}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/color/widget/ColorMenuView;->mIsSelected:Z

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/color/widget/ColorMenuView;->mSelectedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    :goto_1
    invoke-virtual {v0}, Lcom/color/widget/ColorItem;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/color/widget/ColorMenuView;->mPaddingLeft:I

    iget v4, p0, Lcom/color/widget/ColorMenuView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/color/widget/ColorMenuView;->getWidth()I

    move-result v4

    sget v5, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    div-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/color/widget/ColorMenuView;->mPaddingTop:I

    iget v5, p0, Lcom/color/widget/ColorMenuView;->mItemHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/color/widget/ColorMenuView;->mIconTextDis:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/color/widget/ColorMenuView;->mTextSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/color/widget/ColorMenuView;->mNormalColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 175
    .end local v0    # "ci":Lcom/color/widget/ColorItem;
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 198
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v1, v5

    .line 199
    .local v1, "eventY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v0, v5

    .line 200
    .local v0, "eventX":I
    const/4 v2, 0x0

    .line 201
    .local v2, "inMenuView":Z
    int-to-float v5, v1

    iget v6, p0, Lcom/color/widget/ColorMenuView;->mItemHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/color/widget/ColorMenuView;->scale:F

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    if-lez v1, :cond_0

    .line 202
    const/4 v2, 0x1

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 220
    :cond_1
    :goto_0
    return v4

    .line 206
    :pswitch_0
    iget v5, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/color/widget/ColorMenuView;->left:[I

    iget v6, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    aget v5, v5, v6

    if-le v0, v5, :cond_1

    iget-object v5, p0, Lcom/color/widget/ColorMenuView;->right:[I

    iget v6, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    aget v5, v5, v6

    if-ge v0, v5, :cond_1

    .line 208
    iput-boolean v4, p0, Lcom/color/widget/ColorMenuView;->mIsSelected:Z

    goto :goto_0

    .line 213
    :pswitch_1
    iget v4, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    if-eqz v2, :cond_2

    .line 214
    iget-object v4, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    iget v5, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorItem;

    invoke-virtual {v4}, Lcom/color/widget/ColorItem;->getOnItemClickListener()Lcom/color/widget/ColorItem$OnItemClickListener;

    move-result-object v4

    iget v5, p0, Lcom/color/widget/ColorMenuView;->mSelectedPosition:I

    invoke-interface {v4, v5}, Lcom/color/widget/ColorItem$OnItemClickListener;->OnColorMenuItemClick(I)V

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/color/widget/ColorMenuView;->clearState()V

    .line 217
    const/4 v4, 0x0

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColorItem(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dl":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorItem;>;"
    const/4 v4, 0x5

    .line 103
    iput-object p1, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    .local v1, "size":I
    if-le v1, v4, :cond_0

    .line 106
    iput v4, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    .line 107
    iget-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorMenuView;->mColorItemList:Ljava/util/List;

    .line 111
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    if-ge v0, v2, :cond_1

    .line 112
    invoke-direct {p0, v0}, Lcom/color/widget/ColorMenuView;->initStateListDrawable(I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    goto :goto_0

    .line 114
    .restart local v0    # "i":I
    :cond_1
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    sput v2, Lcom/color/widget/ColorMenuView;->IETM_NUMBERS:I

    .line 115
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/color/widget/ColorMenuView;->left:[I

    .line 116
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/color/widget/ColorMenuView;->top:[I

    .line 117
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/color/widget/ColorMenuView;->right:[I

    .line 118
    iget v2, p0, Lcom/color/widget/ColorMenuView;->mItemCounts:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/color/widget/ColorMenuView;->bottom:[I

    .line 119
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 153
    const/4 v0, 0x1

    return v0
.end method
