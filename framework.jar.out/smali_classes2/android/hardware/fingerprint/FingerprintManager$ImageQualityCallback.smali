.class public Landroid/hardware/fingerprint/FingerprintManager$ImageQualityCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageQualityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageQualityUpdated(JII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "successed"    # I
    .param p4, "image_quality"    # I

    .prologue
    .line 431
    return-void
.end method

.method public onWaitingForFinger(J)V
    .locals 0
    .param p1, "deviceId"    # J

    .prologue
    .line 426
    return-void
.end method
