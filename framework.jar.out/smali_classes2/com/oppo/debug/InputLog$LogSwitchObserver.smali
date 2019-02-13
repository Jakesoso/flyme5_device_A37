.class Lcom/oppo/debug/InputLog$LogSwitchObserver;
.super Landroid/os/FileObserver;
.source "InputLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/debug/InputLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogSwitchObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    # invokes: Lcom/oppo/debug/InputLog;->updateLogLevel()V
    invoke-static {}, Lcom/oppo/debug/InputLog;->access$000()V

    .line 72
    return-void
.end method
