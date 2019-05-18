.class Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;
.super Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftAnimatorMaker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V
    .locals 0
    .param p2, "in"    # Z

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    .line 1110
    return-void
.end method


# virtual methods
.method addAnimation(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p2, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->addAnimation(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    .line 1115
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1400(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    .line 1117
    .local v0, "leftSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :goto_0
    new-instance v1, Lcom/color/animation/ColorAnimatorWrapper;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    iget-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->mIn:Z

    iget-object v4, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1600(Lcom/color/widget/ColorMultiChoiceAdapter;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->createLeftAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    invoke-static {v2, v3, p2, v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1700(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/color/animation/ColorAnimatorWrapper;-><init>(Landroid/animation/Animator;Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_1

    const-string v1, "LeftIn"

    :goto_1
    return-object v1

    .line 1115
    .end local v0    # "leftSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1500(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    goto :goto_0

    .line 1120
    .restart local v0    # "leftSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_1
    const-string v1, "LeftOut"

    goto :goto_1
.end method
