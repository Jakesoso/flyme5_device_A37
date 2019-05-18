.class Lcom/android/internal/policy/impl/ColorInjector$PhoneWindowManager;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneWindowManager"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorInjector.PhoneWindowManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static takeLongshot(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x1

    const-string v2, "ColorInjector.PhoneWindowManager"

    const-string v3, "takeLongshot"

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "color_screenshot"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/screenshot/ColorScreenshotManager;

    .line 133
    .local v0, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/color/screenshot/ColorScreenshotManager;->takeLongshot(ZZ)V

    goto :goto_0
.end method
