.class public Lcom/oppo/widget/OppoFingerWrongIn;
.super Ljava/lang/Object;
.source "OppoFingerWrongIn.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final WRONGLARGE:Landroid/view/animation/Interpolator;

.field private final WRONGSMALL:Landroid/view/animation/Interpolator;

.field private mLargeAndPause:F

.field private mWrongLargeTime:F

.field private mWrongPauseTime:F

.field private mWrongSmallTime:F

.field private mWrongTotalTime:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v2, 0x3ee353f8    # 0.444f

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x43d00000    # 416.0f

    iput v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    .line 27
    const/high16 v0, 0x43260000    # 166.0f

    iput v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongPauseTime:F

    .line 28
    const/high16 v0, 0x43500000    # 208.0f

    iput v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongSmallTime:F

    .line 29
    iget v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongPauseTime:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongSmallTime:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongPauseTime:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mLargeAndPause:F

    .line 31
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->WRONGLARGE:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoFingerWrongIn;->WRONGSMALL:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "a":F
    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->WRONGLARGE:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    iget v3, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v2, v3

    div-float v2, p1, v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongLargeTime:F

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v1, v2

    cmpg-float v1, v1, p1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mLargeAndPause:F

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 41
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mLargeAndPause:F

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/oppo/widget/OppoFingerWrongIn;->WRONGSMALL:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mLargeAndPause:F

    iget v3, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    iget v3, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mLargeAndPause:F

    iget v4, p0, Lcom/oppo/widget/OppoFingerWrongIn;->mWrongTotalTime:F

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v0, v5, v1

    goto :goto_0
.end method
