.class Lcom/android/server/location/GpsLocationProvider$GpsController$1;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$GpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x68

    .line 3015
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3040
    :cond_0
    :goto_0
    return-void

    .line 3017
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->willStopGps()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$4700(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0

    .line 3020
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # getter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$4800(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3021
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    const/4 v1, 0x3

    # setter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$4902(Lcom/android/server/location/GpsLocationProvider$GpsController;I)I

    .line 3022
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5000(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0

    .line 3026
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3029
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSpeed:F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5200(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->changeGpsMode(F[F)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5300(Lcom/android/server/location/GpsLocationProvider$GpsController;F[F)V

    .line 3030
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3033
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->removeMessages(I)V

    .line 3034
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->removeMessages(I)V

    .line 3035
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5402(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z

    goto :goto_0

    .line 3015
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
