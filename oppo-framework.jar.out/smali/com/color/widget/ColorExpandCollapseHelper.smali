.class public Lcom/color/widget/ColorExpandCollapseHelper;
.super Ljava/lang/Object;
.source "ColorExpandCollapseHelper.java"


# static fields
.field public static final ANIMATION_HEIGHT:I = 0x0

.field public static final ANIMATION_MARGIN:I = 0x1

.field public static AnimatorType:I

.field protected static isCollapsing:Z

.field protected static isExpanding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/color/widget/ColorExpandCollapseHelper;->AnimatorType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateCollapsing(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 35
    .local v1, "origHeight":I
    sget v2, Lcom/color/widget/ColorExpandCollapseHelper;->AnimatorType:I

    if-nez v2, :cond_0

    .line 36
    invoke-static {p0, v1, v3}, Lcom/color/widget/ColorExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 46
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v2, Lcom/color/widget/ColorExpandCollapseHelper$1;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorExpandCollapseHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    return-void

    .line 38
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 39
    neg-int v2, v1

    invoke-static {p0, v3, v2}, Lcom/color/widget/ColorExpandCollapseHelper;->createMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 42
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-static {p0, v1, v3}, Lcom/color/widget/ColorExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public static animateExpanding(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 68
    .local v2, "widthSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 69
    .local v1, "heightSpec":I
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 71
    sget v3, Lcom/color/widget/ColorExpandCollapseHelper;->AnimatorType:I

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {p0, v4, v3}, Lcom/color/widget/ColorExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 81
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v3, Lcom/color/widget/ColorExpandCollapseHelper$2;

    invoke-direct {v3, p0}, Lcom/color/widget/ColorExpandCollapseHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    return-void

    .line 74
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {p0, v3, v4}, Lcom/color/widget/ColorExpandCollapseHelper;->createMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 77
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {p0, v4, v3}, Lcom/color/widget/ColorExpandCollapseHelper;->createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public static createHeightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 98
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e083127    # 0.133f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    new-instance v1, Lcom/color/widget/ColorExpandCollapseHelper$3;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorExpandCollapseHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    return-object v0
.end method

.method public static createMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 114
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 115
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e083127    # 0.133f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    new-instance v1, Lcom/color/widget/ColorExpandCollapseHelper$4;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorExpandCollapseHelper$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    return-object v0
.end method
