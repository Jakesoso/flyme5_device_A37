.class Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationImpl"
.end annotation


# instance fields
.field private mAfterSelected:Landroid/graphics/drawable/Drawable;

.field private mAnimateTabOffset:F

.field private mAnimateTabOutLength:F

.field private mAnimateTabWidth:I

.field private mBeforeSelected:Landroid/graphics/drawable/Drawable;

.field private mDrawText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDx:I

.field private mHeadSelected:Landroid/graphics/drawable/Drawable;

.field private mIsBegin:Z

.field private mIsCleared:Z

.field private mIsClicked:Z

.field private mIsDrag:Z

.field private mIsTransparent:Z

.field private mItemWidth:I

.field private mLayout:Landroid/text/Layout;

.field private mLeftOffset:F

.field private mMiddleSelected:Landroid/graphics/drawable/Drawable;

.field private mMoveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoveListener:Landroid/animation/Animator$AnimatorListener;

.field private mNomalUnselected:Landroid/graphics/drawable/Drawable;

.field private mRightOffset:F

.field private mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

.field private mSelectedTextAlpha:I

.field private mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

.field private mShowAnimationByClick:Z

.field private mState:I

.field private mTailSelected:Landroid/graphics/drawable/Drawable;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 92
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 93
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 101
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 102
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 103
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 104
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 105
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    .line 106
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 107
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 108
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 109
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 110
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 111
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 112
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 113
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 114
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    .line 116
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    .line 117
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 118
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    .line 140
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setOverScrollMode(I)V

    .line 142
    const v4, 0xc05000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 143
    const v4, 0xc05043c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 146
    sget-object v4, Loppo/R$styleable;->OppoScrollingTabContainerView:[I

    const v5, 0xc01003f

    invoke-virtual {p2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 157
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 161
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 163
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 165
    .local v2, "textColor":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 166
    .local v3, "textColorAlpha":I
    if-lez v3, :cond_1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    .line 167
    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 169
    :cond_1
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 171
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 173
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 177
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-direct {v4, p1, v7}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 178
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 180
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    return p1
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 3
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabViewLayoutParams(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 234
    return-void
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "position"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabViewLayoutParams(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 240
    return-void
.end method

.method private clearSelectTabBackground()V
    .locals 7

    .prologue
    .line 398
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 399
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 400
    .local v2, "tabCount":I
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-gtz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 402
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 404
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget-object v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v6, v6, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 407
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 408
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    if-ne v3, v1, :cond_2

    .line 411
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 407
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private drawTab(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 417
    iget-boolean v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v9, :cond_2

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v9

    iget v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 420
    iget v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 421
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 433
    :goto_0
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v9, v9, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 435
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 436
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v9, v9, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I
    invoke-static {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 437
    .local v8, "selectedTitle":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 438
    .local v6, "selectedLeft":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    .line 439
    .local v7, "selectedRight":I
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->isRtl()Z

    move-result v2

    .line 440
    .local v2, "isRtl":Z
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v9

    if-lez v9, :cond_5

    const/4 v1, 0x1

    .line 442
    .local v1, "hasNextTab":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    if-eqz v1, :cond_0

    .line 444
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v9, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v11

    if-eqz v2, :cond_8

    const/4 v9, -0x1

    :goto_2
    add-int/2addr v9, v11

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 445
    .local v5, "nextTitle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 446
    .local v3, "nextLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    .line 448
    .local v4, "nextRight":I
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F

    move-result v9

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v11}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F

    move-result v11

    sub-float/2addr v10, v11

    int-to-float v11, v6

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 450
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F

    move-result v9

    int-to-float v10, v4

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v11}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F

    move-result v11

    sub-float/2addr v10, v11

    int-to-float v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 453
    .end local v3    # "nextLeft":I
    .end local v4    # "nextRight":I
    .end local v5    # "nextTitle":Landroid/view/View;
    :cond_0
    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getY()F

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 454
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v12, v7, v6

    iget-object v13, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v13, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    .end local v1    # "hasNextTab":Z
    .end local v2    # "isRtl":Z
    .end local v6    # "selectedLeft":I
    .end local v7    # "selectedRight":I
    .end local v8    # "selectedTitle":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 500
    .end local v0    # "childCount":I
    :cond_2
    return-void

    .line 422
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 424
    iget v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v11}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 427
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    goto/16 :goto_0

    .line 429
    :cond_4
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 430
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    goto/16 :goto_0

    .line 440
    .restart local v0    # "childCount":I
    .restart local v2    # "isRtl":Z
    .restart local v6    # "selectedLeft":I
    .restart local v7    # "selectedRight":I
    .restart local v8    # "selectedTitle":Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I
    invoke-static {v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v9

    add-int/lit8 v10, v0, -0x1

    if-ge v9, v10, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 444
    .restart local v1    # "hasNextTab":Z
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method private fixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 507
    if-nez p1, :cond_1

    .line 508
    const/4 p1, 0x0

    .line 530
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 510
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 511
    .local v1, "textWidth":I
    rem-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 512
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-le v1, v3, :cond_0

    .line 513
    const-string v2, "."

    .line 514
    .local v2, "tmpTabLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 515
    .local v0, "end":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 516
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 517
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 518
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-ge v1, v3, :cond_2

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 521
    :cond_2
    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 522
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 528
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getTabTextPaddingLeft()I
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getTabTextPaddingRight()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureMaxWidth(III)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "childCount"    # I
    .param p3, "defaultWidth"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 535
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 536
    div-int v0, p1, p2

    .line 538
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private removeAllTabs()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    return-void
.end method

.method private removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private setTabSelected(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 268
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    .line 269
    .local v9, "tabCount":I
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v7, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 270
    .local v7, "oldeSelected":I
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iput p1, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 272
    if-lez v9, :cond_0

    .line 273
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    div-int/2addr v10, v9

    iput v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 276
    :cond_0
    iget v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v11, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 278
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v10, :cond_2

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v10, :cond_7

    .line 281
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_6

    .line 282
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "child":Landroid/view/View;
    if-ne v4, p1, :cond_4

    const/4 v5, 0x1

    .line 284
    .local v5, "isSelected":Z
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 285
    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    if-eqz v5, :cond_5

    .line 288
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->animateToTab(I)V

    .line 281
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    .end local v5    # "isSelected":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 297
    .restart local v5    # "isSelected":Z
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v10, :cond_3

    .line 298
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 302
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "isSelected":Z
    :cond_6
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v10, :cond_1

    .line 303
    invoke-direct {p0, v9, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    goto :goto_0

    .line 306
    .end local v4    # "i":I
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget-object v12, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v12, v12, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v3, v10, v11

    .line 308
    .local v3, "endTarsX":F
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v8, v10, v11

    .line 310
    .local v8, "startTarsX":F
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    const-string/jumbo v11, "x"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 312
    .local v1, "animTras":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 314
    .local v6, "offset":I
    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private setTabViewLayoutParams(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 4
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v2, v2, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 244
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0504b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 247
    .local v1, "margin":I
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 248
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 249
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 250
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 251
    return-void
.end method

.method private updateAnimateTab(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v0, v1, v2

    .line 359
    .local v0, "Offset":F
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I
    invoke-static {v1, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$902(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F
    invoke-static {v1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$1002(Lcom/android/internal/widget/OppoScrollingTabContainerView;F)F

    .line 363
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 365
    :cond_0
    return-void
.end method

.method private updateScrollState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    if-nez p1, :cond_3

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 323
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eq v0, v1, :cond_2

    .line 324
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 326
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 354
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 355
    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 330
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_0

    .line 333
    :cond_3
    if-ne v1, p1, :cond_4

    .line 334
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 335
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 336
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 337
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v0, :cond_1

    .line 338
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 339
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    goto :goto_1

    .line 347
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 348
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    if-nez v0, :cond_5

    .line 349
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    .line 351
    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 352
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_1
.end method

.method private updateTabBackground(II)V
    .locals 6
    .param p1, "count"    # I
    .param p2, "selected"    # I

    .prologue
    const/4 v5, 0x1

    .line 368
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 372
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 375
    if-nez p2, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    if-eq p1, v5, :cond_0

    .line 379
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 382
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v2    # "childSelectedAfter":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, p1, -0x1

    if-ne v4, p2, :cond_3

    .line 383
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 386
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 388
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v3    # "childSelectedBefore":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 389
    .restart local v3    # "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .restart local v2    # "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public isCleared()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 214
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v4, :cond_1

    .line 207
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v5, v5, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 197
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    move-object v3, p1

    .line 198
    check-cast v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 199
    .local v3, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->select()V

    .line 200
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 201
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 202
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "child":Landroid/view/View;
    if-eq v0, p1, :cond_2

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
