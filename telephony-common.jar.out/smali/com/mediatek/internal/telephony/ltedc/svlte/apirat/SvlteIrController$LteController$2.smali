.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;
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
    .line 807
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlmnChanged()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreviewPlmn(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    .line 814
    :cond_0
    return-void
.end method
