.class Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoBrowserInterceptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coloros/OppoBrowserInterceptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/coloros/OppoBrowserInterceptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/coloros/OppoBrowserInterceptManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;->this$0:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    .line 159
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 160
    iput-object p2, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 165
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/oppo/boot/browserWhiteList.txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "OppoBrowserInterceptManager"

    const-string v1, "focusPath BROWSER_INTERCEPT_WHITE_FILE!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;->this$0:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    invoke-virtual {v0}, Lcom/android/server/coloros/OppoBrowserInterceptManager;->readWhiteListFile()V

    .line 171
    :cond_0
    return-void
.end method
