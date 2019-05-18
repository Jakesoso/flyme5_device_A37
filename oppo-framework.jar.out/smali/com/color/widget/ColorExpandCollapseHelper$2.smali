.class final Lcom/color/widget/ColorExpandCollapseHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorExpandCollapseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorExpandCollapseHelper;->animateExpanding(Landroid/view/View;)V
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
    .line 81
    iput-object p1, p0, Lcom/color/widget/ColorExpandCollapseHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/color/widget/ColorExpandCollapseHelper;->isExpanding:Z

    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/color/widget/ColorExpandCollapseHelper$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/color/widget/ColorExpandCollapseHelper;->isExpanding:Z

    .line 86
    return-void
.end method
