.class public Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 8958
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 8959
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 8967
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 8968
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 8977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8947
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 8951
    iput v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 8978
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    .line 8979
    iput p2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    .line 8980
    iput p3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 8981
    iput-object p4, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 8982
    return-void
.end method

.method static synthetic access$6300(Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 8935
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/color/widget/ColorRecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lcom/color/widget/ColorRecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    const/4 v5, 0x0

    .line 8984
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v0, :cond_3

    .line 8985
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->validate()V

    .line 8986
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 8987
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 8988
    # getter for: Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->access$6100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 8995
    :goto_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 8996
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 8999
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9002
    :cond_0
    iput-boolean v5, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9006
    :goto_1
    return-void

    .line 8990
    :cond_1
    # getter for: Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->access$6100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 8993
    :cond_2
    # getter for: Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->access$6100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 9004
    :cond_3
    iput v5, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_1
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9009
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 9010
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9012
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 9013
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9015
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 9036
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 9018
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 9027
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 9045
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 9040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9041
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9042
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 9022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9023
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    .line 9024
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 9031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9032
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    .line 9033
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9056
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9057
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9068
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDx:I

    .line 9069
    iput p2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDy:I

    .line 9070
    iput p3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9071
    iput-object p4, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->changed:Z

    .line 9073
    return-void
.end method
