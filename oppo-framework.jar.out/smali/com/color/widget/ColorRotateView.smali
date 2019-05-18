.class public Lcom/color/widget/ColorRotateView;
.super Landroid/widget/ImageView;
.source "ColorRotateView.java"


# instance fields
.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/color/widget/ColorRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-static {}, Lcom/color/view/animation/ColorPathInterpolator;->create()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRotateView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/color/widget/ColorRotateView;->mDuration:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    .line 48
    invoke-virtual {p0}, Lcom/color/widget/ColorRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/color/widget/ColorRotateView;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRotateView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 49
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    .line 70
    if-eqz p1, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRotateView;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startCollapseAnimation()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/color/widget/ColorRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    .line 59
    return-void
.end method

.method public startExpandAnimation()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/color/widget/ColorRotateView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    .line 54
    return-void
.end method

.method public startRotateAnimation()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/color/widget/ColorRotateView;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/color/widget/ColorRotateView;->startExpandAnimation()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRotateView;->startCollapseAnimation()V

    goto :goto_0
.end method
