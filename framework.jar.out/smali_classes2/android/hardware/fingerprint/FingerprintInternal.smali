.class public abstract Landroid/hardware/fingerprint/FingerprintInternal;
.super Ljava/lang/Object;
.source "FingerprintInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyGotoSleep()V
.end method

.method public abstract notifyPowerKeyPressed()V
.end method

.method public abstract onGoToSleep()V
.end method

.method public abstract onGoToSleepFinish()V
.end method

.method public abstract onHomeKeyDown()V
.end method

.method public abstract onHomeKeyUp()V
.end method

.method public abstract onWakeUp(Z)V
.end method

.method public abstract onWakeUpFinish()V
.end method

.method public abstract setOnVerifyMonitor(Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;)V
.end method
