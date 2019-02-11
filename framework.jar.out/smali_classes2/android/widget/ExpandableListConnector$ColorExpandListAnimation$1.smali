.class Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;-><init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

.field final synthetic val$this$0:Landroid/widget/ExpandableListConnector;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;Landroid/widget/ExpandableListConnector;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;->this$1:Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    iput-object p2, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;->val$this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;->this$1:Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    # getter for: Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mChageOffset:Z
    invoke-static {v0}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->access$200(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;->this$1:Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Landroid/widget/ExpandableListConnector;->mHeightOffset:F
    invoke-static {v1, v0}, Landroid/widget/ExpandableListConnector;->access$302(Landroid/widget/ExpandableListConnector;F)F

    .line 1376
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;->this$1:Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    # getter for: Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mAnimatedView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->access$400(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1378
    return-void
.end method
