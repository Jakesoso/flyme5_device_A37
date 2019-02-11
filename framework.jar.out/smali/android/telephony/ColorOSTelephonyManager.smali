.class public Landroid/telephony/ColorOSTelephonyManager;
.super Ljava/lang/Object;
.source "ColorOSTelephonyManager.java"

# interfaces
.implements Landroid/telephony/IColorOSTelephony;


# static fields
.field private static final MTK_DUAL_CARD_FEATURE:Ljava/lang/String; = "mtk.gemini.support"

.field private static final MTK_PLATFORM_FEATURE:Ljava/lang/String; = "oppo.hw.manufacturer.mtk"

.field private static final QCOM_DUAL_CARD_FEATURE:Ljava/lang/String; = "oppo.qualcomm.gemini.support"

.field private static final QCOM_PLATFORM_FEATURE:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final TAG:Ljava/lang/String; = "ColorOSTelephonyManager"

.field private static isMTKPlatForm:Z

.field private static isMtkGeminiSupport:Z

.field private static isQcomGeminiSupport:Z

.field private static isQcomPlatForm:Z

.field private static vDescriptor:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 53
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 54
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomPlatForm:Z

    .line 55
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMTKPlatForm:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "ColorOSTelephonyManager context==NULL"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static colorCheckUsimIs4g(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1714
    const/4 v0, 0x0

    return v0
.end method

.method public static coloractivateSubId(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1435
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 1436
    return-void
.end method

.method public static colorallDefaultsSelected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1455
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static colorclearDefaultsForInactiveSubIds(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1451
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 1452
    return-void
.end method

.method public static colordeactivateSubId(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1431
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    .line 1432
    return-void
.end method

.method public static colorgetActiveSubInfoCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1371
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static colorgetActiveSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1361
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 1363
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetAllSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 1357
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetDefaultDataPhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1459
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method public static colorgetDefaultDataSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1476
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1477
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultDataSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1464
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultDataSubscriptionInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetDefaultSmsPhoneId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1481
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    .line 1482
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultSmsSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1495
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 1496
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultSmsSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1487
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetDefaultSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1526
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 1527
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultVoicePhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1508
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    return v0
.end method

.method public static colorgetDefaultVoiceSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1521
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 1522
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultVoiceSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1513
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultVoiceSubscriptionInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetOnDemandDataSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1410
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v0

    .line 1411
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetPhoneId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1375
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static colorgetSlotId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1406
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static colorgetSubId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1380
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1382
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 1383
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1388
    .local v1, "vRetSubId":I
    :goto_0
    return v1

    .line 1386
    .end local v1    # "vRetSubId":I
    :cond_0
    const/16 v1, -0x3e8

    .restart local v1    # "vRetSubId":I
    goto :goto_0
.end method

.method public static colorgetSubInfoForSubscriber(Landroid/content/Context;I)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1393
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(I)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetSubInfoUsingIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    const/4 v0, 0x0

    return-object v0
.end method

.method public static colorgetSubInfoUsingIccIdGemini(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 1402
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->colorgetActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetSubInfoUsingSlotId(Landroid/content/Context;I)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    .line 1351
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetSubState(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1427
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubState(I)I

    move-result v0

    return v0
.end method

.method public static colorisSMSPromptEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1504
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public static colorisValidPhoneId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 1439
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisValidSlotId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1443
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisValidSubId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1447
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisVoicePromptEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1419
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v0

    return v0
.end method

.method public static colorsetDataRoaming(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1531
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    move-result v0

    .line 1532
    .local v0, "vRet":I
    return v0
.end method

.method public static colorsetDefaultDataSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1472
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1473
    return-void
.end method

.method public static colorsetDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1491
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 1492
    return-void
.end method

.method public static colorsetDefaultVoiceSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1517
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 1518
    return-void
.end method

.method public static colorsetDisplayName(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 1367
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public static colorsetSMSPromptEnabled(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1500
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 1501
    return-void
.end method

.method public static colorsetSubState(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "subState"    # I

    .prologue
    .line 1423
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setSubState(II)I

    move-result v0

    return v0
.end method

.method public static colorsetVoicePromptEnabled(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1415
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 1416
    return-void
.end method

.method public static colortemporarySwitchDataSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1468
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->temporarySwitchDataSubId(I)V

    .line 1469
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->initRemoteService(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/telephony/ColorOSTelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/ColorOSTelephonyManager;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "sInstance":Landroid/telephony/ColorOSTelephonyManager;
    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 557
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 561
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private static getMTKPlatFormFlag(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 118
    .local v0, "vRet":Z
    if-eqz p0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public static getMTKsupportGeminiFlag(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 101
    .local v0, "vRet":Z
    if-eqz p0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_0
    return v0
.end method

.method private static getQcomPlatFormFlag(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 110
    .local v0, "vRet":Z
    if-eqz p0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_0
    return v0
.end method

.method private getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 864
    const/4 v1, 0x1

    .line 865
    .local v1, "vDebugType":I
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 867
    .local v0, "mRemote":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 868
    const-string v2, "***********************************"

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorOSTelephonyManager is NULL !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 870
    const-string v2, "***********************************"

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x0

    .line 874
    .end local v0    # "mRemote":Landroid/os/IBinder;
    :cond_0
    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 565
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private static initRemoteService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 83
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 84
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getQcomPlatFormFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomPlatForm:Z

    .line 85
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getMTKPlatFormFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMTKPlatForm:Z

    .line 86
    const-string v0, "com.android.internal.telephony.ITelephony"

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static innerGetQcomDualCard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x1

    .line 92
    .local v0, "vRet":Z
    if-eqz p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1710
    const-string v0, "ColorOSTelephonyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1581
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultApplication(Ljava/lang/String;)V

    .line 1582
    return-void
.end method


# virtual methods
.method public answerRingingCallGemini(I)V
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 590
    :try_start_0
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_2

    .line 591
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 592
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 593
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallForSubscriber(I)V

    .line 601
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-void

    .line 596
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    goto :goto_0

    .line 599
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "slotID"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 989
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 993
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    if-eqz p4, :cond_0

    .line 999
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1006
    :goto_0
    const/16 v4, 0x271c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    :goto_1
    return-void

    .line 1003
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v2

    .line 1010
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorChangeIccLockPassword ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1013
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorCheckUsimIs4G(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1019
    const-string v0, "colorCheckUsimIs4G ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public colorCloseIccLogicalChannel(II)Z
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "channel"    # I

    .prologue
    .line 1645
    const-string v0, "colorCloseIccLogicalChannel ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1646
    const/4 v0, 0x0

    return v0
.end method

.method public colorEmtDial(ILjava/lang/String;)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 1636
    const-string v0, "colorOpenIccLogicalChannel ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method public colorEmtHungup(ILjava/lang/String;)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 1639
    const-string v0, "colorEmtHungup ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1640
    return-void
.end method

.method public colorEnableEngineerTest(IZ)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "on"    # Z

    .prologue
    .line 1642
    const-string v0, "colorEnableEngineerTest ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method public colorGetDataSubscription()I
    .locals 2

    .prologue
    .line 820
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 821
    .local v0, "vSUBID":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 823
    .local v1, "vSlotID":I
    return v1
.end method

.method public colorGetDefaultDataSubscription()I
    .locals 1

    .prologue
    .line 1602
    const-string v0, "colorGetDefaultDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1603
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetDefaultSubscription()I
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 816
    .local v0, "vRet":I
    return v0
.end method

.method public colorGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 12
    .param p1, "slotID"    # I

    .prologue
    const/4 v11, 0x0

    .line 1124
    sget-boolean v8, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v8, :cond_3

    .line 1125
    const/4 v7, 0x0

    .line 1126
    .local v7, "type":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 1127
    .local v6, "subId":[I
    if-eqz v6, :cond_0

    aget v8, v6, v11

    if-lez v8, :cond_0

    .line 1129
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1130
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-interface {v8, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1140
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 1141
    const-string v9, "ColorOSTelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getIccCardType sub "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v10, v6, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ,icc type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v7, :cond_1

    move-object v8, v7

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    .end local v6    # "subId":[I
    .end local v7    # "type":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 1132
    .restart local v6    # "subId":[I
    .restart local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1133
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1134
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1136
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1141
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    const-string/jumbo v8, "null"

    goto :goto_1

    .line 1143
    :cond_2
    const-string v8, "ColorOSTelephonyManager"

    const-string v9, "getIccCardType sub null"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1146
    .end local v6    # "subId":[I
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1149
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1151
    .local v5, "mRemote":Landroid/os/IBinder;
    if-nez v5, :cond_4

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    const/4 v7, 0x0

    goto :goto_2

    .line 1158
    :cond_4
    :try_start_1
    sget-object v8, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/16 v8, 0x2736

    const/4 v9, 0x0

    invoke-interface {v5, v8, v0, v1, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1169
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_3
    move-object v7, v2

    .line 1172
    goto :goto_2

    .line 1164
    .end local v2    # "_result":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1165
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1166
    const/4 v2, 0x0

    .line 1169
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 1169
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v8
.end method

.method public colorGetIccCardTypeGeminiGlobal(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1176
    const-string v0, "colorGetIccCardTypeGeminiGlobal ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1177
    const-string v0, ""

    return-object v0
.end method

.method public colorGetIccLockEnabled(I)Z
    .locals 7
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x0

    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 935
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 939
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 950
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    :goto_0
    return v2

    .line 945
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 946
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetIccLockEnabled ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    const/4 v2, 0x0

    .line 950
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 950
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccPin1RetryCount(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1024
    const-string v0, "colorGetIccPin1RetryCount ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1025
    const/4 v0, 0x0

    return v0
.end method

.method public colorGetImei(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 1782
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 1783
    .local v0, "vImei":Ljava/lang/String;
    return-object v0
.end method

.method public colorGetInterfaceReserve1(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1274
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve2(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1278
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve3(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1281
    const/4 v0, 0x0

    return v0
.end method

.method public colorGetInterfaceReserve4(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public colorGetLastError(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1265
    const-string v0, "colorGetLastError ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public colorGetMeid(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotID"    # I

    .prologue
    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1291
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1293
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1296
    const/4 v2, 0x0

    .line 1314
    :goto_0
    return-object v2

    .line 1300
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/16 v5, 0x2740

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1311
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1306
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1307
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetMeid ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    const/4 v2, 0x0

    .line 1311
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1311
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPreferredNetworkType(I)I
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 892
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 898
    :goto_0
    return v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "getPreferredNetworkType RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 895
    :catch_1
    move-exception v0

    .line 896
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "getPreferredNetworkType NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public colorGetPrioritySubscription()I
    .locals 1

    .prologue
    .line 1612
    const-string v0, "colorGetPrioritySubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1613
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetQcomActiveSubscriptionsCount()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public colorGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotID"    # I

    .prologue
    .line 1181
    sget-boolean v5, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v5, :cond_0

    .line 1182
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 1210
    :goto_0
    return-object v2

    .line 1184
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1187
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1189
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_1

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1192
    const/4 v2, 0x0

    goto :goto_0

    .line 1196
    :cond_1
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/16 v5, 0x2739

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1207
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1202
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1203
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomImeiGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    const/4 v2, 0x0

    .line 1207
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1207
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1214
    const-string v0, "colorGetIccCardTypeGeminiGlobal ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1215
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetSMSSubscription()I
    .locals 1

    .prologue
    .line 1607
    const-string v0, "colorGetSMSSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1608
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetScAddressGemini(II)Ljava/lang/String;
    .locals 12
    .param p1, "slotID"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1029
    sget-boolean v10, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v10, :cond_0

    .line 1031
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 1032
    .local v7, "subId":[I
    if-eqz v7, :cond_0

    .line 1033
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1034
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v7, v11

    invoke-interface {v10, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;

    move-result-object v9

    .line 1035
    .local v9, "vScaddress":Landroid/os/Bundle;
    const-string/jumbo v10, "scAddress"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1075
    .end local v7    # "subId":[I
    .end local v9    # "vScaddress":Landroid/os/Bundle;
    :goto_0
    return-object v8

    .line 1039
    :catch_0
    move-exception v4

    .line 1040
    .local v4, "e1":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1042
    .end local v4    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 1043
    .local v5, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1047
    .end local v5    # "e2":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1050
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1052
    .local v6, "mRemote":Landroid/os/IBinder;
    if-nez v6, :cond_1

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1060
    :cond_1
    :try_start_1
    sget-object v10, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    const/16 v10, 0x271f

    const/4 v11, 0x0

    invoke-interface {v6, v10, v0, v1, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1072
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move-object v8, v2

    .line 1075
    goto :goto_0

    .line 1067
    .end local v2    # "_result":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "colorGetScAddressGemini ERROR !!! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1069
    const/4 v2, 0x0

    .line 1072
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1072
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v10
.end method

.method public colorGetSimIndicatorState(I)I
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    const/4 v0, 0x0

    .line 878
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 879
    const-string v1, "colorGetSimIndicatorState ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 886
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 883
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public colorGetVoiceSubscription()I
    .locals 1

    .prologue
    .line 1597
    const-string v0, "colorGetVoiceSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1598
    const/4 v0, -0x1

    return v0
.end method

.method public colorISsingleOrDual()Z
    .locals 2

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomPlatForm:Z

    if-eqz v1, :cond_1

    .line 836
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 841
    :cond_0
    :goto_0
    return v0

    .line 838
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMTKPlatForm:Z

    if-eqz v1, :cond_0

    .line 839
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    goto :goto_0
.end method

.method public colorIs3GButtonEnable(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 922
    const-string v0, "colorIs3GButtonEnable ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public colorIsDataPossibleForSubscription(JLjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # J
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 844
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "colorIsDataPossibleForSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 855
    :cond_0
    return v1
.end method

.method public colorIsImsRegistered(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 1787
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->colorIsImsRegistered(I)Z

    move-result v0

    return v0
.end method

.method public colorIsQcomSubActive(I)Z
    .locals 7
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "vRet":Z
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v4, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 781
    :cond_1
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_0

    .line 782
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 783
    iget-object v4, p0, Landroid/telephony/ColorOSTelephonyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "msim_mode_setting"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 788
    .local v0, "dualSimMode":I
    packed-switch v0, :pswitch_data_0

    .line 802
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error not correct values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v1, 0x0

    goto :goto_0

    .line 790
    :pswitch_0
    const/4 v1, 0x0

    .line 791
    goto :goto_0

    .line 793
    :pswitch_1
    if-nez p1, :cond_2

    move v1, v2

    .line 794
    :goto_1
    goto :goto_0

    :cond_2
    move v1, v3

    .line 793
    goto :goto_1

    .line 796
    :pswitch_2
    if-ne p1, v2, :cond_3

    move v1, v2

    .line 797
    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    .line 796
    goto :goto_2

    .line 799
    :pswitch_3
    const/4 v1, 0x1

    .line 800
    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public colorIsWhiteSIMCard(I)Z
    .locals 9
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1219
    sget-boolean v7, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v7, :cond_1

    .line 1220
    const/4 v6, 0x0

    .line 1221
    .local v6, "result":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isTestIccCard slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1223
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1224
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 1232
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isTestIccCard slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    move v2, v6

    .line 1261
    .end local v6    # "result":Z
    :goto_1
    return v2

    .line 1226
    .restart local v6    # "result":Z
    :catch_0
    move-exception v4

    .line 1227
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1228
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1230
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1235
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    .end local v6    # "result":Z
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1238
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1240
    .local v5, "mRemote":Landroid/os/IBinder;
    if-nez v5, :cond_2

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1247
    :cond_2
    :try_start_1
    sget-object v7, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    const/16 v7, 0x273f

    const/4 v8, 0x0

    invoke-interface {v5, v7, v0, v1, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .line 1258
    .local v2, "_result":Z
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1253
    .end local v2    # "_result":Z
    :catch_2
    move-exception v3

    .line 1254
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "colorIsWhiteSIMCard ERROR !!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1255
    const/4 v2, 0x0

    .line 1258
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1258
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v7
.end method

.method public colorOpenIccLogicalChannel(ILjava/lang/String;)[I
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "AID"    # Ljava/lang/String;

    .prologue
    .line 1632
    const-string v0, "colorOpenIccLogicalChannel ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1633
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorSetDataSubscription(I)V
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 827
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 828
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 829
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 831
    :cond_0
    return-void
.end method

.method public colorSetDefaultDataSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1621
    const-string v0, "colorSetDefaultDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public colorSetDefaultSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1593
    const-string v0, "colorSetDefaultSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method public colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "slotID"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 962
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 967
    if-eqz p4, :cond_1

    .line 968
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 974
    :goto_1
    const/16 v4, 0x271b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    :goto_2
    return-void

    :cond_0
    move v4, v5

    .line 964
    goto :goto_0

    .line 972
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 977
    :catch_0
    move-exception v2

    .line 978
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorSetIccLockEnabled ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 981
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetLine1Number(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "colorIs3GButtonEnable ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public colorSetPreferredNetworkType(II)I
    .locals 5
    .param p1, "slotID"    # I
    .param p2, "type"    # I

    .prologue
    .line 903
    const/4 v2, 0x0

    .line 906
    .local v2, "vSetPreNetWorkType":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 912
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 918
    .local v0, "_result":I
    :goto_1
    return v0

    .line 907
    .end local v0    # "_result":I
    :catch_0
    move-exception v1

    .line 908
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "ColorOSTelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 909
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 910
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "ColorOSTelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 916
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "_result":I
    goto :goto_1
.end method

.method public colorSetPrioritySubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1629
    const-string v0, "colorSetPrioritySubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1630
    return-void
.end method

.method public colorSetSMSSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1625
    const-string v0, "colorSetSMSSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1626
    return-void
.end method

.method public colorSetSarRfState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1791
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1792
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1809
    :goto_0
    return-void

    .line 1795
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    const/16 v4, 0x2744

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v2

    .line 1804
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorSetSarRfState ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1806
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetScAddressGemini(ILjava/lang/String;I)V
    .locals 9
    .param p1, "slotID"    # I
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 1079
    sget-boolean v7, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v7, :cond_0

    .line 1081
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 1082
    .local v6, "subId":[I
    if-eqz v6, :cond_0

    .line 1083
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1084
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-interface {v7, v8, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setScAddressUsingSubId(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1121
    .end local v6    # "subId":[I
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v3

    .line 1089
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1091
    .end local v3    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1092
    .local v4, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1096
    .end local v4    # "e2":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1098
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1100
    .local v5, "mRemote":Landroid/os/IBinder;
    if-nez v5, :cond_1

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1107
    :cond_1
    :try_start_1
    sget-object v7, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/16 v7, 0x2720

    const/4 v8, 0x0

    invoke-interface {v5, v7, v0, v1, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1114
    :catch_2
    move-exception v2

    .line 1115
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "colorSetScAddressGemini ERROR !!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1118
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v7
.end method

.method public colorSetVoiceSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1617
    const-string v0, "colorSetVoiceSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method public colorTransmitIccBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 1653
    const-string v0, "colorTransmitIccBasicChannel ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1654
    const-string v0, ""

    return-object v0
.end method

.method public colorTransmitIccLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "channel"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .prologue
    .line 1649
    const-string v0, "colorTransmitIccLogicalChannel ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1650
    const-string v0, ""

    return-object v0
.end method

.method public colorTransmitIccSimIO(IIIIIILjava/lang/String;)[B
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1270
    const-string v0, "colorTransmitIccSimIO ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1271
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorgetPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 1588
    const-string v0, "colorgetPreferredDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1589
    const/4 v0, -0x1

    return v0
.end method

.method public colorgetSIMInfoBySlot(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1657
    const-string v0, "colorgetSIMInfoBySlot ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1658
    const/4 v0, 0x0

    return v0
.end method

.method public endCallGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 569
    const/4 v2, 0x0

    .line 572
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 573
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 574
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 575
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(I)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 584
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 579
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 583
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 584
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 146
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 147
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    .line 158
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 151
    :cond_2
    if-nez p1, :cond_1

    .line 152
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 153
    .restart local v0    # "subId":[I
    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1664
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1665
    .local v2, "_result":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1667
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_1

    .line 1668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v3, v6

    .line 1701
    :cond_0
    :goto_0
    return-object v3

    .line 1674
    :cond_1
    :try_start_0
    sget-object v7, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    const/16 v7, 0x2743

    const/4 v8, 0x0

    invoke-interface {v4, v7, v0, v1, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1678
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1686
    :goto_1
    const-string v7, "getCellLocationTT"

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1687
    const/4 v3, 0x0

    .line 1688
    .local v3, "cl":Landroid/telephony/CellLocation;
    if-eqz v2, :cond_0

    .line 1689
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v6

    .line 1690
    goto :goto_0

    .line 1680
    .end local v3    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v7

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1683
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v6

    .line 1693
    .restart local v3    # "cl":Landroid/telephony/CellLocation;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    .line 1694
    .local v5, "vCardType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCellLocation-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1695
    invoke-static {v2, v5}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/telephony/CellLocation;

    move-result-object v3

    .line 1696
    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1697
    const-string v7, "getCellLocationTT33"

    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    move-object v3, v6

    .line 1698
    goto :goto_0
.end method

.method public getCurrentPhoneTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 512
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 513
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 514
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 521
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 517
    :cond_2
    if-nez p1, :cond_1

    .line 518
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public getDataActivityGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 476
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 480
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 481
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataActivity(I)I

    move-result v1

    goto :goto_0

    .line 485
    .end local v0    # "subId":[I
    :cond_2
    if-nez p1, :cond_0

    .line 486
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v1

    goto :goto_0
.end method

.method public getDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1555
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1556
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1568
    :goto_0
    return v2

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error calling ITelephony#getDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1563
    :catch_1
    move-exception v1

    .line 1564
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error #getDataEnabled"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getDataNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 527
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 528
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 529
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 530
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 537
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 533
    :cond_2
    if-nez p1, :cond_1

    .line 534
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 461
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 462
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v1

    goto :goto_0

    .line 466
    .end local v0    # "subId":[I
    :cond_2
    if-nez p1, :cond_0

    .line 467
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_2

    .line 258
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1
    :goto_0
    return-object v0

    .line 261
    :cond_2
    if-nez p1, :cond_1

    .line 262
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 388
    const-string v0, ""

    .line 390
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 392
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :cond_1
    :goto_0
    return-object v0

    .line 394
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIccOperatorNumeric(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1577
    const-string v0, ""

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 182
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 186
    :cond_2
    if-nez p1, :cond_1

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1536
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 404
    const-string v1, ""

    .line 406
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v1

    .line 408
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 409
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 410
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 415
    .end local v0    # "subId":[I
    :cond_2
    if-nez p1, :cond_0

    .line 416
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 423
    const-string v1, ""

    .line 425
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 426
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 427
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 431
    :cond_2
    if-nez p1, :cond_1

    .line 432
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 225
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 226
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 234
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 230
    :cond_2
    if-nez p1, :cond_1

    .line 231
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 439
    const-string v1, ""

    .line 441
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 442
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 443
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 444
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 447
    :cond_2
    if-nez p1, :cond_1

    .line 448
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 541
    const-string v1, ""

    .line 543
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 544
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 545
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 546
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 549
    :cond_2
    if-nez p1, :cond_1

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimStateGemini(I)I
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 194
    const/4 v0, -0x1

    .line 196
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_2

    .line 197
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 204
    :cond_1
    :goto_0
    return v0

    .line 200
    :cond_2
    if-nez p1, :cond_1

    .line 201
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    const/4 v0, 0x0

    .line 370
    :cond_1
    return-object v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 358
    :cond_1
    return-object v0
.end method

.method public getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1719
    const-string v2, ""

    .line 1720
    .local v2, "svlteSubscriberId":Ljava/lang/String;
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_1

    .line 1721
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1723
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v3, v2

    .line 1734
    .end local v2    # "svlteSubscriberId":Ljava/lang/String;
    .local v3, "svlteSubscriberId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1725
    .end local v3    # "svlteSubscriberId":Ljava/lang/String;
    .restart local v2    # "svlteSubscriberId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    move-object v3, v2

    .line 1734
    .end local v2    # "svlteSubscriberId":Ljava/lang/String;
    .restart local v3    # "svlteSubscriberId":Ljava/lang/String;
    goto :goto_0

    .line 1727
    .end local v3    # "svlteSubscriberId":Ljava/lang/String;
    .restart local v2    # "svlteSubscriberId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1728
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1732
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :cond_1
    const-string v4, "fillTemplateForCdmaLteERROR"

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 130
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 131
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 135
    :cond_2
    if-nez p1, :cond_1

    .line 136
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSvlteImeiForMTK(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1758
    const-string v0, ""

    .line 1760
    .local v0, "SvlteImei":Ljava/lang/String;
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_0

    .line 1761
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1763
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSvlteImei(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 1774
    .end local v0    # "SvlteImei":Ljava/lang/String;
    .local v1, "SvlteImei":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1765
    .end local v1    # "SvlteImei":Ljava/lang/String;
    .restart local v0    # "SvlteImei":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1766
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    move-object v1, v0

    .line 1774
    .end local v0    # "SvlteImei":Ljava/lang/String;
    .restart local v1    # "SvlteImei":Ljava/lang/String;
    goto :goto_0

    .line 1767
    .end local v1    # "SvlteImei":Ljava/lang/String;
    .restart local v0    # "SvlteImei":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1768
    .local v3, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSvlteMeidForMTK(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1738
    const-string v0, ""

    .line 1740
    .local v0, "SvlteMeid":Ljava/lang/String;
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_0

    .line 1741
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1743
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSvlteMeid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 1754
    .end local v0    # "SvlteMeid":Ljava/lang/String;
    .local v1, "SvlteMeid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1745
    .end local v1    # "SvlteMeid":Ljava/lang/String;
    .restart local v0    # "SvlteMeid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1746
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    move-object v1, v0

    .line 1754
    .end local v0    # "SvlteMeid":Ljava/lang/String;
    .restart local v1    # "SvlteMeid":Ljava/lang/String;
    goto :goto_0

    .line 1747
    .end local v1    # "SvlteMeid":Ljava/lang/String;
    .restart local v0    # "SvlteMeid":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1748
    .local v3, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 165
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 166
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-object v1

    .line 170
    :cond_2
    if-nez p1, :cond_1

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVoiceNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 496
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 497
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 505
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 501
    :cond_2
    if-nez p1, :cond_1

    .line 502
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1541
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1545
    :goto_0
    return v1

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1544
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1545
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCardGemini(I)Z
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_2

    .line 211
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 218
    :cond_1
    :goto_0
    return v0

    .line 214
    :cond_2
    if-nez p1, :cond_1

    .line 215
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isCTCCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1705
    const-string/jumbo v0, "isCTCCard ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 322
    :cond_1
    return v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 310
    :cond_1
    return v0
.end method

.method public isIdleGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 624
    const/4 v2, 0x1

    .line 627
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 628
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 629
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 630
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(I)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 639
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 634
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 638
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 639
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, "vRet":Z
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_2

    .line 241
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 242
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 251
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return v1

    .line 247
    :cond_2
    if-nez p1, :cond_1

    .line 248
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    goto :goto_0
.end method

.method public isOffhookGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 644
    const/4 v2, 0x0

    .line 647
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 648
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 649
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 650
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(I)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 660
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 655
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 659
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 660
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 346
    :cond_1
    return-object v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 334
    :cond_1
    return-object v0
.end method

.method public isRingingGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 604
    const/4 v2, 0x0

    .line 607
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 608
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 609
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 610
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(I)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 619
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 614
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 618
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimInsert(I)Z
    .locals 2
    .param p1, "slotID"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_2

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 384
    :cond_1
    :goto_0
    return v0

    .line 380
    :cond_2
    if-nez p1, :cond_1

    .line 381
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isUriFileExist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "vUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1321
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1323
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1344
    :goto_0
    return v2

    .line 1330
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    const/16 v5, 0x2741

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1341
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1336
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1337
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUriFileExist ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    const/4 v2, 0x0

    .line 1341
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1341
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public isUsimWithCsim(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1778
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsimWithCsim(I)Z

    move-result v0

    return v0
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "slotID"    # I

    .prologue
    const/4 v2, 0x0

    .line 269
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_4

    .line 270
    :cond_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 271
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    .line 272
    aget v1, v0, v2

    iput v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    .line 275
    :cond_1
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenGemini-Register SubID,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 299
    .end local v0    # "subId":[I
    :cond_2
    :goto_0
    return-void

    .line 280
    .restart local v0    # "subId":[I
    :cond_3
    const-string/jumbo v1, "listenGeminiA ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "subId":[I
    :cond_4
    if-nez p3, :cond_2

    .line 285
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 286
    .restart local v0    # "subId":[I
    if-eqz v0, :cond_5

    .line 287
    aget v1, v0, v2

    iput v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    .line 290
    :cond_5
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    .line 291
    const-string/jumbo v1, "listenGemini-Register"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 295
    :cond_6
    const-string/jumbo v1, "listenGeminiA ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1572
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledUsingSubId(IZ)V

    .line 1573
    return-void
.end method

.method public setDataEnabledGemini(IZ)V
    .locals 3
    .param p1, "slotID"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 759
    :try_start_0
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 762
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 763
    .local v0, "subId":[I
    if-eqz v0, :cond_2

    .line 764
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledUsingSubId(IZ)V

    goto :goto_0

    .line 772
    .end local v0    # "subId":[I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 769
    .restart local v0    # "subId":[I
    :cond_2
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public showInCallScreenGemini(Z)Z
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 673
    const/4 v1, 0x0

    .line 675
    .local v1, "vRet":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    const/4 v1, 0x1

    .line 681
    :goto_0
    return v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRingerGemini(I)V
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 666
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 706
    const/4 v2, 0x0

    .line 709
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 710
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 711
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 712
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 721
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 716
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)[I
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .prologue
    const/4 v2, 0x0

    .line 743
    :try_start_0
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 744
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 745
    .local v1, "subId":[I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-interface {v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v2

    .line 753
    .end local v1    # "subId":[I
    :goto_0
    return-object v2

    .line 748
    :cond_1
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 752
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    .line 685
    const/4 v2, 0x0

    .line 688
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_2

    .line 689
    :cond_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 690
    .local v1, "subId":[I
    if-eqz v1, :cond_1

    .line 691
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 701
    .end local v1    # "subId":[I
    :goto_0
    return v3

    .line 696
    :cond_2
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 700
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 701
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .prologue
    const/4 v2, 0x0

    .line 727
    :try_start_0
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 728
    :cond_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 729
    .local v1, "subId":[I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-interface {v3, v4, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 737
    .end local v1    # "subId":[I
    :goto_0
    return-object v2

    .line 732
    :cond_1
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 736
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
