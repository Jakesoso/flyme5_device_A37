.class Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    .line 462
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 463
    iput-object p2, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 464
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/16 v4, 0x64

    const-wide/16 v2, 0xc8

    .line 468
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bpm_sts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bpm.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/pkg.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/pure_background_app_blacklist.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 490
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/power_connection_status.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 491
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 493
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/pure_background_smart_low_power.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 496
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/low_power_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
