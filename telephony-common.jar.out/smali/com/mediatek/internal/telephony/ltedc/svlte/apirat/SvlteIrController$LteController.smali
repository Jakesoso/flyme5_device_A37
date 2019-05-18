.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LteController"
.end annotation


# static fields
.field private static final EVENT_DUAL_PHONE_AVAILABLE:I = 0x65

.field private static final EVENT_DUAL_PHONE_POWER_ON:I = 0x66

.field private static final EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED:I = 0x8c

.field private static final EVENT_GSM_PLMN_CHANGED:I = 0x68

.field private static final EVENT_GSM_SUSPENDED:I = 0x69

.field private static final EVENT_RADIO_OFF_NOT_AVAILABLE:I = 0x67


# instance fields
.field private mIsFindingAvailableNW:Z

.field private mIsSuspendEnabled:Z

.field private mModemResumeSessionId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 1
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "activePhoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 666
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 663
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 664
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    .line 668
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerBaseListener()V

    .line 669
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 670
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enableSuspend(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enableSuspend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSuspendEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhoneControllerActivePhoneId:I

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->isCtDualModeSimCard(I)Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 970
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSuspend(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not ct dual mode sim, return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 971
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    .line 973
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRegistrationSuspended(Landroid/os/Handler;)V

    .line 975
    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    .line 990
    :goto_0
    return-void

    .line 979
    :cond_1
    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    if-nez v1, :cond_5

    .line 980
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    if-eq p1, v1, :cond_4

    .line 986
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 987
    .local v0, "enableVal":I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    .line 989
    .end local v0    # "enableVal":I
    :cond_4
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    goto :goto_0

    .line 981
    :cond_5
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    if-eqz v1, :cond_2

    .line 982
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRegistrationSuspended(Landroid/os/Handler;)V

    goto :goto_1
.end method

.method private isNoServiceState(I)Z
    .locals 1
    .param p1, "regState"    # I

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1038
    :cond_0
    const/4 v0, 0x1

    .line 1040
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreStateBeforeNoService(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1029
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBaseListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 946
    const-string v0, " registerBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 949
    return-void
.end method

.method private registerSpecialCasesListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 993
    const-string v0, " registerSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x137

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 995
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 996
    return-void
.end method

.method private selectedPlmn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1008
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreSelectPlmn([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1015
    :cond_1
    return-object v0
.end method

.method private unregisterBaseListener()V
    .locals 1

    .prologue
    .line 952
    const-string v0, " unregisterBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 954
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 955
    return-void
.end method

.method private unregisterSpecialCasesListener()V
    .locals 1

    .prologue
    .line 999
    const-string v0, " unregisterSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1001
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1002
    return-void
.end method

.method private unregisterSuspendListener()V
    .locals 1

    .prologue
    .line 958
    const-string v0, " unregisterSuspendListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 960
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRegistrationSuspended(Landroid/os/Handler;)V

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsSuspendEnabled:Z

    .line 964
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAvailableNetworks()V
    .locals 2

    .prologue
    .line 702
    const-string v0, " cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 703
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    if-eqz v0, :cond_0

    .line 704
    const-string v0, " really cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 708
    :cond_0
    return-void
.end method

.method protected defaultMessageHandler(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x136

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 718
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->getState()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x137

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x69

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x68

    if-ne v5, v6, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 725
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 845
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 727
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 728
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerSpecialCasesListener()V

    .line 729
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_2

    .line 730
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 732
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getIfEnabled()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 733
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->resetToInitialState()V

    .line 736
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    goto :goto_0

    .line 739
    :sswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 740
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->convertVoiceRegState(I)I

    move-result v3

    .line 741
    .local v3, "regState":I
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v2

    .line 742
    .local v2, "regDataState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " EVENT_SERVICE_STATE_CHANGED-VoiceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DataState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsFirstRoundSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 745
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    if-ne v5, v3, :cond_4

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    if-ne v5, v2, :cond_4

    .line 746
    const-string v5, " Voice state and Data state not change, do nothing."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_4
    if-eq v3, v7, :cond_5

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    if-eq v2, v7, :cond_5

    const/4 v5, 0x5

    if-ne v2, v5, :cond_7

    .line 753
    :cond_5
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 754
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 769
    :cond_6
    :goto_1
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 770
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    goto/16 :goto_0

    .line 755
    :cond_7
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 759
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 760
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    goto :goto_1

    .line 761
    :cond_9
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne v5, v6, :cond_6

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 764
    :cond_a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsLwgRadioOn:Z

    if-eqz v5, :cond_6

    .line 765
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SEARCHING:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_1

    .line 773
    .end local v2    # "regDataState":I
    .end local v3    # "regState":I
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :sswitch_2
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$900()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 774
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 775
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 776
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v8

    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    .line 777
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    if-nez v5, :cond_0

    .line 778
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->needWaitImsi()Z

    move-result v5

    if-nez v5, :cond_b

    .line 779
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPlmnChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mNwsPolicy:Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;

    move-result-object v5

    new-instance v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)V

    invoke-interface {v5, v10, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;->onPlmnChanged(ILcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;)V

    goto/16 :goto_0

    .line 795
    :sswitch_3
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$900()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 796
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_d

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 797
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_c

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GSM_PLMN_CHANGED: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlmns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 802
    :cond_c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    if-nez v5, :cond_d

    .line 803
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->needWaitImsi()Z

    move-result v5

    if-nez v5, :cond_e

    .line 804
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreviewPlmn(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    .line 819
    .end local v1    # "i":I
    :cond_d
    :goto_3
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto/16 :goto_0

    .line 806
    .restart local v1    # "i":I
    :cond_e
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mNwsPolicy:Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;

    move-result-object v5

    new-instance v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController$2;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;)V

    invoke-interface {v5, v10, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;->onPlmnChanged(ILcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;)V

    goto :goto_3

    .line 822
    .end local v1    # "i":I
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 823
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_11

    .line 824
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 825
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 829
    :goto_4
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getIfEnabled()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 830
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 832
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->resetToInitialState()V

    .line 833
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_10

    .line 834
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 836
    :cond_10
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 837
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 838
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeMessages(I)V

    .line 839
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_0

    .line 840
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto/16 :goto_0

    .line 827
    :cond_11
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_4

    .line 725
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x137 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterBaseListener()V

    .line 678
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 679
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 680
    return-void
.end method

.method public findAvailabeNetwork()V
    .locals 2

    .prologue
    .line 695
    const-string v0, " findAvailabeNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    .line 698
    return-void
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LteController, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method protected msgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "msgWhat"    # I

    .prologue
    .line 904
    const-string v0, "[LteController]-"

    .line 905
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 936
    :goto_0
    return-object v0

    .line 907
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_DUAL_PHONE_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    goto :goto_0

    .line 910
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_DUAL_PHONE_POWER_ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    goto :goto_0

    .line 913
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_PLMN_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    goto :goto_0

    .line 916
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_SUSPENDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    goto :goto_0

    .line 919
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    goto :goto_0

    .line 922
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_RADIO_OFF_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    goto :goto_0

    .line 925
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_RADIO_NO_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    goto/16 :goto_0

    .line 928
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    goto/16 :goto_0

    .line 931
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ROAMING_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    goto/16 :goto_0

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x8c -> :sswitch_7
        0x136 -> :sswitch_6
        0x137 -> :sswitch_4
        0x138 -> :sswitch_8
    .end sparse-switch
.end method

.method protected processInitState(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 852
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 863
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processInitState(Landroid/os/Message;)V

    .line 866
    :goto_0
    return-void

    .line 854
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 855
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getIfEnabled()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->resetToInitialState()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 860
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_0

    .line 852
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected processSelectingNWState(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 870
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 871
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 897
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processSelectingNWState(Landroid/os/Message;)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 873
    :pswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 874
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 875
    const-string v4, " no exception while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 876
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 877
    .local v2, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    if-eqz v2, :cond_2

    .line 878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 879
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 880
    .local v3, "oi":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v3, :cond_1

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "available networks: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 878
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    .end local v1    # "i":I
    .end local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 887
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v4, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 890
    .end local v2    # "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_3
    const-string v4, " exception happen while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 891
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x8c
        :pswitch_0
    .end packed-switch
.end method

.method public registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 712
    const-string v0, " registerNetworkManually"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 714
    return-void
.end method

.method public resumeNetwork()V
    .locals 4

    .prologue
    .line 940
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 941
    .local v0, "currentRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " resumeNetwork:  currentRoamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 943
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 1021
    return-void
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 2
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/16 v1, 0x138

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    .line 690
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 691
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    goto :goto_0
.end method
