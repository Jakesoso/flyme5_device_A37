.class public Lcom/gsma/services/addon/GsmaRuntimeOptions;
.super Ljava/lang/Object;
.source "GsmaRuntimeOptions.java"


# static fields
.field private static final BEAM_RECV_FAIL_CNT:I = 0xa

.field private static final BEAM_RECV_SLEEP_TIME:I = 0xc

.field private static final BEAM_SEND_FAIL_CNT:I = 0x9

.field private static final BEAM_SEND_SLEEP_TIME:I = 0xb

.field private static final BEAM_SETUP_CONNECTIION_TIME:I = 0xd

.field private static final BUNDLE_SIM_STATE:I = 0x7

.field private static final CFG_FILE_PATH:Ljava/lang/String; = "system/etc/gsma.cfg"

.field private static final CFG_FILE_RULES:[Ljava/lang/String;

.field private static final EVT_AC_BYPASS:I = 0x1

.field private static final EVT_AC_DEFAULT:I = 0x0

.field private static final EVT_BROADCAST_AC:I = 0x6

.field private static final GSMA_EVT_BROADCAST:I = 0xe

.field private static final GSMA_VERSION:I = 0x1

.field private static final GSMA_VERSION_VALUE:[I

.field private static final HCE_DEFAULT_ROUTE_HOST:I = 0x10

.field private static final NO:I = 0x0

.field private static final NON_NFC_SIM_POPUP:I = 0x5

.field private static final NO_EMU_IN_FLYMODE:I = 0x8

.field private static final SEAPI_SUPPORT_CMCC:I = 0xf

.field private static final SW_MAJOR_VERSION:I = 0x2

.field private static final SW_MINOR_VERSION:I = 0x3

.field private static final YES:I = 0x1

.field public static sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VERSION=1:3.0=1,4.1=2,5.0=3,6.0=4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SW_MAJOR_VERSION=2:1=1,2=2,3=3,4=4,5=5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SW_MINOR_VERSION=3:00=0,01=1,02=2,03=3,04=4,05=5,06=6,07=7,08=8,09=9,10=10,11=11,12=12,13=13,14=14,15=15,16=16,17=17,18=18,19=19,20=20"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->CFG_FILE_RULES:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->GSMA_VERSION_VALUE:[I

    .line 54
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->CFG_FILE_RULES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gsma/services/addon/ConfigUtil;->createParser([Ljava/lang/String;)Lcom/gsma/services/addon/ConfigUtil$IParser;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    .line 55
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const-string v1, "system/etc/gsma.cfg"

    invoke-interface {v0, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->parse(Ljava/lang/String;)Z

    .line 56
    return-void

    .line 42
    :array_0
    .array-data 4
        0x0
        0x30
        0x41
        0x50
        0x60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGsmaVersion()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 63
    new-array v1, v2, [I

    .line 64
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":I
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->GSMA_VERSION_VALUE:[I

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getParser()Lcom/gsma/services/addon/ConfigUtil$IParser;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    return-object v0
.end method

.method public static getSwMajorVersion()I
    .locals 4

    .prologue
    .line 73
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 74
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":I
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSwMinorVersion()I
    .locals 4

    .prologue
    .line 83
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 84
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSwVersionString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 93
    new-array v2, v4, [I

    .line 94
    .local v2, "userConfig":[I
    const/4 v0, 0x0

    .line 95
    .local v0, "major":I
    const/4 v1, 0x0

    .line 96
    .local v1, "minor":I
    const-string v3, ""

    .line 98
    .local v3, "verString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/gsma/services/addon/GsmaRuntimeOptions;->getSwMajorVersion()I

    move-result v0

    .line 99
    invoke-static {}, Lcom/gsma/services/addon/GsmaRuntimeOptions;->getSwMinorVersion()I

    move-result v1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 104
    :goto_0
    return-object v3

    .line 103
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static isGsmaEvtBroadcast()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    new-array v1, v2, [I

    .line 110
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":Z
    :try_start_0
    sget-object v4, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const/4 v4, 0x0

    aget v4, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 116
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 113
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method
