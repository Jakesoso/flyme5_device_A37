.class public Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;
.super Landroid/os/FileObserver;
.source "OppoProcessWhiteListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessWhiteListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileObserverUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessWhiteListUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProcessWhiteListUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;->this$0:Lcom/android/server/am/OppoProcessWhiteListUtils;

    .line 135
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 136
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 141
    const-string v0, "OppoProcessWhiteListUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is changing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/am/OppoProcessWhiteListUtils$FileObserverUtil;->this$0:Lcom/android/server/am/OppoProcessWhiteListUtils;

    invoke-virtual {v0}, Lcom/android/server/am/OppoProcessWhiteListUtils;->readXmlFile()Ljava/util/List;

    .line 144
    :cond_0
    return-void
.end method
