.class public Landroid/widget/ColorSpinner;
.super Landroid/widget/Spinner;
.source "ColorSpinner.java"

# interfaces
.implements Lcom/color/widget/ColorSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x12cL

.field private static final ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

.field private static final DBG:Z = true

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_LEVEL:F = 10000.0f

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ColorSpinner"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDismissByDetachWindow:Z

.field private mDropDownHeight:I

.field private mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

.field private mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

.field private mExpandIconMargin:I

.field private mIsContentMeasured:Z

.field private mNeedFireOnSelected:Z

.field private mShowByRestoreState:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUpdateSelectionAfterAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/color/view/animation/ColorPathInterpolator;->create()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    .line 73
    sget-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    .line 74
    sget-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 143
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 163
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-direct/range {p0 .. p5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 79
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 80
    iput-object v5, p0, Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 81
    iput-object v5, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    .line 82
    iput v3, p0, Landroid/widget/ColorSpinner;->mDropDownHeight:I

    .line 83
    iput v6, p0, Landroid/widget/ColorSpinner;->mExpandIconMargin:I

    .line 84
    iput-boolean v3, p0, Landroid/widget/ColorSpinner;->mIsContentMeasured:Z

    .line 85
    iput-boolean v4, p0, Landroid/widget/ColorSpinner;->mNeedFireOnSelected:Z

    .line 86
    iput-boolean v4, p0, Landroid/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    .line 87
    iput-boolean v3, p0, Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z

    .line 88
    iput-boolean v3, p0, Landroid/widget/ColorSpinner;->mShowByRestoreState:Z

    .line 89
    iput-object v5, p0, Landroid/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .line 188
    sget-object v2, Landroid/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    if-ne p5, v2, :cond_0

    .line 191
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    if-ne p5, v4, :cond_1

    .line 195
    sget-object v2, Loppo/R$styleable;->ColorSpinner:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 197
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ColorSpinner;->mDropDownHeight:I

    .line 200
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RotateDrawable;

    iput-object v2, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    .line 201
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ColorSpinner;->mExpandIconMargin:I

    .line 202
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    iget-object v2, p0, Landroid/widget/ColorSpinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    check-cast v2, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # invokes: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updateBackground()V
    invoke-static {v2}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$000(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V

    .line 205
    .end local v1    # "b":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ColorSpinner;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner;
    .param p1, "x1"    # F

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner;->updateLevel(F)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ColorSpinner;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/ColorSpinner;->mDropDownHeight:I

    return v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/ColorSpinner;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/ColorSpinner;->createIconExpandAnimation()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ColorSpinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/ColorSpinner;->mShowByRestoreState:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/ColorSpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/ColorSpinner;->mShowByRestoreState:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/ColorSpinner;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/ColorSpinner;->createIconCollapseAnimation()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ColorSpinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/ColorSpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z

    return p1
.end method

.method static synthetic access$400(Landroid/widget/ColorSpinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/ColorSpinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/ColorSpinner;)Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/ColorSpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/ColorSpinner;->mNeedFireOnSelected:Z

    return p1
.end method

.method private createIconCollapseAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIconExpandAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Landroid/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIconRotateAnimation(FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    .line 344
    iget-object v1, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-nez v1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 348
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/widget/ColorSpinner$1;

    invoke-direct {v1, p0, p2}, Landroid/widget/ColorSpinner$1;-><init>(Landroid/widget/ColorSpinner;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    new-instance v1, Landroid/widget/ColorSpinner$2;

    invoke-direct {v1, p0}, Landroid/widget/ColorSpinner$2;-><init>(Landroid/widget/ColorSpinner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    sget-object v1, Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private updateLevel(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 339
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->invalidate()V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/Spinner$DropdownPopup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 303
    new-instance v0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;-><init>(Landroid/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/Spinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 252
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RotateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :cond_0
    return-void
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/ColorSpinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, -0x2

    const/4 v7, 0x0

    .line 259
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ColorSpinner;->mIsContentMeasured:Z

    .line 260
    if-nez p1, :cond_1

    move v5, v7

    .line 298
    :cond_0
    :goto_0
    return v5

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 265
    .local v1, "i":I
    if-ltz v1, :cond_2

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 266
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    goto :goto_0

    .line 269
    :cond_3
    const/4 v5, 0x0

    .line 270
    .local v5, "width":I
    const/4 v3, 0x0

    .line 271
    .local v3, "itemView":Landroid/view/View;
    const/4 v2, 0x0

    .line 272
    .local v2, "itemType":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 274
    .local v6, "widthMeasureSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 278
    .local v0, "heightMeasureSpec":I
    invoke-interface {p1, v1}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v4

    .line 279
    .local v4, "positionType":I
    if-eq v4, v2, :cond_4

    .line 280
    move v2, v4

    .line 281
    const/4 v3, 0x0

    .line 283
    :cond_4
    invoke-interface {p1, v1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_5

    .line 285
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_5
    invoke-virtual {v3, v6, v0}, Landroid/view/View;->measure(II)V

    .line 290
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v7, p0, Landroid/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 295
    iget-object v7, p0, Landroid/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ColorSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z

    .line 240
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 241
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 233
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ColorSpinner;->mNeedFireOnSelected:Z

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 218
    iget-object v6, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/ColorSpinner;->mIsContentMeasured:Z

    if-eqz v6, :cond_0

    .line 219
    iget-object v6, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 220
    .local v2, "iconWidth":I
    iget-object v6, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 221
    .local v1, "iconHeight":I
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ColorSpinner;->mExpandIconMargin:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/widget/ColorSpinner;->setMeasuredDimension(II)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    .line 223
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/ColorSpinner;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 224
    .local v5, "top":I
    add-int v4, v3, v2

    .line 225
    .local v4, "right":I
    add-int v0, v5, v1

    .line 226
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/widget/ColorSpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/drawable/RotateDrawable;->setBounds(IIII)V

    .line 227
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/ColorSpinner;->mIsContentMeasured:Z

    .line 229
    .end local v0    # "bottom":I
    .end local v1    # "iconHeight":I
    .end local v2    # "iconWidth":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ColorSpinner;->mShowByRestoreState:Z

    .line 246
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 247
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/widget/ColorSpinner;->mNeedFireOnSelected:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0}, Landroid/widget/Spinner;->selectionChanged()V

    .line 311
    :cond_0
    return-void
.end method

.method public setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .prologue
    .line 315
    iput-object p1, p0, Landroid/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .line 316
    return-void
.end method

.method public setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Landroid/widget/ColorSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 321
    return-void
.end method

.method public setDropdownUpdateAfterAnim(Z)V
    .locals 0
    .param p1, "update"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Landroid/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z

    .line 326
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/ColorSpinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    return-void
.end method
