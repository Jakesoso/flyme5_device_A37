.class public final enum Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;
.super Ljava/lang/Enum;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModemOffState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

.field public static final enum MODEM_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

.field public static final enum MODEM_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

.field public static final enum MODEM_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    const-string v1, "MODEM_OFF_IN_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    .line 155
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    const-string v1, "MODEM_OFF_BY_MODE_SWITCH"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    .line 156
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    const-string v1, "MODEM_OFF_BY_POWER_OFF"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    return-object v0
.end method
