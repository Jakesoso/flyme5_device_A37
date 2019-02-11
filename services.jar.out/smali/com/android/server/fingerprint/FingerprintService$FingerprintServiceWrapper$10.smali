.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$ids:[I

.field final synthetic val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

.field final synthetic val$opId:J

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$timeout:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZI[ILcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 1

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$token:Landroid/os/IBinder;

    iput-wide p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$opId:J

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$effectiveGroupId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$flags:I

    iput-boolean p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$restricted:Z

    iput p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$timeout:I

    iput-object p10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$ids:[I

    iput-object p11, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$token:Landroid/os/IBinder;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->tryPreOperation(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$token:Landroid/os/IBinder;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$opId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$effectiveGroupId:I

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$flags:I

    iget-boolean v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$restricted:Z

    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$timeout:I

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$ids:[I

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZI[ILcom/android/server/fingerprint/FingerprintService$ClientInfo;)V

    .line 2181
    :goto_0
    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$10;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->notifyOperationCanceled(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    goto :goto_0
.end method
