.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
.super Landroid/widget/Spinner$DropdownPopup;
.source "ColorSpinner.java"

# interfaces
.implements Lcom/color/widget/ColorSpinnerCallback$DropdownDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerDropdownPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;,
        Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;,
        Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;,
        Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
    }
.end annotation


# static fields
.field private static final NO_ANIMATION_STYLE:I


# instance fields
.field private final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundAlpha:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mDismissPopup:Landroid/widget/ColorPopupWindow;

.field private mItemClickPosition:I

.field private mNeedDelayDismiss:Z

.field private final mPopupTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

.field final synthetic this$0:Landroid/widget/ColorSpinner;


# direct methods
.method public constructor <init>(Landroid/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 397
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    .line 398
    invoke-direct/range {p0 .. p5}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 379
    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$1;

    const-string v2, "alpha"

    invoke-direct {v1, p0, v2}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$1;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    .line 390
    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;

    invoke-direct {v1, p0, v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorSpinner$1;)V

    iput-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 391
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    .line 394
    iput-boolean v3, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    .line 395
    iput-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Landroid/widget/ColorPopupWindow;

    .line 399
    sget-object v1, Landroid/R$styleable;->Window:[I

    invoke-virtual {p2, p3, v1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 400
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    .line 401
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;

    invoke-direct {v1, p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorSpinner;)V

    invoke-virtual {p0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 424
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updateBackground()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # I

    .prologue
    .line 376
    iput p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    return p1
.end method

.method static synthetic access$701(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    .prologue
    .line 376
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method private createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .prologue
    .line 586
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 587
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 588
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;

    invoke-direct {v1, p0, p1, p3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    # getter for: Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/widget/ColorSpinner;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 590
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    return-object v0
.end method

.method private createBackgroundHideAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createBackgroundShowAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "startValue"    # F
    .param p3, "endValue"    # F

    .prologue
    .line 603
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 604
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 605
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;

    invoke-direct {v1, p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    # getter for: Landroid/widget/ColorSpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/widget/ColorSpinner;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    return-object v0
.end method

.method private createListHideAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createListShowAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 612
    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getViewHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 550
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 553
    :cond_0
    return v0
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 542
    .local v0, "width":I
    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 545
    :cond_0
    return v0
.end method

.method private onHide(Landroid/widget/ColorPopupWindow;)V
    .locals 5
    .param p1, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    const/4 v4, 0x0

    .line 654
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # invokes: Landroid/widget/ColorSpinner;->createIconCollapseAnimation()Landroid/animation/Animator;
    invoke-static {v2}, Landroid/widget/ColorSpinner;->access$1500(Landroid/widget/ColorSpinner;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createListHideAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundHideAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    # setter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Landroid/widget/ColorSpinner;->access$1202(Landroid/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 660
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;

    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1600(Landroid/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, p0, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 662
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1600(Landroid/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # setter for: Landroid/widget/ColorSpinner;->mDismissByDetachWindow:Z
    invoke-static {v0, v4}, Landroid/widget/ColorSpinner;->access$1602(Landroid/widget/ColorSpinner;Z)Z

    .line 664
    invoke-virtual {p1}, Landroid/widget/ColorPopupWindow;->superDismiss()V

    .line 665
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 667
    :cond_1
    return-void

    :cond_2
    move-object v0, p1

    .line 660
    goto :goto_0
.end method

.method private onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    .line 637
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updateBackground()V

    .line 638
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updateListView()V

    .line 639
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # invokes: Landroid/widget/ColorSpinner;->createIconExpandAnimation()Landroid/animation/Animator;
    invoke-static {v2}, Landroid/widget/ColorSpinner;->access$1300(Landroid/widget/ColorSpinner;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createListShowAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->createBackgroundShowAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    # setter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Landroid/widget/ColorSpinner;->access$1202(Landroid/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 645
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 647
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mShowByRestoreState:Z
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1400(Landroid/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # setter for: Landroid/widget/ColorSpinner;->mShowByRestoreState:Z
    invoke-static {v0, v4}, Landroid/widget/ColorSpinner;->access$1402(Landroid/widget/ColorSpinner;Z)Z

    .line 649
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$1200(Landroid/widget/ColorSpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 651
    :cond_1
    return-void
.end method

.method private varargs playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1, "animators"    # [Landroid/animation/Animator;

    .prologue
    .line 620
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 621
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    .line 622
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    move-object v2, p1

    .local v2, "arr$":[Landroid/animation/Animator;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 623
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 622
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 626
    :cond_0
    if-nez v3, :cond_1

    .line 627
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 629
    :cond_1
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 632
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    return-object v1
.end method

.method private updateBackground()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 563
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 564
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    return-void
.end method

.method private updateListView()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 568
    const/4 v3, -0x1

    .line 569
    .local v3, "widthSize":I
    const/4 v0, -0x2

    .line 570
    .local v0, "heightSize":I
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 571
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 572
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_2

    .line 573
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 578
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    .line 580
    :cond_0
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/ListView;->measure(II)V

    .line 583
    :cond_1
    return-void

    .line 575
    :cond_2
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updatePopupWindow()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 559
    return-void
.end method


# virtual methods
.method buildDropDown()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 526
    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    iget v2, v2, Landroid/widget/ColorSpinner;->mDropDownWidth:I

    if-ne v2, v3, :cond_0

    .line 528
    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v2}, Landroid/widget/ColorSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 529
    .local v1, "maxWidth":I
    invoke-virtual {p0, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setWidth(I)V

    .line 531
    .end local v1    # "maxWidth":I
    :cond_0
    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mDropDownHeight:I
    invoke-static {v2}, Landroid/widget/ColorSpinner;->access$1000(Landroid/widget/ColorSpinner;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 533
    iget-object v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getVerticalOffset()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    .line 535
    .local v0, "maxHeight":I
    invoke-virtual {p0, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setHeight(I)V

    .line 537
    .end local v0    # "maxHeight":I
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner$DropdownPopup;->buildDropDown()I

    move-result v2

    return v2
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 435
    return-void
.end method

.method public onAnimateDismissEnd(Landroid/widget/ColorPopupWindow;)V
    .locals 3
    .param p1, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    const/4 v2, -0x1

    .line 512
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$400(Landroid/widget/ColorSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    if-eq v0, v2, :cond_0

    .line 513
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ColorSpinner;->mNeedFireOnSelected:Z
    invoke-static {v0, v1}, Landroid/widget/ColorSpinner;->access$902(Landroid/widget/ColorSpinner;Z)Z

    .line 514
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    iget v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ColorSpinner;->setSelection(I)V

    .line 515
    iput v2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    .line 517
    :cond_0
    return-void
.end method

.method public onAnimateDismissStart(Landroid/widget/ColorPopupWindow;)V
    .locals 1
    .param p1, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Landroid/widget/ColorPopupWindow;

    .line 503
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$800(Landroid/widget/ColorSpinner;)Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$800(Landroid/widget/ColorSpinner;)Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;->setDismissListener(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissListener;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->startDropdownDismiss()V

    goto :goto_0
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 494
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 495
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 428
    invoke-super {p0}, Landroid/widget/Spinner$DropdownPopup;->show()V

    .line 429
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    .line 430
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->isShowing()Z

    move-result v3

    .line 441
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->computeContentWidth()V

    .line 443
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setInputMethodMode(I)V

    .line 444
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->show()V

    .line 445
    invoke-virtual {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 446
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 447
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 448
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 449
    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v4}, Landroid/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setSelection(I)V

    .line 451
    invoke-direct {p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->onShow()V

    .line 453
    if-eqz v3, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v4}, Landroid/widget/ColorSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 463
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 464
    new-instance v0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;

    invoke-direct {v0, p0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V

    .line 478
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 479
    new-instance v4, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;

    invoke-direct {v4, p0, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method

.method public startDropdownDismiss()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mDismissPopup:Landroid/widget/ColorPopupWindow;

    invoke-direct {p0, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->onHide(Landroid/widget/ColorPopupWindow;)V

    .line 522
    return-void
.end method
