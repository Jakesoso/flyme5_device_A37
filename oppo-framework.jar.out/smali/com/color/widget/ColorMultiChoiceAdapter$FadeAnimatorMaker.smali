.class Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;
.super Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimatorMaker"
.end annotation


# instance fields
.field mIn:Z

.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V
    .locals 1
    .param p2, "in"    # Z

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Lcom/color/widget/ColorMultiChoiceAdapter$1;)V

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    .line 1081
    iput-boolean p2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    .line 1082
    return-void
.end method

.method private getRightDependency()I
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isActionBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mRightDependency:I
    invoke-static {v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1300(Lcom/color/widget/ColorMultiChoiceAdapter;)I

    move-result v0

    goto :goto_0
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
    .line 1093
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$900(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    .line 1095
    .local v0, "fadeSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :goto_0
    new-instance v1, Lcom/color/animation/ColorAnimatorWrapper;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    iget-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    iget-object v4, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mAlphaListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1100(Lcom/color/widget/ColorMultiChoiceAdapter;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    invoke-static {v2, v3, p2, v4}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1200(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/color/animation/ColorAnimatorWrapper;-><init>(Landroid/animation/Animator;Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_1

    const-string v1, "FadeIn"

    :goto_1
    return-object v1

    .line 1093
    .end local v0    # "fadeSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$1000(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    move-result-object v0

    goto :goto_0

    .line 1098
    .restart local v0    # "fadeSetValues":Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    :cond_1
    const-string v1, "FadeOut"

    goto :goto_1
.end method

.method public makeAnimator(Landroid/content/Context;Landroid/view/View;)Lcom/color/widget/ColorChoiceModeAnimator;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 1086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    invoke-virtual {p0, v1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->addAnimation(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 1088
    .local v6, "tag":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->getRightDependency()I

    move-result v4

    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p2, v6}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$800(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;->makeAnimator(Ljava/util/List;ZIILjava/lang/String;)Lcom/color/widget/ColorChoiceModeAnimator;

    move-result-object v0

    return-object v0
.end method
