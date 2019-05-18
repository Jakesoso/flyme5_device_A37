.class Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

.field final synthetic val$this$0:Lcom/color/widget/help/ColorItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;Lcom/color/widget/help/ColorItemTouchHelper;)V
    .locals 0

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    iput-object p2, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;->val$this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2282
    return-void
.end method
