.class final Lcom/color/widget/ColorExpandCollapseHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorExpandCollapseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorExpandCollapseHelper;->animateCollapsing(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/color/widget/ColorExpandCollapseHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/color/widget/ColorExpandCollapseHelper$1;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/color/widget/ColorExpandCollapseHelper;->isCollapsing:Z

    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/color/widget/ColorExpandCollapseHelper$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/color/widget/ColorExpandCollapseHelper;->isCollapsing:Z

    .line 51
    return-void
.end method
