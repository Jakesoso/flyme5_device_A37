.class Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OppoGrThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoGrThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoGrThread;


# direct methods
.method private constructor <init>(Lcom/android/server/oppo/OppoGrThread;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oppo/OppoGrThread;Lcom/android/server/oppo/OppoGrThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/oppo/OppoGrThread;
    .param p2, "x1"    # Lcom/android/server/oppo/OppoGrThread$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoGrThread$PackageDeleteObserver;-><init>(Lcom/android/server/oppo/OppoGrThread;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 469
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 470
    const-string v0, "OppoGrThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geloin: we uninstalled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    return-void
.end method
