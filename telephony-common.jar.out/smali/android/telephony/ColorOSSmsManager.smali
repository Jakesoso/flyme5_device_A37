.class public Landroid/telephony/ColorOSSmsManager;
.super Ljava/lang/Object;
.source "ColorOSSmsManager.java"


# static fields
.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field public static getDefault:Ljava/lang/Object;

.field public static getDefaultMethod:Ljava/lang/reflect/Method;

.field protected static isMTKGeminiEnabled:Z

.field protected static isMultiSimEnabled:Z

.field private static mContext:Landroid/content/Context;

.field public static mGeminiSmsManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sInstance:Landroid/telephony/ColorOSSmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/telephony/ColorOSSmsManager;

    invoke-direct {v0}, Landroid/telephony/ColorOSSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/ColorOSSmsManager;->sInstance:Landroid/telephony/ColorOSSmsManager;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMultiSimEnabled:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMTKGeminiEnabled:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSSmsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 75
    if-eqz p0, :cond_0

    .line 76
    sput-object p0, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    .line 79
    :cond_0
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 81
    :try_start_0
    const-string v1, "android.telephony.MSimSmsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    .line 82
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->getDefaultMethod:Ljava/lang/reflect/Method;

    .line 83
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->getDefaultMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->sInstance:Landroid/telephony/ColorOSSmsManager;

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 89
    :try_start_1
    const-string v1, "com.mediatek.telephony.SmsManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    .line 90
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->getDefaultMethod:Ljava/lang/reflect/Method;

    .line 91
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->getDefaultMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMTKsupportGeminiFlag()Z
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    .line 68
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 71
    :cond_0
    return v0
.end method

.method public static getQCOMsupportGeminiFlag()Z
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 60
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Landroid/telephony/ColorOSSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 63
    :cond_0
    return v0
.end method


# virtual methods
.method public colorCopyMessageToIcc([B[BII)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 208
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "copyMessageToIcc"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    .local v0, "copyMessageToIcc":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "copyMessageToIcc":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_0
.end method

.method public colorDeleteMessageFromIcc(II)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 225
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "deleteMessageFromIcc"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    .local v0, "deleteMessageFromIcc":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "deleteMessageFromIcc":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z

    move-result v2

    goto :goto_0
.end method

.method public colorDisableCellBroadcast(II)Z
    .locals 8
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 294
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "disableCellBroadcast"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 295
    .local v0, "disableCellBroadcast":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "disableCellBroadcast":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v2

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public colorDisableCellBroadcastRange(III)Z
    .locals 8
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 332
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "enableCellBroadcastRange"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 333
    .local v1, "enableCellBroadcastRange":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "enableCellBroadcastRange":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public colorEnableCellBroadcast(II)Z
    .locals 8
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 276
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "enableCellBroadcast"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 277
    .local v1, "enableCellBroadcast":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "enableCellBroadcast":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public colorEnableCellBroadcastRange(III)Z
    .locals 8
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 313
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "disableCellBroadcast"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 314
    .local v0, "disableCellBroadcast":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "disableCellBroadcast":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v2

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public colorSendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "subscription"    # I

    .prologue
    .line 188
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    :cond_0
    :try_start_0
    sget-object v0, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v1, "sendMultipartTextMessage"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Short;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 192
    .local v8, "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    sget-object v0, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v8    # "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v7

    .line 195
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public colorSendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v1, 0x1

    .line 154
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public colorSendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZII)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v1, 0x1

    .line 171
    sget-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMultiSimEnabled:Z

    if-ne v0, v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMTKGeminiEnabled:Z

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public colorSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    :try_start_0
    sget-object v0, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v1, "sendTextMessage"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 116
    .local v7, "sendTextMessage":Ljava/lang/reflect/Method;
    sget-object v0, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v7    # "sendTextMessage":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public colorSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 130
    sget-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMultiSimEnabled:Z

    if-ne v0, v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-boolean v0, Landroid/telephony/ColorOSSmsManager;->isMTKGeminiEnabled:Z

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public colorUpdateMessageOnIcc(II[BI)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, "success":Z
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 243
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "updateMessageOnIcc"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 244
    .local v2, "updateMessageOnIcc":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2    # "updateMessageOnIcc":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v1

    goto :goto_0
.end method

.method public colordivideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 256
    const/4 v2, 0x0

    .line 258
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getQCOMsupportGeminiFlag()Z

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/ColorOSSmsManager;->getMTKsupportGeminiFlag()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 260
    :cond_0
    :try_start_0
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->mGeminiSmsManagerClass:Ljava/lang/Class;

    const-string v4, "getAllMessagesFromIcc"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 261
    .local v1, "getAllMessagesFromIcc":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/telephony/ColorOSSmsManager;->getDefault:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "getAllMessagesFromIcc":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method
