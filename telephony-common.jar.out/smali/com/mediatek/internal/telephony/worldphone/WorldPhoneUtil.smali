.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final ACTIVE_MD_TYPE_LTG:I = 0x4

.field private static final ACTIVE_MD_TYPE_LWCG:I = 0x5

.field private static final ACTIVE_MD_TYPE_LWG:I = 0x3

.field private static final ACTIVE_MD_TYPE_LfWG:I = 0x7

.field private static final ACTIVE_MD_TYPE_LtTG:I = 0x6

.field private static final ACTIVE_MD_TYPE_TG:I = 0x2

.field private static final ACTIVE_MD_TYPE_UNKNOWN:I = 0x0

.field private static final ACTIVE_MD_TYPE_WG:I = 0x1

.field private static final IS_CDMA_LTE_DC_SUPPORT:Z

.field private static final IS_LTE_SUPPORT:Z

.field private static final IS_WORLD_MODE_SUPPORT:Z

.field private static final IS_WORLD_PHONE_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_MAJOR_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field public static final UTRAN_DIVISION_DUPLEX_MODE_FDD:I = 0x1

.field public static final UTRAN_DIVISION_DUPLEX_MODE_TDD:I = 0x2

.field public static final UTRAN_DIVISION_DUPLEX_MODE_UNKNOWN:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 76
    const-string v0, "ro.mtk_world_phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    .line 78
    const-string v0, "ro.mtk_lte_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    .line 80
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    .line 82
    const-string v0, "ro.mtk_md_world_mode_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    .line 85
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 86
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 88
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1

    :cond_2
    move v1, v2

    .line 82
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 96
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 103
    :goto_1
    return-void

    .line 101
    :cond_1
    const-string v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 246
    const-string v0, "Invalid Reason"

    .line 250
    .local v0, "drString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 231
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 232
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CAMP_ON_DENY_REASON_UNKNOWN"

    .line 235
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD"

    .line 238
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD"

    .line 241
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD"

    .line 244
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static get3GDivisionDuplexMode()I
    .locals 4

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "duplexMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveModemType()I

    move-result v0

    .line 325
    .local v0, "activeMdType":I
    packed-switch v0, :pswitch_data_0

    .line 339
    const/4 v1, 0x0

    .line 342
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GDivisionDuplexMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 343
    return v1

    .line 330
    :pswitch_0
    const/4 v1, 0x1

    .line 331
    goto :goto_0

    .line 336
    :pswitch_1
    const/4 v1, 0x2

    .line 337
    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getActiveModemType()I
    .locals 5

    .prologue
    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "modemType":I
    const/4 v0, 0x0

    .line 350
    .local v0, "activeMdType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    .line 352
    packed-switch v2, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    .line 411
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveModemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 412
    return v0

    .line 354
    :pswitch_0
    const/4 v0, 0x1

    .line 355
    goto :goto_0

    .line 357
    :pswitch_1
    const/4 v0, 0x2

    .line 358
    goto :goto_0

    .line 360
    :pswitch_2
    const/4 v0, 0x3

    .line 361
    goto :goto_0

    .line 363
    :pswitch_3
    const/4 v0, 0x4

    .line 364
    goto :goto_0

    .line 370
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->getWorldMode()I

    move-result v2

    .line 371
    const-string v3, "ril.nw.worldmode.activemode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 374
    .local v1, "activeMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveModemType]: activeMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 375
    packed-switch v2, :pswitch_data_1

    .line 407
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :pswitch_4
    const/4 v0, 0x4

    .line 379
    goto :goto_0

    .line 381
    :pswitch_5
    const/4 v0, 0x3

    .line 382
    goto :goto_0

    .line 385
    :pswitch_6
    if-lez v1, :cond_0

    .line 386
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 388
    const/4 v0, 0x3

    goto :goto_0

    .line 389
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 391
    const/4 v0, 0x4

    goto :goto_0

    .line 397
    :pswitch_7
    const/4 v0, 0x5

    .line 398
    goto :goto_0

    .line 401
    :pswitch_8
    const/4 v0, 0x6

    .line 402
    goto :goto_0

    .line 404
    :pswitch_9
    const/4 v0, 0x7

    .line 405
    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public static getMajorSim()I
    .locals 4

    .prologue
    const/16 v1, -0x63

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyController;->isCapabilitySwitching()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v2, "persist.radio.simswitch"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "currMajorSim":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMajorSim]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 121
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :goto_0
    return v1

    .line 116
    .restart local v0    # "currMajorSim":Ljava/lang/String;
    :cond_0
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :cond_1
    const-string v2, "[getMajorSim]: radio capability is switching"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getModemSelectionMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 126
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 127
    const-string v1, "sContext = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 131
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getProjectSimNum()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static getRadioTechModeForWp()I
    .locals 5

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "mode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 288
    .local v0, "majorySimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 289
    .local v2, "svlteModeSlotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechModeForWp]: majorySimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " svlteModeSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 291
    const/16 v3, -0x63

    if-eq v0, v3, :cond_1

    .line 292
    if-ne v2, v0, :cond_0

    .line 293
    const/4 v1, 0x2

    .line 303
    .end local v0    # "majorySimId":I
    .end local v2    # "svlteModeSlotId":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechModeForWp]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 304
    return v1

    .line 295
    .restart local v0    # "majorySimId":I
    .restart local v2    # "svlteModeSlotId":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    .end local v0    # "majorySimId":I
    .end local v2    # "svlteModeSlotId":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static iccCardTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "iccCardType"    # I

    .prologue
    .line 255
    packed-switch p0, :pswitch_data_0

    .line 266
    const-string v0, "Invalid Icc Card Type"

    .line 270
    .local v0, "iccTypeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 257
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SIM"

    .line 258
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "USIM"

    .line 261
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Icc Card Type Unknown"

    .line 264
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isCdmaLteDcSupport()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    return v0
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    return v0
.end method

.method public static isWorldModeSupport()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSwitching()Z
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "regState"    # I

    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    .line 220
    :pswitch_0
    const-string v0, "Invalid RegState"

    .line 224
    .local v0, "rsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 190
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 191
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 194
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 197
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 200
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 203
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 206
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_7
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING_EMERGENCY_CALL_ENABLED"

    .line 209
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_8
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING_EMERGENCY_CALL_ENABLED"

    .line 212
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED_EMERGENCY_CALL_ENABLED"

    .line 215
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_a
    const-string v0, "REGISTRATION_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED"

    .line 218
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 156
    const-string v0, "Invalid Region"

    .line 160
    .local v0, "regionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 147
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 148
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 151
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 154
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    .line 179
    const-string v0, "Invalid State"

    .line 183
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 167
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 168
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 171
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 174
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 177
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public notifyRadioCapabilityChange(I)V
    .locals 0
    .param p1, "capailitySimId"    # I

    .prologue
    .line 277
    return-void
.end method

.method public setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 274
    return-void
.end method
