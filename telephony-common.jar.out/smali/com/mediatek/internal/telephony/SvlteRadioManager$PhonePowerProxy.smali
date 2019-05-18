.class Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
.super Ljava/lang/Object;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePowerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/SvlteRadioManager$1;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    return-void
.end method


# virtual methods
.method setRadioPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 648
    :cond_0
    return-void
.end method
