.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->processEgmssResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPlmnChanged()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->mPlmn:Ljava/lang/String;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->onGmssRatChanged(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;Ljava/lang/String;)V

    .line 176
    return-void
.end method
