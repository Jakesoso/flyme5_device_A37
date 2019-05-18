.class Lcom/android/server/power/PowerManagerService$OppoHelper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoHelper"
.end annotation


# static fields
.field private static final BUTTON_LIGHT_BRIGHTNESS:I = 0x66


# instance fields
.field mButtonLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/lights/LightsManager;)V
    .locals 1
    .param p2, "mLightsManager"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 5272
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5273
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    .line 5274
    return-void
.end method


# virtual methods
.method getScreenBrightDefault()I
    .locals 1

    .prologue
    .line 5269
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$9300(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method getUserActivitySumm()I
    .locals 1

    .prologue
    .line 5261
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$9200(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method getWakefulness()I
    .locals 1

    .prologue
    .line 5265
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1500(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method turnOffButtonLight()V
    .locals 1

    .prologue
    .line 5300
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 5301
    return-void
.end method

.method updateButtonBrightness(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "condition"    # Z

    .prologue
    const/16 v7, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5282
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal;->isBlockScreenOnByFingerPrint()Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->mOppoShutdownIng:Z

    if-eqz v6, :cond_1

    .line 5297
    :cond_0
    :goto_0
    return-void

    .line 5284
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$OppoHelper;->getUserActivitySumm()I

    move-result v3

    .line 5285
    .local v3, "tmp":I
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_2

    move v1, v4

    .line 5286
    .local v1, "b1":Z
    :goto_1
    if-nez v3, :cond_3

    move v2, v4

    .line 5287
    .local v2, "b2":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$OppoHelper;->getWakefulness()I

    move-result v6

    if-ne v6, v4, :cond_4

    move v0, v4

    .line 5289
    .local v0, "b":Z
    :goto_3
    if-eqz p2, :cond_5

    .line 5290
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 5291
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v7}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .end local v0    # "b":Z
    .end local v1    # "b1":Z
    .end local v2    # "b2":Z
    :cond_2
    move v1, v5

    .line 5285
    goto :goto_1

    .restart local v1    # "b1":Z
    :cond_3
    move v2, v5

    .line 5286
    goto :goto_2

    .restart local v2    # "b2":Z
    :cond_4
    move v0, v5

    .line 5287
    goto :goto_3

    .line 5294
    .restart local v0    # "b":Z
    :cond_5
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v7}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0
.end method
