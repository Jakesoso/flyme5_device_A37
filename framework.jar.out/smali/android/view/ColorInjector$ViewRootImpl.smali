.class Landroid/view/ColorInjector$ViewRootImpl;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewRootImpl"
.end annotation


# static fields
.field private static final DBG_INJECT_TOUCHSCREEN:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInjector.ViewRootImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDispatchPointerEvent(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    const/4 v0, 0x1

    .line 459
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 470
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 462
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/screenshot/ColorScreenshotManager;

    .line 464
    .local v2, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v2, :cond_1

    .line 465
    invoke-virtual {v2}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotHandleState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    const v3, 0x10001002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 467
    const/4 v3, 0x0

    const-string v4, "ColorInjector.ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInjectTouchScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 470
    .restart local v1    # "result":I
    goto :goto_0
.end method
