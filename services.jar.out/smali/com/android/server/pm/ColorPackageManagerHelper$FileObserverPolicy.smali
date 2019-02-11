.class Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "ColorPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ColorPackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 403
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 404
    iput-object p1, p0, Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 405
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 409
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/ColorPackageManagerHelper$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/sys_pms_defaultpackage_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "ColorPackageManager"

    const-string v1, "onEvent: focusPath = OPPO_CRASH_CLEAR_CONFIG_PATH"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    # invokes: Lcom/android/server/pm/ColorPackageManagerHelper;->readConfigFile()V
    invoke-static {}, Lcom/android/server/pm/ColorPackageManagerHelper;->access$000()V

    .line 415
    :cond_0
    return-void
.end method
