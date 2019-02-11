.class public interface abstract Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenOnCallback"
.end annotation


# static fields
.field public static final VERIFY_ABORT:I = 0x0

.field public static final VERIFY_FAILED:I = -0x1

.field public static final VERIFY_SUCCESS:I = 0x1


# virtual methods
.method public abstract onVerifyDone(I)V
.end method
