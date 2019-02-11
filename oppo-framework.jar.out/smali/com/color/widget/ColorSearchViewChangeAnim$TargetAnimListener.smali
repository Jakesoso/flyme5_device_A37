.class abstract Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;
.super Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TargetAnimListener"
.end annotation


# instance fields
.field private final mEndValue:F

.field private final mStartValue:F

.field private final mTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V
    .locals 1
    .param p2, "target"    # Landroid/view/View;
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    .prologue
    .line 660
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Lcom/color/widget/ColorSearchViewChangeAnim$1;)V

    .line 661
    iput-object p2, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mTarget:Landroid/view/View;

    .line 662
    iput p3, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mStartValue:F

    .line 663
    iput p4, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mEndValue:F

    .line 664
    return-void
.end method


# virtual methods
.method public getEndValue()F
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mEndValue:F

    return v0
.end method

.method public getStartValue()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mStartValue:F

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;->mTarget:Landroid/view/View;

    return-object v0
.end method
