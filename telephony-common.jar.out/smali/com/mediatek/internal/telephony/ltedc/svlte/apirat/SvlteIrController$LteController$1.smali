.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->defaultMessageHandler(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlmnChanged()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPlmnChanged(Ljava/lang/String;)V

    .line 788
    :cond_0
    return-void
.end method
