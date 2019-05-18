.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->setTouchEventListener(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 0

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$effectiveGroupId:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->access$2400(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->startSetTouchEventListener(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V

    .line 2026
    return-void
.end method
