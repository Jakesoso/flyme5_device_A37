.class Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceAnimatorListener"
.end annotation


# instance fields
.field private final mChild:Landroid/view/View;

.field private final mFinalVis:I

.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;I)V
    .locals 0
    .param p2, "child"    # Landroid/view/View;
    .param p3, "finalVis"    # I

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1057
    iput-object p2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->mChild:Landroid/view/View;

    .line 1058
    iput p3, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->mFinalVis:I

    .line 1059
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->mChild:Landroid/view/View;

    iget v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;->mFinalVis:I

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->setViewVisibility(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$500(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;I)V

    .line 1064
    return-void
.end method
