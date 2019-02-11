.class Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OppoAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/OppoAppDexOptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OppoAppDexOptManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    .line 210
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 211
    iput-object p2, p0, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 216
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/third_app_dex_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "OppoAppDexOptManager"

    const-string v1, "onEvent: focusPath = OPPO_CRASH_CLEAR_CONFIG_PATH"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # invokes: Lcom/android/server/pm/OppoAppDexOptManager;->readConfigFile()V
    invoke-static {v0}, Lcom/android/server/pm/OppoAppDexOptManager;->access$000(Lcom/android/server/pm/OppoAppDexOptManager;)V

    .line 222
    :cond_0
    return-void
.end method
