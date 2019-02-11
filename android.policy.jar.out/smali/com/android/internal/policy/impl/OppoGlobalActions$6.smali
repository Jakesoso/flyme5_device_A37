.class Lcom/android/internal/policy/impl/OppoGlobalActions$6;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTouchX()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    const-string v2, "OppoGlobalActions"

    const-string v3, "PRESS SHUTDOW OPTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 678
    sput-boolean v0, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 681
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 684
    .local v0, "quickbootEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->startQuickBoot()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    .line 692
    .end local v0    # "quickbootEnabled":Z
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 681
    goto :goto_0

    .line 689
    .restart local v0    # "quickbootEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 691
    .end local v0    # "quickbootEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
