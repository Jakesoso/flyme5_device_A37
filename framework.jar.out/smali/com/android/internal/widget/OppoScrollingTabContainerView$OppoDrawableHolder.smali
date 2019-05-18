.class Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoDrawableHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 693
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    .line 696
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p2, "x1"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$1;

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 699
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    .line 700
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 707
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    .line 708
    return-void
.end method
