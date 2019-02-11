.class public Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;
.super Ljava/lang/Object;
.source "ColorAnimatorWrapper.java"

# interfaces
.implements Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/animation/ColorAnimatorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSetValuesCallbackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getPivotXValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public getPivotYValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public getStartValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 152
    return-void
.end method
