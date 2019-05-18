.class Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
.super Ljava/lang/Object;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesiredPowerState"
.end annotation


# instance fields
.field private mActiveState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;I)V
    .locals 2
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 482
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 473
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 474
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 475
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mActiveState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 484
    iput p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 485
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mActiveState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isLteRadioReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isNLteRadioReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isActiveRadioReady()Z

    move-result v0

    return v0
.end method

.method private final isActiveRadioReady()Z
    .locals 4

    .prologue
    .line 519
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 521
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mActiveState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isRadioReady(Lcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Z

    move-result v1

    .line 522
    .local v1, "ready":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActiveRadioReady, ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$800(Ljava/lang/String;)V

    .line 523
    return v1
.end method

.method private final isLteRadioReady()Z
    .locals 4

    .prologue
    .line 493
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 495
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isRadioReady(Lcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Z

    move-result v1

    .line 496
    .local v1, "ready":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteRadioAvaliable, ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$800(Ljava/lang/String;)V

    .line 497
    return v1
.end method

.method private final isNLteRadioReady()Z
    .locals 4

    .prologue
    .line 506
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 508
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isRadioReady(Lcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Z

    move-result v1

    .line 509
    .local v1, "ready":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNLteRadioAvaliable, ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$800(Ljava/lang/String;)V

    .line 510
    return v1
.end method

.method private final isRadioReady(Lcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Z
    .locals 4
    .param p1, "desiredState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .param p2, "currentState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "ready":Z
    if-eqz p1, :cond_4

    .line 529
    if-ne p2, p1, :cond_1

    move v0, v1

    .line 530
    :goto_0
    if-nez v0, :cond_0

    .line 531
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$900(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 545
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioReady, desiredState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radioState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$800(Ljava/lang/String;)V

    .line 548
    return v0

    :cond_1
    move v0, v2

    .line 529
    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 538
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$900(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    goto :goto_1

    .line 541
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesiredState [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActiveState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mActiveState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
