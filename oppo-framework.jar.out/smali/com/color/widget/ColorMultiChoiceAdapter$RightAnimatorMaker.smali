.class Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;
.super Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RightAnimatorMaker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V
    .locals 0
    .param p2, "in"    # Z

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    .line 1127
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    .line 1128
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
    .line 1132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->addAnimation(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    .line 1133
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1800(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    .line 1135
    .local v0, "rightSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :goto_0
    new-instance v1, Lcom/color/animation/ColorAnimatorWrapper;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    iget-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    iget-object v4, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1600(Lcom/color/widget/ColorMultiChoiceAdapter;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    invoke-static {v2, v3, p2, v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$2000(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/color/animation/ColorAnimatorWrapper;-><init>(Landroid/animation/Animator;Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_1

    const-string v1, "RightIn"

    :goto_1
    return-object v1

    .line 1133
    .end local v0    # "rightSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1900(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    goto :goto_0

    .line 1138
    .restart local v0    # "rightSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_1
    const-string v1, "RightOut"

    goto :goto_1
.end method
