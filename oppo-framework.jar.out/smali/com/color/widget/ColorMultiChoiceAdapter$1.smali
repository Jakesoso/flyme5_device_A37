.class Lcom/color/widget/ColorMultiChoiceAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z
    invoke-static {v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$000(Lcom/color/widget/ColorMultiChoiceAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$100(Lcom/color/widget/ColorMultiChoiceAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAnimationEnd : ActionBar.Show"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # setter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z
    invoke-static {v0, v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$002(Lcom/color/widget/ColorMultiChoiceAdapter;Z)Z

    .line 139
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->onAllAnimatorsEnd(Z)V
    invoke-static {v0, v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$200(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z
    invoke-static {v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$000(Lcom/color/widget/ColorMultiChoiceAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$1;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$100(Lcom/color/widget/ColorMultiChoiceAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAnimationStart : ActionBar.Show"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
