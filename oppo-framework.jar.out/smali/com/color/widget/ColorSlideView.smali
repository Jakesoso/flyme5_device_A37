.class public Lcom/color/widget/ColorSlideView;
.super Landroid/widget/LinearLayout;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;,
        Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;,
        Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;,
        Lcom/color/widget/ColorSlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ColorSlideView"

.field private static final TAN:I = 0x2


# instance fields
.field private isSlide:Z

.field private mActivePointerId:I

.field private mAlpha:I

.field mCanCopy:Z

.field mCanDelete:Z

.field mCanRename:Z

.field private mContext:Landroid/content/Context;

.field private mDiver:Landroid/graphics/drawable/Drawable;

.field private mDiverEnable:Z

.field mFadeAnim:Landroid/animation/ValueAnimator;

.field private mHolderWidth:I

.field mInitialHeight:I

.field private mInitialMotionX:I

.field private mInitialMotionY:I

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field mItemCount:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorSlideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLayout:Landroid/text/Layout;

.field private mMaximumVelocity:I

.field private mOnDeleteItemClickListener:Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

.field private mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

.field private mOnSlideMenuItemClickListener:Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;

.field private mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

.field mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideBackColor:I

.field private mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideEnable:Z

.field private mSlideView:Landroid/view/View;

.field private mSmoothScrollRunnable:Ljava/lang/Runnable;

.field private mStringDelete:Ljava/lang/String;

.field private mTextPadding:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mhasStartAnimation:Z

.field scrollAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 66
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    .line 67
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    .line 68
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mCanCopy:Z

    .line 69
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mCanRename:Z

    .line 70
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    .line 71
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mDiverEnable:Z

    .line 72
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    .line 75
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    .line 78
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mTextPadding:I

    .line 83
    iput-object v2, p0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 84
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    .line 92
    iput-object v2, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 96
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 97
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 98
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 115
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->initView()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 66
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    .line 67
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    .line 68
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mCanCopy:Z

    .line 69
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mCanRename:Z

    .line 70
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    .line 71
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mDiverEnable:Z

    .line 72
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    .line 75
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    .line 78
    iput v1, p0, Lcom/color/widget/ColorSlideView;->mTextPadding:I

    .line 83
    iput-object v2, p0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 84
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    .line 92
    iput-object v2, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 96
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 97
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 98
    iput-boolean v1, p0, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 120
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->initView()V

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/color/widget/ColorSlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSlideView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    return p1
.end method

.method static synthetic access$102(Lcom/color/widget/ColorSlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSlideView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSlideView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSlideView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/color/widget/ColorSlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    return p1
.end method

.method private drawDiver(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/color/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 715
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->recycleVelocityTracker()V

    .line 716
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 717
    iput-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 718
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 735
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 729
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 731
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 198
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    .line 199
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    .line 200
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc060420

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05049d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mTextPadding:I

    .line 203
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    .line 206
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 207
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mMaximumVelocity:I

    .line 209
    const/4 v1, 0x3

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    .line 210
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorSlideView;->setDeleteEnable(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    .line 213
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e083127    # 0.133f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 214
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/color/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    .line 215
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorSlideView;->setOrientation(I)V

    .line 217
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorSlideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-boolean v1, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v1, :cond_0

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    .line 223
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    const v2, 0xc04054d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mStringDelete:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060421

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mSlideBackColor:I

    .line 225
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/color/widget/ColorSlideView;->mSlideBackColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iget v1, p0, Lcom/color/widget/ColorSlideView;->mSlideBackColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mSlideBackColor:I

    .line 227
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    const-string v2, "Alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 228
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/widget/ColorSlideView$1;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorSlideView$1;-><init>(Lcom/color/widget/ColorSlideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorSlideView;->setWillNotDraw(Z)V

    .line 239
    return-void

    .line 227
    :array_0
    .array-data 4
        0x0
        0xd2
    .end array-data
.end method

.method private itemWidthChange()V
    .locals 3

    .prologue
    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 192
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 194
    iget v2, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v1}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 746
    :cond_0
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 722
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 723
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 725
    :cond_0
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 6
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .prologue
    const/4 v2, 0x0

    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "scrollX":I
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getScrollX()I

    move-result v1

    .line 792
    :goto_0
    sub-int v3, p1, v1

    .line 794
    .local v3, "delta":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v5, v0, 0x3

    .line 795
    .local v5, "duration":I
    const/16 v0, 0xc8

    if-le v5, v0, :cond_0

    .line 796
    const/16 v5, 0xc8

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 799
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->invalidate()V

    .line 800
    return-void

    .line 790
    .end local v3    # "delta":I
    .end local v5    # "duration":I
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILcom/color/widget/ColorSlideMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/color/widget/ColorSlideMenuItem;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    .line 139
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->postInvalidate()V

    .line 140
    return-void
.end method

.method public addItem(Lcom/color/widget/ColorSlideMenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/color/widget/ColorSlideMenuItem;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/color/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 126
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 127
    invoke-virtual {p1, v0}, Lcom/color/widget/ColorSlideMenuItem;->setWidth(I)V

    .line 131
    .end local v0    # "width":I
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    .line 133
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->postInvalidate()V

    .line 134
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorSlideView;->scrollTo(II)V

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->postInvalidate()V

    .line 831
    :cond_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method drawItemBackground(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    if-lez v2, :cond_2

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getHeight()I

    move-result v13

    .line 271
    .local v13, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    if-lez v2, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorSlideView;->mSlideBackColor:I

    or-int v10, v2, v3

    .line 273
    .local v10, "color":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 276
    .end local v10    # "color":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 279
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorSlideView;->mStringDelete:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    check-cast v4, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    .line 283
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v20

    .line 284
    .local v20, "lineRange":J
    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 285
    .local v11, "firstLine":I
    if-gez v11, :cond_3

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    .end local v11    # "firstLine":I
    .end local v13    # "h":I
    .end local v20    # "lineRange":J
    :cond_2
    :goto_0
    return-void

    .line 289
    .restart local v11    # "firstLine":I
    .restart local v13    # "h":I
    .restart local v20    # "lineRange":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    .line 290
    .local v18, "lbottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int v17, v18, v2

    .line 291
    .local v17, "lbaseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 292
    .local v12, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v2, v12, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sub-int v14, v2, v3

    .line 295
    .local v14, "h2":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    if-ge v15, v2, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorSlideMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 298
    .local v22, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 299
    .local v19, "position":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v2

    add-int v19, v19, v2

    .line 299
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 302
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    sub-int v3, v2, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    sub-int v4, v4, v19

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v2}, Lcom/color/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    sub-int v4, v3, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v3}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    int-to-float v3, v3

    div-int/lit8 v4, v13, 0x2

    add-int v4, v4, v17

    div-int/lit8 v5, v14, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 295
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 307
    .end local v16    # "j":I
    .end local v19    # "position":I
    .end local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteItemText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual {v0}, Lcom/color/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiverEnable()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mDiverEnable:Z

    return v0
.end method

.method public getScroll()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getSlideEnable()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    return v0
.end method

.method public getSlideViewScrollX()I
    .locals 2

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "scrollX":I
    iget-boolean v1, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getScrollX()I

    move-result v0

    .line 809
    :goto_0
    return v0

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorSlideView;->drawItemBackground(Landroid/graphics/Canvas;)V

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mDiverEnable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/color/widget/ColorSlideView;->drawDiver(Landroid/graphics/Canvas;)V

    .line 259
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    if-nez v11, :cond_0

    .line 382
    const/4 v11, 0x0

    .line 480
    :goto_0
    return v11

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v0, v11, 0xff

    .line 387
    .local v0, "action":I
    const/4 v11, 0x3

    if-eq v0, v11, :cond_1

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    .line 388
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 389
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 390
    const/4 v11, -0x1

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 391
    const/4 v11, 0x0

    goto :goto_0

    .line 395
    :cond_2
    if-eqz v0, :cond_4

    .line 396
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    if-eqz v11, :cond_3

    .line 397
    const/4 v11, 0x1

    goto :goto_0

    .line 399
    :cond_3
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    if-eqz v11, :cond_4

    .line 400
    const/4 v11, 0x0

    goto :goto_0

    .line 403
    :cond_4
    const/4 v6, 0x0

    .line 404
    .local v6, "scrollX":I
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v11, :cond_6

    .line 405
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getScrollX()I

    move-result v6

    .line 410
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_5
    :goto_2
    :pswitch_0
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    goto :goto_0

    .line 407
    :cond_6
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v6

    goto :goto_1

    .line 412
    :pswitch_1
    iget v1, p0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 413
    .local v1, "activePointerId":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_5

    .line 417
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 418
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 419
    .local v7, "x":I
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    sub-int v2, v7, v11

    .line 420
    .local v2, "dx":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 421
    .local v8, "xDiff":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v9, v11

    .line 422
    .local v9, "y":I
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mInitialMotionY:I

    sub-int v3, v9, v11

    .line 423
    .local v3, "dy":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 424
    .local v10, "yDiff":I
    iput v7, p0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 425
    iput v9, p0, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 426
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    if-le v8, v11, :cond_b

    int-to-float v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    int-to-float v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_b

    .line 427
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    .line 428
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/color/widget/ColorSlideView;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 429
    if-lez v2, :cond_a

    iget v11, p0, Lcom/color/widget/ColorSlideView;->mInitialMotionX:I

    iget v12, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    add-int/2addr v11, v12

    :goto_3
    iput v11, p0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 431
    iput v9, p0, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 436
    :cond_7
    :goto_4
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsBeingDragged:Z

    if-eqz v11, :cond_5

    .line 437
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->initVelocityTrackerIfNotExists()V

    .line 438
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 439
    const/4 v4, 0x0

    .line 440
    .local v4, "newScrollX":I
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    if-ge v6, v11, :cond_8

    iget v11, p0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 441
    :cond_8
    mul-int/lit8 v11, v2, 0x3

    div-int/lit8 v11, v11, 0x7

    sub-int v4, v6, v11

    .line 446
    :goto_5
    if-gez v4, :cond_d

    .line 447
    const/4 v4, 0x0

    .line 451
    :cond_9
    :goto_6
    iget-boolean v11, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v11, :cond_e

    .line 452
    const/4 v11, 0x0

    invoke-virtual {p0, v4, v11}, Lcom/color/widget/ColorSlideView;->scrollTo(II)V

    .line 456
    :goto_7
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    goto :goto_2

    .line 429
    .end local v4    # "newScrollX":I
    :cond_a
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mInitialMotionX:I

    iget v12, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    sub-int/2addr v11, v12

    goto :goto_3

    .line 432
    :cond_b
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mTouchSlop:I

    if-le v10, v11, :cond_7

    .line 433
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    goto :goto_4

    .line 443
    .restart local v4    # "newScrollX":I
    :cond_c
    mul-int/lit8 v11, v2, 0x4

    div-int/lit8 v11, v11, 0x7

    sub-int v4, v6, v11

    goto :goto_5

    .line 448
    :cond_d
    iget v11, p0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    if-le v4, v11, :cond_9

    goto :goto_6

    .line 454
    :cond_e
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/view/View;->scrollTo(II)V

    goto :goto_7

    .line 463
    .end local v1    # "activePointerId":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v4    # "newScrollX":I
    .end local v5    # "pointerIndex":I
    .end local v7    # "x":I
    .end local v8    # "xDiff":I
    .end local v9    # "y":I
    .end local v10    # "yDiff":I
    :pswitch_2
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 464
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->initOrResetVelocityTracker()V

    .line 465
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mInitialMotionX:I

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mInitialMotionY:I

    iput v11, p0, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 468
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/color/widget/ColorSlideView;->mIsUnableToDrag:Z

    .line 469
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    if-eqz v11, :cond_5

    .line 470
    iget-object v11, p0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    const/4 v12, 0x1

    invoke-interface {v11, p0, v12}, Lcom/color/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 485
    const/16 v19, 0x0

    .line 711
    :goto_0
    return v19

    .line 487
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 488
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 489
    .local v18, "y":I
    const/4 v15, 0x0

    .line 490
    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getScrollX()I

    move-result v15

    .line 495
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->initVelocityTrackerIfNotExists()V

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 706
    :cond_1
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 707
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 711
    :cond_2
    const/16 v19, 0x1

    goto :goto_0

    .line 493
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScrollX()I

    move-result v15

    goto :goto_1

    .line 498
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_4

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 501
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 504
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 505
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mInitialMotionX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mInitialMotionY:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 509
    .local v13, "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_1

    move-object/from16 v19, v13

    .line 510
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v11, v0

    .local v11, "offsetX":F
    move-object/from16 v19, v13

    .line 511
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v12, v0

    .line 512
    .local v12, "offsetY":F
    neg-float v0, v11

    move/from16 v19, v0

    neg-float v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v19, v13

    .line 513
    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 514
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 515
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    .line 520
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    .end local v13    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    move/from16 v19, v0

    sub-int v5, v17, v19

    .line 521
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 522
    .local v6, "deltaY":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v19

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 523
    if-eqz v6, :cond_1

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 525
    .restart local v13    # "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 528
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move-object/from16 v19, v13

    .line 530
    check-cast v19, Landroid/view/View;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPressed(Z)V

    .line 531
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideView;->setPressed(Z)V

    .line 532
    instance-of v0, v13, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 533
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v6, v0, :cond_6

    const/16 v19, -0x4

    move/from16 v0, v19

    if-ge v6, v0, :cond_1

    .line 534
    :cond_6
    check-cast v13, Landroid/widget/ListView;

    .end local v13    # "parent":Landroid/view/ViewParent;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setTouchMode(I)V

    goto/16 :goto_2

    .line 546
    :cond_7
    const/4 v10, 0x0

    .line 547
    .local v10, "newScrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 548
    :cond_8
    mul-int/lit8 v19, v5, 0x3

    div-int/lit8 v19, v19, 0x7

    sub-int v10, v15, v19

    .line 553
    :goto_3
    if-eqz v5, :cond_f

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 555
    .restart local v13    # "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_9

    .line 556
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 558
    check-cast v13, Landroid/view/View;

    .end local v13    # "parent":Landroid/view/ViewParent;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setPressed(Z)V

    .line 560
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideView;->setPressed(Z)V

    .line 562
    if-gez v10, :cond_d

    .line 563
    const/4 v10, 0x0

    .line 567
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 568
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/color/widget/ColorSlideView;->scrollTo(II)V

    .line 573
    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    .line 574
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorSlideView;->mLastMotionY:I

    .line 575
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorSlideView;->isSlide:Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 580
    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 550
    :cond_c
    mul-int/lit8 v19, v5, 0x4

    div-int/lit8 v19, v19, 0x7

    sub-int v10, v15, v19

    goto :goto_3

    .line 564
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v10, v0, :cond_a

    goto :goto_4

    .line 570
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    .line 584
    :cond_f
    if-eqz v6, :cond_1

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 587
    .restart local v13    # "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_1

    .line 589
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 590
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 591
    instance-of v0, v13, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 592
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v6, v0, :cond_10

    const/16 v19, -0x4

    move/from16 v0, v19

    if-ge v6, v0, :cond_11

    :cond_10
    move-object/from16 v19, v13

    .line 593
    check-cast v19, Landroid/widget/ListView;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setTouchMode(I)V

    .line 597
    :cond_11
    check-cast v13, Landroid/view/View;

    .end local v13    # "parent":Landroid/view/ViewParent;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setPressed(Z)V

    .line 598
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideView;->setPressed(Z)V

    goto/16 :goto_2

    .line 606
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v10    # "newScrollX":I
    :pswitch_2
    const/4 v10, 0x0

    .line 607
    .restart local v10    # "newScrollX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 608
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 612
    .local v8, "initialVelocity":I
    const/16 v19, -0x3e8

    move/from16 v0, v19

    if-ge v8, v0, :cond_14

    .line 613
    move-object/from16 v0, p0

    iget v10, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 619
    :cond_12
    :goto_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/color/widget/ColorSlideView;->smoothScrollTo(II)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v20, v0

    if-nez v10, :cond_16

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 626
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    .line 628
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_19

    .line 630
    const/4 v14, 0x0

    .line 631
    .local v14, "position":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    if-ge v9, v7, :cond_17

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual/range {v19 .. v19}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v19

    add-int v14, v14, v19

    .line 631
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 614
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "position":I
    :cond_14
    const/16 v19, 0x3e8

    move/from16 v0, v19

    if-le v8, v0, :cond_15

    .line 615
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 616
    :cond_15
    int-to-double v0, v15

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    const-wide/16 v22, 0x0

    cmpl-double v19, v20, v22

    if-lez v19, :cond_12

    .line 617
    move-object/from16 v0, p0

    iget v10, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    goto/16 :goto_6

    .line 621
    :cond_16
    const/16 v19, 0x2

    goto/16 :goto_7

    .line 634
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v14    # "position":I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v19

    sub-int v21, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual/range {v19 .. v19}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v19

    sub-int v19, v21, v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v19

    sub-int v20, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/color/widget/ColorSlideMenuItem;

    invoke-virtual/range {v19 .. v19}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v19

    sub-int v19, v20, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    .line 636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    if-nez v7, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 637
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;)V

    .line 640
    :cond_18
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideView;->playSoundEffect(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideMenuItemClickListener:Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideMenuItemClickListener:Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/color/widget/ColorSlideMenuItem;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;->onSlideMenuItemClick(Lcom/color/widget/ColorSlideMenuItem;I)V

    .line 653
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "position":I
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 654
    .restart local v13    # "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_1a

    move-object/from16 v19, v13

    .line 656
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v11, v0

    .restart local v11    # "offsetX":F
    move-object/from16 v19, v13

    .line 657
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v12, v0

    .line 658
    .restart local v12    # "offsetY":F
    neg-float v0, v11

    move/from16 v19, v0

    neg-float v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 659
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorSlideView;->isSlide:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v19

    if-gtz v19, :cond_1d

    .line 660
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 667
    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 669
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    :cond_1a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorSlideView;->isSlide:Z

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->endDrag()V

    goto/16 :goto_2

    .line 628
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v14    # "position":I
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 649
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "position":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLastMotionX:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->shrink()V

    goto/16 :goto_a

    .line 662
    .restart local v11    # "offsetX":F
    .restart local v12    # "offsetY":F
    .restart local v13    # "parent":Landroid/view/ViewParent;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v4

    .line 663
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 664
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_b

    .line 675
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v8    # "initialVelocity":I
    .end local v10    # "newScrollX":I
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_3
    const/4 v10, 0x0

    .line 676
    .restart local v10    # "newScrollX":I
    int-to-double v0, v15

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    const-wide/16 v22, 0x0

    cmpl-double v19, v20, v22

    if-lez v19, :cond_1e

    .line 677
    move-object/from16 v0, p0

    iget v10, v0, Lcom/color/widget/ColorSlideView;->mHolderWidth:I

    .line 679
    :cond_1e
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/color/widget/ColorSlideView;->smoothScrollTo(II)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    move-object/from16 v20, v0

    if-nez v10, :cond_21

    const/16 v19, 0x0

    :goto_c
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorSlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 685
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 686
    .restart local v13    # "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_20

    .line 688
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 689
    instance-of v0, v13, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v19, v13

    check-cast v19, Landroid/widget/ListView;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getTouchMode()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    move-object/from16 v19, v13

    .line 690
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v11, v0

    .restart local v11    # "offsetX":F
    move-object/from16 v19, v13

    .line 691
    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorSlideView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v12, v0

    .line 692
    .restart local v12    # "offsetY":F
    neg-float v0, v11

    move/from16 v19, v0

    neg-float v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 693
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 694
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 698
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorSlideView;->endDrag()V

    .line 699
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorSlideView;->isSlide:Z

    goto/16 :goto_2

    .line 681
    :cond_21
    const/16 v19, 0x2

    goto :goto_c

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    goto :goto_0
.end method

.method public restoreLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iput v3, p0, Lcom/color/widget/ColorSlideView;->mAlpha:I

    .line 243
    iget-object v1, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 244
    const/16 v0, 0xb4

    .line 245
    .local v0, "height":I
    iget v0, p0, Lcom/color/widget/ColorSlideView;->mInitialHeight:I

    .line 246
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorSlideView;->setVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->clearAnimation()V

    .line 249
    iput-boolean v3, p0, Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z

    .line 250
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 313
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v0, :cond_0

    .line 314
    iput-object p0, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    goto :goto_0
.end method

.method public setDeleteEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    if-ne v0, p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/color/widget/ColorSlideMenuItem;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    const v3, 0xc04054d

    const v4, 0xc0804eb

    invoke-direct {v1, v2, v3, v4}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    :goto_1
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setDeleteItemText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideView;->setDeleteItemText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setDeleteItemText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/color/widget/ColorSlideView;->mCanDelete:Z

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorSlideMenuItem;

    .line 158
    .local v0, "item":Lcom/color/widget/ColorSlideMenuItem;
    invoke-virtual {v0, p1}, Lcom/color/widget/ColorSlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/color/widget/ColorSlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/color/widget/ColorSlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 161
    .local v1, "width":I
    iget v2, p0, Lcom/color/widget/ColorSlideView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 162
    invoke-virtual {v0}, Lcom/color/widget/ColorSlideMenuItem;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSlideMenuItem;->setWidth(I)V

    .line 164
    invoke-direct {p0}, Lcom/color/widget/ColorSlideView;->itemWidthChange()V

    .line 168
    .end local v0    # "item":Lcom/color/widget/ColorSlideMenuItem;
    .end local v1    # "width":I
    :cond_0
    return-void
.end method

.method public setDiverEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/color/widget/ColorSlideView;->mDiverEnable:Z

    .line 333
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->invalidate()V

    .line 334
    return-void
.end method

.method public setOnDeleteItemClickListener(Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

    .line 848
    return-void
.end method

.method public setOnSlideListener(Lcom/color/widget/ColorSlideView$OnSlideListener;)V
    .locals 0
    .param p1, "onSlideListener"    # Lcom/color/widget/ColorSlideView$OnSlideListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mOnSlideListener:Lcom/color/widget/ColorSlideView$OnSlideListener;

    .line 351
    return-void
.end method

.method public setOnSlideMenuItemClickListener(Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mOnSlideMenuItemClickListener:Lcom/color/widget/ColorSlideView$OnSlideMenuItemClickListener;

    .line 879
    return-void
.end method

.method public setOnSmoothScrollListenerr(Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/color/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    .line 860
    return-void
.end method

.method public setSlideEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/color/widget/ColorSlideView;->mSlideEnable:Z

    .line 327
    return-void
.end method

.method public setSlideViewScrollX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/color/widget/ColorSlideView;->scrollAll:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorSlideView;->setScrollX(I)V

    .line 818
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0
.end method

.method public shrink()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getSlideViewScrollX()I

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    :cond_0
    new-instance v0, Lcom/color/widget/ColorSlideView$2;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorSlideView$2;-><init>(Lcom/color/widget/ColorSlideView;)V

    iput-object v0, p0, Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    .line 369
    iget-object v0, p0, Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/color/widget/ColorSlideView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/color/widget/ColorSlideView;->smoothScrollTo(II)V

    .line 373
    :cond_2
    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 748
    const/4 v6, 0x0

    .line 749
    .local v6, "currentTranslateX":F
    const/4 v7, 0x0

    .line 750
    .local v7, "currentTranslateY":F
    const/4 v5, 0x0

    .line 751
    .local v5, "targetTranslateY":F
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideView;->getWidth()I

    move-result v0

    int-to-float v8, v0

    .line 752
    .local v8, "targetTranslateX":F
    neg-float v4, v8

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;FFFF)V

    .line 753
    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;FFFF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 757
    new-instance v0, Lcom/color/widget/ColorSlideView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/color/widget/ColorSlideView$3;-><init>(Lcom/color/widget/ColorSlideView;Landroid/view/View;FFFF)V

    .line 779
    .local v0, "rv":Lcom/color/widget/ColorDeleteAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/color/widget/ColorDeleteAnimation;->setDuration(J)V

    .line 780
    invoke-virtual {v0}, Lcom/color/widget/ColorDeleteAnimation;->start()V

    .line 783
    return-void
.end method
