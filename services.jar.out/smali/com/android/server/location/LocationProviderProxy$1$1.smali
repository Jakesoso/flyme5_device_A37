.class Lcom/android/server/location/LocationProviderProxy$1$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/LocationProviderProxy$1;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy$1;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # invokes: Lcom/android/server/location/LocationProviderProxy;->unbind()V
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # invokes: Lcom/android/server/location/LocationProviderProxy;->bind()Z
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Z

    .line 104
    return-void
.end method
