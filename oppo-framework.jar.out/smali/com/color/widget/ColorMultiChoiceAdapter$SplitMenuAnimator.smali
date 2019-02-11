.class Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;
.super Lcom/color/widget/ColorChoiceModeAnimator;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitMenuAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Ljava/util/List;Ljava/lang/String;I)V

    .line 1146
    return-void
.end method

.method public constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "dependency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    .line 1149
    invoke-direct {p0, p2, p3, p4}, Lcom/color/widget/ColorChoiceModeAnimator;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 1150
    return-void
.end method


# virtual methods
.method addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;->mAnimWrapperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;->mAnimWrapperList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/animation/ColorAnimatorWrapper;

    invoke-virtual {v0}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1164
    :cond_0
    return-void
.end method

.method initialize()V
    .locals 3

    .prologue
    .line 1154
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;->mAnimWrapperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/animation/ColorAnimatorWrapper;

    .line 1155
    .local v0, "animation":Lcom/color/animation/ColorAnimatorWrapper;
    invoke-virtual {v0}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1157
    .end local v0    # "animation":Lcom/color/animation/ColorAnimatorWrapper;
    :cond_0
    return-void
.end method
