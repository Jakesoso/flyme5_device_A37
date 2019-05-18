.class public Lcom/android/server/OppoBPMUtils$FileObserverUtil;
.super Landroid/os/FileObserver;
.source "OppoBPMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoBPMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileObserverUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OppoBPMUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/OppoBPMUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/server/OppoBPMUtils$FileObserverUtil;->this$0:Lcom/android/server/OppoBPMUtils;

    .line 682
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 683
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 687
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils$FileObserverUtil;->this$0:Lcom/android/server/OppoBPMUtils;

    # invokes: Lcom/android/server/OppoBPMUtils;->loadRecentTaskConfig()V
    invoke-static {v0}, Lcom/android/server/OppoBPMUtils;->access$000(Lcom/android/server/OppoBPMUtils;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils$FileObserverUtil;->this$0:Lcom/android/server/OppoBPMUtils;

    # getter for: Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z
    invoke-static {v0}, Lcom/android/server/OppoBPMUtils;->access$100(Lcom/android/server/OppoBPMUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "OppoBPMUtils"

    const-string v1, "File is changing: /data/data_bpm/sys_purebkg_config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    return-void
.end method
