.class Lcom/android/server/location/LocationProviderProxy$1;
.super Lcom/android/server/ServiceWatcher;
.source "LocationProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Ljava/lang/Runnable;
    .param p9, "x7"    # Landroid/os/Handler;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->val$mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/server/ServiceWatcher;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->val$mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationProviderProxy$1$1;-><init>(Lcom/android/server/location/LocationProviderProxy$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method
