.class Landroid/widget/ColorInjector$ScrollView;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollView"
.end annotation


# static fields
.field private static final DBG_ONOVERSCROLLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInjector.ScrollView"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v3, "ColorInjector.ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverScrolled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 42
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 44
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 46
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onOverScrolled"

    invoke-static {v2, v3, v6}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v1, p1}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method
