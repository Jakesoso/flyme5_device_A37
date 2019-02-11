.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->getImageQuality(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;ZILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$token:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$restricted:Z

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$userId:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$token:Landroid/os/IBinder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$restricted:Z

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$userId:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$15;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->getImageQualityInternal(Landroid/os/IBinder;ZILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/android/server/fingerprint/FingerprintService$ClientInfo;)V

    .line 2337
    return-void
.end method
