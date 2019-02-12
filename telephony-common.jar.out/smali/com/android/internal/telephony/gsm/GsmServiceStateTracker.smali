.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field protected static final EVENT_SET_AUTO_SELECT_NETWORK_DONE:I = 0x32

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final PROPERTY_RIL_UICC_3GPP_TYPE:[Ljava/lang/String;

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final REJECT_NOTIFICATION:I = 0x37a

.field static final SPECIAL_CARD_TYPE_NOTIFICATION:I = 0x22c7

.field private static final SST_TYPE:I = 0x0

.field static final VDBG:Z = true

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field public static final customEhplmn:[[Ljava/lang/String;

.field private static mCellInfoTimer:Ljava/util/Timer;

.field private static mSimType:[Ljava/lang/String;

.field private static sReceiveNitz:[Z


# instance fields
.field private final IVSR_CTR_MAX:I

.field private final IVSR_INTERVAL:I

.field private final IVSR_INTERVAL_MAX:I

.field private final IVSR_RESET_TIMER:I

.field private final IVSR_SPEED:I

.field protected bHasDetachedDuringPolling:Z

.field public dontUpdateNetworkStateFlag:Z

.field private explict_update_spn:I

.field private gprsState:I

.field private isCsInvalidCard:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mBeginForceDoIvsr:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mConfigModemStatus:Z

.field private mCr:Landroid/content/ContentResolver;

.field private mCsgId:Ljava/lang/String;

.field private mDataConnectionSettingObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mEverIVSR:Z

.field private mEverPollSignalStrength:Z

.field private mEverRadioHandled:Z

.field private mFemtocellDomain:I

.field private mFirstRadioChange:Z

.field private mForceDoIvsr:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHhbName:Ljava/lang/String;

.field private mImsExtInfo:I

.field private mImsRegInfo:I

.field private mImsRegistry:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsForceSendScreenOnForUpdateNwInfo:Z

.field private mIsImeiLock:Z

.field private mIsNeedNotifyRacChanged:Z

.field private mIvsrCtr:I

.field private mLastPSRegisteredPLMN:Ljava/lang/String;

.field private mLastRegisteredPLMN:Ljava/lang/String;

.field private mLocatedPlmn:Ljava/lang/String;

.field private mMaxDataCalls:I

.field private mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

.field private mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPreferredNetworkType:I

.field private mPsRegState:I

.field private mPsRegStateRaw:I

.field private mPsUrcLac:I

.field private mPsUrcRac:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private mStartedGprsRegCheck:Z

.field protected mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

.field private mTimeZoneIdByMcc:[[Ljava/lang/String;

.field private mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private newGPRSState:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    .line 218
    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "46000"

    aput-object v2, v1, v5

    const-string v2, "46002"

    aput-object v2, v1, v6

    const-string v2, "46007"

    aput-object v2, v1, v7

    const-string v2, "46008"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "45400"

    aput-object v2, v1, v5

    const-string v2, "45402"

    aput-object v2, v1, v6

    const-string v2, "45418"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "46001"

    aput-object v2, v1, v5

    const-string v2, "46009"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "45403"

    aput-object v2, v1, v5

    const-string v2, "45404"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "45412"

    aput-object v2, v1, v5

    const-string v2, "45413"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45416"

    aput-object v3, v2, v5

    const-string v3, "45419"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45501"

    aput-object v3, v2, v5

    const-string v3, "45504"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45503"

    aput-object v3, v2, v5

    const-string v3, "45505"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45002"

    aput-object v3, v2, v5

    const-string v3, "45008"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52501"

    aput-object v3, v2, v5

    const-string v3, "52502"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43602"

    aput-object v3, v2, v5

    const-string v3, "43612"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52010"

    aput-object v3, v2, v5

    const-string v3, "52099"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24001"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26207"

    aput-object v3, v2, v5

    const-string v3, "26208"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "23430"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, "23432"

    aput-object v3, v2, v7

    const-string v3, "23433"

    aput-object v3, v2, v8

    const-string v3, "23434"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "72402"

    aput-object v3, v2, v5

    const-string v3, "72403"

    aput-object v3, v2, v6

    const-string v3, "72404"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "72406"

    aput-object v3, v2, v5

    const-string v3, "72410"

    aput-object v3, v2, v6

    const-string v3, "72411"

    aput-object v3, v2, v7

    const-string v3, "72423"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "72432"

    aput-object v3, v2, v5

    const-string v3, "72433"

    aput-object v3, v2, v6

    const-string v3, "72434"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "31026"

    aput-object v3, v2, v5

    const-string v3, "31031"

    aput-object v3, v2, v6

    const-string v3, "310160"

    aput-object v3, v2, v7

    const-string v3, "310200"

    aput-object v3, v2, v8

    const-string v3, "310210"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "310220"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "310230"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "310240"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "310250"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "310260"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "310270"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "310280"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "311290"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "310300"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "310310"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "310320"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "311330"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "310660"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "310800"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "310150"

    aput-object v3, v2, v5

    const-string v3, "310170"

    aput-object v3, v2, v6

    const-string v3, "310380"

    aput-object v3, v2, v7

    const-string v3, "310410"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31033"

    aput-object v3, v2, v5

    const-string v3, "310330"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 340
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicc.3gpptype"

    aput-object v1, v0, v5

    const-string v1, "gsm.ril.uicc.3gpptype.2"

    aput-object v1, v0, v6

    const-string v1, "gsm.ril.uicc.3gpptype.3"

    aput-object v1, v0, v7

    const-string v1, "gsm.ril.uicc.3gpptype.4"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_UICC_3GPP_TYPE:[Ljava/lang/String;

    .line 346
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v5

    const-string v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v6

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v7

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 603
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v8, Landroid/telephony/CellInfoGsm;

    invoke-direct {v8}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 132
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 133
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 134
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 135
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 141
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 147
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 159
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 163
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 167
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 177
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 180
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 209
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 210
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 212
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 213
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 214
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    .line 240
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 245
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    .line 246
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 250
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    .line 251
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    .line 252
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    .line 253
    const/16 v7, 0xa

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IVSR_CTR_MAX:I

    .line 254
    const/16 v7, 0x4e20

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IVSR_INTERVAL:I

    .line 255
    const v7, 0xea60

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IVSR_INTERVAL_MAX:I

    .line 256
    const v7, 0x75300

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IVSR_RESET_TIMER:I

    .line 257
    const/16 v7, 0x2710

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IVSR_SPEED:I

    .line 260
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 261
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 262
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    .line 264
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    .line 265
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 268
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 272
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 273
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 274
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 283
    const/4 v7, 0x1

    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "cn"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Asia/Shanghai"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 308
    const/4 v7, 0x3

    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "460"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Asia/Shanghai"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "404"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Asia/Calcutta"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "454"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Asia/Hong_Kong"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    .line 313
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    .line 316
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegInfo:I

    .line 317
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    .line 327
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 332
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcLac:I

    .line 333
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcRac:I

    .line 334
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNeedNotifyRacChanged:Z

    .line 338
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mConfigModemStatus:Z

    .line 353
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 356
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    .line 542
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 562
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 571
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    .line 593
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    .line 605
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 606
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 607
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 611
    .local v6, "powerManager":Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "ServiceStateTracker"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 613
    const-string v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 615
    :try_start_0
    const-class v7, Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 623
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 627
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x17

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x66

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x65

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 634
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 635
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 640
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x6a

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 641
    const-string v7, "ro.mtk_ims_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 642
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x6f

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsDisable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x70

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 645
    :cond_2
    const-string v7, "ro.mtk_femto_cell_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 646
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x6b

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->needResumeModem()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 648
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x72

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 653
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 656
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_6

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 658
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 659
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "auto_time"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 662
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "auto_time_zone"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 667
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "telephony_misc_feature_config"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 672
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 675
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 676
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 681
    .local v1, "context":Landroid/content/Context;
    const-string v7, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v7, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v7, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    .local v5, "imsfilter":Landroid/content/IntentFilter;
    const-string v7, "ACTION_IMS_SIMULATE"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "multi_sim_data_call"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 710
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v8, "mobile_data"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 713
    const-string v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 715
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 716
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 717
    const/16 v7, 0x69

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 729
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 730
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    .line 731
    const-string v7, ""

    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSimType(ILjava/lang/String;)V

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 617
    .end local v0    # "airplaneMode":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "i":I
    .end local v5    # "imsfilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 636
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 637
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string v7, "No isImeiLocked"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "airplaneMode":I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 719
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "imsfilter":Landroid/content/IntentFilter;
    :cond_7
    const/16 v7, 0x68

    :try_start_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 722
    :catch_2
    move-exception v2

    .line 723
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 733
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "i":I
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetIvsrState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    return v0
.end method

.method static synthetic access$2300()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfoByRate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSimType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSimType(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSpecialCardTypeNotification(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowCancelSpecialCardTypeNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    return-void
.end method

.method private broadcastHideNetworkState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 4321
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastHideNetworkUpdate action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4322
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.ACTION_HIDE_NETWORK_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4323
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4324
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4326
    :cond_1
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4327
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4328
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4329
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4330
    return-void
.end method

.method private configModemRemoteSimAccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5004
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isUiccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5005
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 5009
    :goto_0
    return-void

    .line 5007
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3193
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 3196
    .local v2, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3197
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v0, 0x1

    .line 3200
    .local v0, "equalsMcc":Z
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentMccEqualsSimMcc(): equalsMcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simNumeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",operatorNumeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    :goto_0
    return v0

    .line 3203
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private delayDoIvsr()V
    .locals 5

    .prologue
    const/16 v2, 0x77

    const/4 v4, 0x1

    .line 5358
    const-string v1, "InvalidSimInfo reset SIM due to CS or PS invalid delay"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5359
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 5361
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5362
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 5363
    const v1, 0xea60

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v2, v2, 0x4e20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5364
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    .line 5365
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    .line 5366
    return-void
.end method

.method private doIvsr()V
    .locals 4

    .prologue
    const/16 v2, 0x78

    const/4 v3, 0x0

    .line 5306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5307
    const-string v1, "InvalidSimInfo set TRM due to CS or PS invalid block for in calling"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5308
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->delayDoIvsr()V

    .line 5311
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 5313
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5314
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 5315
    const-wide/32 v2, 0x75300

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5332
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 5319
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 5320
    const-string v1, "InvalidSimInfo set TRM due to CS or PS invalid block for max try 10"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5321
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetIvsrState()V

    goto :goto_0

    .line 5325
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvalidSimInfo set TRM due to CS or PS invalid doIvsr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5326
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEverIVSR(Z)V

    .line 5327
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 5328
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 5329
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setSimPower(ILandroid/os/Message;)V

    .line 5330
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    .line 5331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 2869
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NITZ],findTimeZone,offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",dst:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",when:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2870
    move v5, p1

    .line 2871
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 2872
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 2874
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 2875
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2876
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 2877
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 2878
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 2879
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 2881
    move-object v2, v6

    .line 2882
    const-string v9, "[NITZ],find time zone."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2887
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2877
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3570
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3573
    :goto_0
    return v1

    .line 3570
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3572
    :catch_0
    move-exception v0

    .line 3573
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3579
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3582
    :goto_0
    return v1

    .line 3579
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3581
    :catch_0
    move-exception v0

    .line 3582
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDstForMcc(IJ)I
    .locals 8
    .param p1, "mcc"    # I
    .param p2, "when"    # J

    .prologue
    .line 4567
    const/4 v1, 0x0

    .line 4569
    .local v1, "dst":I
    if-eqz p1, :cond_0

    .line 4570
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v4

    .line 4571
    .local v4, "tzId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4572
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 4573
    .local v3, "timeZone":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 4574
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 4575
    .local v2, "isInDaylightTime":Z
    if-eqz v2, :cond_0

    .line 4576
    const/4 v1, 0x1

    .line 4577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NITZ] getDstForMcc: dst="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4582
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "isInDaylightTime":Z
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "tzId":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private getEINFO(I)V
    .locals 4
    .param p1, "eventId"    # I

    .prologue
    .line 4897
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AT+EINFO?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "+EINFO"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 4898
    const-string v0, "getEINFO for EMMRRS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4899
    return-void
.end method

.method private getMobileCountryCode()I
    .locals 5

    .prologue
    .line 4586
    const/4 v1, 0x0

    .line 4588
    .local v1, "mcc":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4589
    .local v2, "operatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4591
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4599
    :cond_0
    :goto_0
    return v1

    .line 4592
    :catch_0
    move-exception v0

    .line 4593
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4594
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 4595
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 2859
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2860
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2862
    if-nez p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2864
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_3

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2865
    :cond_1
    return-object v0

    .line 2862
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2864
    :cond_3
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getPhoneInstanceCount()I
    .locals 1

    .prologue
    .line 781
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 784
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    goto :goto_0
.end method

.method private getReceivedNitz()Z
    .locals 2

    .prologue
    .line 5149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReceivedNitz : mPhone.getPhoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5150
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5151
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-boolean v0, v0, v1

    .line 5155
    :goto_0
    return v0

    .line 5152
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5153
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 5155
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method private getSIMOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3062
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3066
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_1

    .line 3067
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3070
    .local v1, "mccmnc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3071
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 3072
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3073
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get MCC/MNC from IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3079
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSimType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimType : mPhone.getPhoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5176
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    .line 5180
    :goto_0
    return-object v0

    .line 5177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5178
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 5180
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getTimeZonesByMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4626
    const/4 v1, 0x0

    .line 4628
    .local v1, "tz":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4629
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4630
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v1, v2, v4

    .line 4631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uses Timezone of GsmSST by mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4635
    :cond_0
    return-object v1

    .line 4628
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4606
    const/4 v1, 0x0

    .line 4609
    .local v1, "tz":Ljava/util/TimeZone;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    if-nez v2, :cond_2

    .line 4610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4611
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4612
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uses TimeZone of Capital City:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4621
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-object v1

    .line 4610
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4618
    .end local v0    # "i":I
    :cond_2
    const-string v2, "don\'t udpate with capital city, cause we have received nitz"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private handlePsRegNotification(II)V
    .locals 7
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4836
    const/4 v0, 0x0

    .line 4837
    .local v0, "hasGprsAttached":Z
    const/4 v1, 0x0

    .line 4838
    .local v1, "hasGprsDetached":Z
    const/4 v2, 0x0

    .line 4840
    .local v2, "specificNotify":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mPsRegState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4843
    if-eqz p1, :cond_6

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v5, :cond_6

    move v0, v3

    .line 4847
    :goto_0
    if-nez p1, :cond_7

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-eqz v5, :cond_7

    move v1, v3

    .line 4851
    :goto_1
    if-eqz v0, :cond_0

    .line 4852
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4853
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastPSRegisteredPLMN= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4855
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4858
    :cond_0
    if-eqz v1, :cond_1

    .line 4859
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4863
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-eqz v5, :cond_8

    if-nez p2, :cond_8

    move v0, v3

    .line 4867
    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v5, :cond_9

    if-eqz p2, :cond_9

    move v1, v3

    .line 4872
    :goto_3
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 4876
    const/4 v2, 0x1

    .line 4877
    const-string v3, "need to compensate for notifying"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4880
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 4881
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4882
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastPSRegisteredPLMN= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4886
    :cond_4
    if-eqz v1, :cond_5

    .line 4887
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4890
    :cond_5
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 4891
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4892
    return-void

    :cond_6
    move v0, v4

    .line 4843
    goto/16 :goto_0

    :cond_7
    move v1, v4

    .line 4847
    goto/16 :goto_1

    :cond_8
    move v0, v4

    .line 4863
    goto :goto_2

    :cond_9
    move v1, v4

    .line 4867
    goto :goto_3
.end method

.method private handleRauEventNotification(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5245
    const/4 v0, 0x0

    .line 5247
    .local v0, "hadPlmnChanged":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_3

    .line 5253
    :cond_2
    const/4 v0, 0x1

    .line 5257
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNeedNotifyRacChanged:Z

    if-eqz v2, :cond_5

    .line 5258
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleRauEventNotification] hadPlmnChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsNeedNotifyRacChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNeedNotifyRacChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5261
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_NETWORK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5263
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "eventType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5264
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5265
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNeedNotifyRacChanged:Z

    .line 5267
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private isAllowCancelSpecialCardTypeNotification()Z
    .locals 3

    .prologue
    .line 5185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5186
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has inserted SIM!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5188
    const/4 v1, 0x0

    .line 5192
    :goto_1
    return v1

    .line 5185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5191
    :cond_1
    const-string v1, "Cancel special card type notification allowed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5192
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAllowFixTimeZone()Z
    .locals 3

    .prologue
    .line 3558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3559
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 3560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has received NITZ!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3561
    const/4 v1, 0x0

    .line 3565
    :goto_1
    return v1

    .line 3558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3564
    :cond_1
    const-string v1, "Fix time zone allowed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3565
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 4445
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4446
    const-string v1, "[isAllowRecoveryOnIvsr] isInCall()=true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4448
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4449
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4450
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4451
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4452
    const/4 v1, 0x0

    .line 4455
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    .line 4454
    :cond_0
    const-string v1, "isAllowRecoveryOnIvsr() return true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4455
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCurrentPhoneDataConnectionOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4910
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 4911
    .local v0, "defaultDataSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    invoke-static {v4, v5, v0, v2}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 4914
    .local v1, "userDataEnabled":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userDataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultDataSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4915
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 4917
    :goto_1
    return v2

    .end local v1    # "userDataEnabled":Z
    :cond_0
    move v1, v3

    .line 4911
    goto :goto_0

    .restart local v1    # "userDataEnabled":Z
    :cond_1
    move v2, v3

    .line 4917
    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    .line 2851
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSvlteMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5023
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5032
    :cond_0
    :goto_0
    return v1

    .line 5027
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    .line 5028
    .local v0, "phoneId":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 5030
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOp01Support()Z
    .locals 2

    .prologue
    .line 5285
    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5286
    .local v0, "optr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5287
    const/4 v1, 0x1

    .line 5289
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 3219
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3220
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:array@config_operatorConsideredNonRoaming#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3223
    .local v4, "numericArray":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorConsideredNonRoaming operatorNumeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",legnth= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3225
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 3236
    :cond_0
    :goto_0
    return v6

    .line 3229
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3230
    .local v3, "numeric":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorConsideredNonRoaming numeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3232
    const-string v6, "isOperatorConsideredNonRoaming return true"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3233
    const/4 v6, 0x1

    goto :goto_0

    .line 3229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 3240
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3241
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:array@config_sameNamedOperatorConsideredRoaming#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3244
    .local v4, "numericArray":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorConsideredRoaming operatorNumeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",legnth= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3246
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 3257
    :cond_0
    :goto_0
    return v6

    .line 3250
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3251
    .local v3, "numeric":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOperatorConsideredRoaming numeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3253
    const-string v6, "isOperatorConsideredRoaming return true"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3254
    const/4 v6, 0x1

    goto :goto_0

    .line 3250
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3170
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 3174
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 3175
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 3178
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v6

    .line 3179
    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v6

    .line 3181
    .local v1, "equalsOnss":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSameNamedOperators(): onsl="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",onss="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",spn="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    return v6

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_1
    move v0, v7

    .line 3178
    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_2
    move v1, v7

    .line 3179
    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_3
    move v6, v7

    .line 3183
    goto :goto_2
.end method

.method private static isUiccCard()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4989
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4990
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "GsmSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUiccCard cardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4992
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 4993
    const-string v4, "USIM"

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4994
    const-string v3, "GsmSST"

    const-string v4, "isUiccCard: contain USIM"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    const/4 v3, 0x1

    .line 4999
    :goto_1
    return v3

    .line 4992
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4998
    :cond_1
    const-string v4, "GsmSST"

    const-string v5, "isUiccCard: not contain USIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private needResumeModem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5278
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5279
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5281
    :cond_1
    return v0
.end method

.method private notifyServiceStateChanged()V
    .locals 2

    .prologue
    .line 5036
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceStateChanged mLteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5038
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v0, :cond_0

    .line 5039
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V

    .line 5040
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 5046
    :cond_0
    :goto_0
    return-void

    .line 5043
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting ServiceState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5044
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private notifySignalStrengthChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x1

    .line 5049
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGSMSignalStrengthResult mLteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v0, :cond_0

    .line 5052
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrength(Landroid/os/AsyncResult;Z)V

    .line 5053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->onGSMSignalStrengthResult(Landroid/telephony/SignalStrength;)Z

    .line 5058
    :cond_0
    :goto_0
    return-void

    .line 5056
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto :goto_0
.end method

.method private onFemtoCellInfoResult(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 4216
    const/4 v10, 0x0

    .line 4218
    .local v10, "isCsgCell":I
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 4219
    :cond_0
    const-string v0, "onFemtoCellInfo exception"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4315
    :cond_1
    :goto_0
    return-void

    .line 4221
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    .line 4223
    .local v8, "info":[Ljava/lang/String;
    array-length v0, v8

    if-lez v0, :cond_1

    .line 4225
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4226
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    .line 4227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFemtoCellInfo: mFemtocellDomain set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4230
    :cond_3
    const/4 v0, 0x5

    aget-object v0, v8, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 4231
    const/4 v0, 0x5

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4234
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFemtoCellInfo: domain= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isCsgCell= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4236
    const/4 v0, 0x1

    if-ne v10, v0, :cond_a

    .line 4237
    const/4 v0, 0x6

    aget-object v0, v8, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 4238
    const/4 v0, 0x6

    aget-object v0, v8, v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 4239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFemtoCellInfo: mCsgId set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4242
    :cond_5
    const/16 v0, 0x8

    aget-object v0, v8, v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 4243
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v2, v8, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFemtoCellInfo: mHhbName set from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    aget-object v2, v8, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4254
    :goto_1
    const/4 v0, 0x1

    aget-object v0, v8, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v0, 0x9

    aget-object v0, v8, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 4256
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4257
    .local v12, "state":I
    const/16 v0, 0x9

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4258
    .local v6, "cause":I
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4260
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v0, v12, v6}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIgnoreFemtocellUpdate(II)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 4261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needIgnoreFemtocellUpdate due to state= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",cause= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4265
    :catch_0
    move-exception v7

    .line 4266
    .local v7, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4270
    .end local v6    # "cause":I
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "state":I
    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4271
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4273
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 4274
    const/high16 v0, 0x20000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4277
    :cond_7
    const-string v0, "showSpn"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4278
    const-string v0, "spn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4279
    const-string v0, "showPlmn"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4280
    const-string v0, "plmn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4282
    const-string v0, "hnbName"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    const-string v0, "csgId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    const-string v0, "domain"

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4286
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    .line 4289
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 4290
    .local v3, "plmn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 4291
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4293
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->needToShowCsgId()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 4294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 4308
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v11

    .line 4310
    .local v11, "setResult":Z
    if-nez v11, :cond_1

    .line 4311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    goto/16 :goto_0

    .line 4246
    .end local v1    # "phoneId":I
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "setResult":Z
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4247
    const-string v0, "onFemtoCellInfo: mHhbName is not available ,set to null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4250
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 4251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4252
    const-string v0, "onFemtoCellInfo: csgId and hnbName are cleared"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4297
    .restart local v1    # "phoneId":I
    .restart local v3    # "plmn":Ljava/lang/String;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 4298
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 4301
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 4304
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4337
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4342
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 4343
    .local v0, "InvalidSimInfo":[Ljava/lang/String;
    aget-object v3, v0, v10

    .line 4344
    .local v3, "plmn":Ljava/lang/String;
    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4345
    .local v2, "cs_invalid":I
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4346
    .local v4, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4347
    .local v1, "cause":I
    const/4 v5, -0x1

    .line 4350
    .local v5, "testMode":I
    if-ne v9, v4, :cond_2

    .line 4351
    const-string v6, "ps_invlaid==1 check"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4352
    const-string v6, "gsm.sim.invalidpssim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    :goto_1
    const-string v6, "gsm.gcf.testmode"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInvalidSimInfoReceived testMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cs_invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ps_invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " plmn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mEverIVSR:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4365
    if-eqz v5, :cond_3

    .line 4366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvalidSimInfo received during test mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4354
    :cond_2
    const-string v6, "ps_invlaid!=1 check "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4355
    const-string v6, "gsm.sim.invalidpssim"

    const-string v7, "1000"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4371
    :cond_3
    if-ne v2, v9, :cond_4

    .line 4372
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 4380
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceCapable:Z

    if-eqz v6, :cond_5

    if-eq v2, v9, :cond_6

    :cond_5
    if-ne v4, v9, :cond_7

    :cond_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    if-ne v6, v9, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    if-ne v6, v9, :cond_7

    .line 4381
    const-string v6, "InvalidSimInfo reset SIM due to cs_invalid block for in processing..."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4385
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceCapable:Z

    if-eqz v6, :cond_8

    if-eq v2, v9, :cond_9

    :cond_8
    if-ne v4, v9, :cond_0

    .line 4386
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvalidSimInfo reset SIM due to cs_invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ps_invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4388
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    if-nez v6, :cond_c

    if-ne v2, v9, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    if-ne v4, v9, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 4390
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSimPower()V

    goto/16 :goto_0

    .line 4391
    :cond_c
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    if-ne v6, v9, :cond_0

    .line 4392
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->delayDoIvsr()V

    goto/16 :goto_0
.end method

.method private onNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 4026
    const/4 v6, -0x1

    .line 4027
    .local v6, "state":I
    const/4 v5, -0x1

    .line 4028
    .local v5, "lac":I
    const/4 v2, -0x1

    .line 4029
    .local v2, "cid":I
    const/4 v0, -0x1

    .line 4030
    .local v0, "Act":I
    const/4 v1, -0x1

    .line 4034
    .local v1, "cause":I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 4035
    :cond_0
    const-string v7, "onNetworkStateChangeResult exception"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4142
    :cond_1
    :goto_0
    return-void

    .line 4037
    :cond_2
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v4, v7

    check-cast v4, [Ljava/lang/String;

    .line 4039
    .local v4, "info":[Ljava/lang/String;
    array-length v7, v4

    if-lez v7, :cond_13

    .line 4041
    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4043
    aget-object v7, v4, v9

    if-eqz v7, :cond_3

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 4044
    aget-object v7, v4, v9

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4047
    :cond_3
    aget-object v7, v4, v10

    if-eqz v7, :cond_6

    aget-object v7, v4, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 4049
    aget-object v7, v4, v10

    const-string v8, "FFFFFFFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v4, v10

    const-string v8, "ffffffff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4050
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4051
    const-string v7, "0000ffff"

    aput-object v7, v4, v10

    .line 4053
    :cond_5
    aget-object v7, v4, v10

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 4058
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    if-ne v5, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    if-eq v2, v7, :cond_8

    .line 4059
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7, v5, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4060
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 4063
    :cond_8
    aget-object v7, v4, v11

    if-eqz v7, :cond_9

    aget-object v7, v4, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 4064
    aget-object v7, v4, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4067
    :cond_9
    aget-object v7, v4, v12

    if-eqz v7, :cond_a

    aget-object v7, v4, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 4068
    aget-object v7, v4, v12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4071
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNetworkStateChangeResult state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Act:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cause:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4074
    const-string v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 4076
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    invoke-interface {v7, v8, v6, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIgnoredState(III)Z

    move-result v7

    if-ne v7, v9, :cond_10

    .line 4079
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNetworkStateChangeResult isCsInvalidCard:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4080
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    if-nez v7, :cond_1

    .line 4081
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-nez v7, :cond_b

    .line 4082
    const-string v7, "start"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->broadcastHideNetworkState(Ljava/lang/String;I)V

    .line 4084
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_f

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_f

    .line 4087
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4100
    :catch_0
    move-exception v3

    .line 4101
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4103
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-nez v7, :cond_c

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    if-nez v7, :cond_c

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4106
    const-string v7, "Force Poll SignalStrength ECSQ, Only Once Here"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4107
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x74

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 4108
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    .line 4113
    :cond_c
    const/4 v7, -0x1

    if-eq v5, v7, :cond_e

    const/4 v7, -0x1

    if-eq v2, v7, :cond_e

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    if-ne v7, v9, :cond_e

    .line 4115
    const v7, 0xfffe

    if-eq v5, v7, :cond_d

    const v7, 0xfffffff

    if-ne v2, v7, :cond_12

    .line 4117
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4126
    :cond_e
    :goto_2
    const-string v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4129
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needRejectCauseNotification(I)Z

    move-result v7

    if-ne v7, v9, :cond_1

    .line 4130
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRejectCauseNotification(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4132
    :catch_1
    move-exception v3

    .line 4133
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 4089
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_f
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 4090
    const-string v7, "Force dontUpdateNetworkStateFlag = false"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4095
    :cond_10
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-ne v7, v9, :cond_11

    .line 4096
    const-string v7, "stop"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->broadcastHideNetworkState(Ljava/lang/String;I)V

    .line 4098
    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4121
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNewCellLoc Updated, lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4122
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7, v5, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto :goto_2

    .line 4138
    :cond_13
    const-string v7, "onNetworkStateChangeResult length zero"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4781
    if-nez p1, :cond_0

    .line 4832
    :goto_0
    return-void

    .line 4791
    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 4792
    :cond_1
    const-string v4, "onPsNetworkStateChangeResult exception"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4794
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    .line 4795
    .local v0, "info":[I
    aget v4, v0, v6

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v3

    .line 4796
    .local v3, "newUrcState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPsRegState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4798
    aget v4, v0, v6

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 4800
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    .line 4802
    const-string v4, "set flag for ever detach, may notify attach later"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4803
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4807
    :cond_3
    aget v1, v0, v7

    .line 4808
    .local v1, "newUrcLac":I
    const/4 v4, 0x2

    aget v2, v0, v4

    .line 4810
    .local v2, "newUrcRac":I
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 4812
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcLac:I

    .line 4813
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcRac:I

    .line 4826
    :cond_4
    :goto_1
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 4827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,mPsRegState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,mPsRegStateRaw:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,newUrcLac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,newUrcRac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4814
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 4817
    if-lez v1, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcLac:I

    if-ne v1, v4, :cond_7

    :cond_6
    if-lez v2, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcRac:I

    if-eq v2, v4, :cond_4

    .line 4820
    :cond_7
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcLac:I

    .line 4821
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsUrcRac:I

    .line 4822
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNeedNotifyRacChanged:Z

    goto :goto_1
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2916
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 2918
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2920
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 2921
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 2922
    .local v0, "ints":[I
    aget v2, v0, v4

    .line 2924
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_8

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2928
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_b

    .line 2929
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_9

    :cond_2
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2932
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_a

    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 2947
    :cond_3
    :goto_3
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2949
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2950
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2951
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2966
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2967
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2969
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3014
    :cond_6
    :goto_5
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3016
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3017
    return-void

    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_8
    move v3, v4

    .line 2924
    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 2929
    goto :goto_1

    :cond_a
    move v3, v4

    .line 2932
    goto :goto_2

    .line 2935
    :cond_b
    const-string v3, "IccCard state Not ready "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2936
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_c

    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_c

    .line 2939
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2942
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    .line 2943
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    goto/16 :goto_3

    .line 2952
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2953
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v3, v3, v4

    if-eqz v3, :cond_e

    .line 2954
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    goto :goto_4

    .line 2956
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2957
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2970
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2972
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 2973
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2975
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2977
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2979
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2981
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2982
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2984
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2985
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2987
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2989
    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2991
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2993
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2994
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2996
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2997
    :cond_16
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2999
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3002
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3004
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3005
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3007
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3008
    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3010
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5
.end method

.method private pollStateDone()V
    .locals 50

    .prologue
    .line 2360
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_0

    .line 2361
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "] newSS=["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "]"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " oldMaxDataCalls="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mNewMaxDataCalls="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " oldReasonDataDenied="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mNewReasonDataDenied="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2371
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1

    .line 2372
    const-string v46, "send screen state OFF to restore format of CREG"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2373
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/telephony/CommandsInterface;->getDisplayState()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lcom/android/internal/telephony/CommandsInterface;->sendScreenState(Z)V

    .line 2383
    :cond_1
    sget-boolean v46, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v46, :cond_2

    const-string v46, "telephony.test.forceRoaming"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2388
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-eqz v46, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_5

    const/16 v16, 0x1

    .line 2395
    .local v16, "hasDataRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-eqz v46, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_6

    const/16 v24, 0x1

    .line 2399
    .local v24, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-eqz v46, :cond_7

    const/16 v19, 0x1

    .line 2403
    .local v19, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-eqz v46, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_8

    const/16 v20, 0x1

    .line 2407
    .local v20, "hasGprsAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-eqz v46, :cond_9

    const/16 v21, 0x1

    .line 2411
    .local v21, "hasGprsDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_a

    const/4 v15, 0x1

    .line 2414
    .local v15, "hasDataRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_b

    const/16 v28, 0x1

    .line 2418
    .local v28, "hasVoiceRegStateChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_c

    const/16 v27, 0x1

    .line 2423
    .local v27, "hasRilVoiceRegStateChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_d

    const/16 v26, 0x1

    .line 2426
    .local v26, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_e

    const/16 v25, 0x1

    .line 2429
    .local v25, "hasRilDataRadioTechnologyChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_f

    const/4 v14, 0x1

    .line 2431
    .local v14, "hasChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v46

    if-eqz v46, :cond_10

    const/16 v30, 0x1

    .line 2433
    .local v30, "hasVoiceRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v46

    if-eqz v46, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v46

    if-nez v46, :cond_11

    const/16 v29, 0x1

    .line 2435
    .local v29, "hasVoiceRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v46

    if-nez v46, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v46

    if-eqz v46, :cond_12

    const/16 v18, 0x1

    .line 2437
    .local v18, "hasDataRoamingOn":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v46

    if-eqz v46, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v46

    if-nez v46, :cond_13

    const/16 v17, 0x1

    .line 2439
    .local v17, "hasDataRoamingOff":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_14

    const/16 v23, 0x1

    .line 2441
    .local v23, "hasLocationChanged":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_15

    const/16 v22, 0x1

    .line 2443
    .local v22, "hasLacChanged":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v46

    const-string v47, "phone"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    .line 2446
    .local v39, "tm":Landroid/telephony/TelephonyManager;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone,hasRegistered:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasDeregistered:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasGprsAttached:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasRilVoiceRadioTechnologyChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasRilDataRadioTechnologyChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasVoiceRegStateChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasDataRegStateChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasVoiceRoamingOn:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasVoiceRoamingOff:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasDataRoamingOn:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasDataRoamingOff:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasLocationChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",hasLacChanged:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",sReceiveNitz:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getReceivedNitz()Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2456
    if-nez v28, :cond_3

    if-eqz v15, :cond_4

    .line 2457
    :cond_3
    const v46, 0xc3c2

    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2464
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oppoCheckNoService(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v46

    if-eqz v46, :cond_16

    .line 2468
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->oppoUpdateCurrentRat(I)V

    .line 2470
    const-string v46, "If oppoCheckNoService is true, need update Current Rat to UNKNOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    :goto_11
    return-void

    .line 2391
    .end local v14    # "hasChanged":Z
    .end local v15    # "hasDataRegStateChanged":Z
    .end local v16    # "hasDataRegistered":Z
    .end local v17    # "hasDataRoamingOff":Z
    .end local v18    # "hasDataRoamingOn":Z
    .end local v19    # "hasDeregistered":Z
    .end local v20    # "hasGprsAttached":Z
    .end local v21    # "hasGprsDetached":Z
    .end local v22    # "hasLacChanged":Z
    .end local v23    # "hasLocationChanged":Z
    .end local v24    # "hasRegistered":Z
    .end local v25    # "hasRilDataRadioTechnologyChanged":Z
    .end local v26    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v27    # "hasRilVoiceRegStateChanged":Z
    .end local v28    # "hasVoiceRegStateChanged":Z
    .end local v29    # "hasVoiceRoamingOff":Z
    .end local v30    # "hasVoiceRoamingOn":Z
    .end local v39    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2395
    .restart local v16    # "hasDataRegistered":Z
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2399
    .restart local v24    # "hasRegistered":Z
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2403
    .restart local v19    # "hasDeregistered":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2407
    .restart local v20    # "hasGprsAttached":Z
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 2411
    .restart local v21    # "hasGprsDetached":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 2414
    .restart local v15    # "hasDataRegStateChanged":Z
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 2418
    .restart local v28    # "hasVoiceRegStateChanged":Z
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 2423
    .restart local v27    # "hasRilVoiceRegStateChanged":Z
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 2426
    .restart local v26    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 2429
    .restart local v25    # "hasRilDataRadioTechnologyChanged":Z
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 2431
    .restart local v14    # "hasChanged":Z
    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_b

    .line 2433
    .restart local v30    # "hasVoiceRoamingOn":Z
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 2435
    .restart local v29    # "hasVoiceRoamingOff":Z
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 2437
    .restart local v18    # "hasDataRoamingOn":Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 2439
    .restart local v17    # "hasDataRoamingOff":Z
    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_f

    .line 2441
    .restart local v23    # "hasLocationChanged":Z
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_10

    .line 2471
    .restart local v22    # "hasLacChanged":Z
    .restart local v39    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v13

    .line 2472
    .local v13, "ex":Ljava/lang/Exception;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "If oppoCheckNoService is true, need update Current Rat to UNKNOWN ex:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_11

    .line 2477
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oppoCheckSignal(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    .line 2483
    if-eqz v26, :cond_18

    .line 2484
    const/4 v9, -0x1

    .line 2485
    .local v9, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v32, v0

    .line 2486
    .local v32, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v32, :cond_17

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    .line 2491
    :cond_17
    const v46, 0xc3cb

    const/16 v47, 0x3

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2494
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_18

    .line 2495
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "RAT switched "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " -> "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " at cell "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2504
    .end local v9    # "cid":I
    .end local v32    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    .line 2505
    .local v40, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2506
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2509
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v46

    if-eqz v46, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v46, v0

    if-eqz v46, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v46

    if-eqz v46, :cond_19

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateGsmCdmaServiceState(Landroid/telephony/ServiceState;I)V

    .line 2514
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v37, v0

    .line 2515
    .local v37, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2516
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 2519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 2521
    if-eqz v26, :cond_1a

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 2525
    :cond_1a
    if-eqz v25, :cond_1b

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move-object/from16 v0, v39

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 2530
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v46

    if-nez v46, :cond_1c

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 2534
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    if-nez v46, :cond_1d

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 2541
    :cond_1d
    if-nez v24, :cond_1e

    if-eqz v16, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1f

    .line 2543
    const-string v46, "InvalidSimInfo set TRM due to CS or PS invalid reset for ss changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2544
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetIvsrState()V

    .line 2548
    :cond_1f
    if-eqz v24, :cond_21

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 2551
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "mLastRegisteredPLMN= "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2553
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_20

    .line 2554
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " changing to false"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2557
    :cond_20
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2560
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_23

    .line 2564
    if-nez v14, :cond_22

    .line 2566
    const-string v46, "explict_update_spn trigger to refresh SPN"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2569
    :cond_22
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 2572
    :cond_23
    if-eqz v14, :cond_25

    .line 2575
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v36

    .line 2583
    .local v36, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    .line 2584
    .local v35, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2588
    if-eqz v35, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNumeric(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_2e

    .line 2589
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_24

    const-string v46, "operatorNumeric is Invalid value, don\'t update timezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2743
    :cond_24
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v47

    move-object/from16 v0, v39

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2747
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V

    .line 2751
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IS_OEM_SMOOTH:Z

    if-nez v46, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    .line 2769
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v36    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePsRegNotification(II)V

    .line 2771
    if-nez v15, :cond_26

    if-eqz v25, :cond_27

    .line 2772
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 2773
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v46

    if-eqz v46, :cond_44

    .line 2774
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "only psPhone notify data psPhone="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    invoke-static/range {v47 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 2783
    :cond_27
    :goto_13
    if-eqz v30, :cond_28

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2787
    :cond_28
    if-eqz v29, :cond_29

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2791
    :cond_29
    if-eqz v18, :cond_2a

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2795
    :cond_2a
    if-eqz v17, :cond_45

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2818
    :cond_2b
    :goto_14
    if-eqz v23, :cond_2c

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 2822
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v46

    if-nez v46, :cond_48

    .line 2823
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v46, v0

    if-nez v46, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v46, v0

    if-nez v46, :cond_2d

    .line 2824
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "gprs_register_check_period_ms"

    const v48, 0xea60

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2830
    .local v8, "check_period":I
    const/16 v46, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    int-to-long v0, v8

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2838
    .end local v8    # "check_period":I
    :cond_2d
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleRauEventNotification(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    goto/16 :goto_11

    .line 2590
    .restart local v35    # "operatorNumeric":Ljava/lang/String;
    .restart local v36    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_2e
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_30

    .line 2591
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_2f

    const-string v46, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2592
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    const-string v47, ""

    move-object/from16 v0, v39

    move/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 2595
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2596
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    goto/16 :goto_12

    .line 2598
    :cond_30
    const-string v31, ""

    .line 2599
    .local v31, "iso":Ljava/lang/String;
    const-string v33, ""

    .line 2601
    .local v33, "mcc":Ljava/lang/String;
    const/16 v46, 0x0

    const/16 v47, 0x3

    :try_start_1
    move-object/from16 v0, v35

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 2602
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v31

    .line 2609
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 2610
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2612
    const/16 v44, 0x0

    .line 2614
    .local v44, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v46, v0

    if-nez v46, :cond_33

    const-string v46, "000"

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_33

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v46

    if-eqz v46, :cond_33

    .line 2618
    const-string v46, "telephony.test.ignore.nitz"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    const-wide/16 v48, 0x1

    and-long v46, v46, v48

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_37

    const/16 v38, 0x1

    .line 2622
    .local v38, "testOneUniqueOffsetPath":Z
    :goto_17
    invoke-static/range {v31 .. v31}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v41

    .line 2623
    .local v41, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_31

    if-eqz v38, :cond_38

    .line 2624
    :cond_31
    const/16 v46, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "zone":Ljava/util/TimeZone;
    check-cast v44, Ljava/util/TimeZone;

    .line 2625
    .restart local v44    # "zone":Ljava/util/TimeZone;
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_32

    .line 2626
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with zone.getID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " testOneUniqueOffsetPath="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2630
    :cond_32
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2652
    .end local v38    # "testOneUniqueOffsetPath":Z
    .end local v41    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_33
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_24

    .line 2657
    const-string v46, "persist.sys.timezone"

    invoke-static/range {v46 .. v46}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2658
    .local v45, "zoneName":Ljava/lang/String;
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_34

    .line 2659
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\' mZoneOffset="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mZoneDst="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " iso-cc=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\' iso-cc-idx="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2665
    :cond_34
    const-string v46, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v46, v0

    if-eqz v46, :cond_3b

    .line 2668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v44

    .line 2669
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_35

    const-string v46, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2729
    :cond_35
    :goto_19
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2731
    if-eqz v44, :cond_43

    .line 2732
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2733
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v46

    if-eqz v46, :cond_36

    .line 2734
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2736
    :cond_36
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2603
    .end local v44    # "zone":Ljava/util/TimeZone;
    .end local v45    # "zoneName":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 2604
    .local v13, "ex":Ljava/lang/NumberFormatException;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2605
    .end local v13    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v13

    .line 2606
    .local v13, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2618
    .end local v13    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v44    # "zone":Ljava/util/TimeZone;
    :cond_37
    const/16 v38, 0x0

    goto/16 :goto_17

    .line 2633
    .restart local v38    # "testOneUniqueOffsetPath":Z
    .restart local v41    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_38
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_3a

    .line 2634
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "uniqueZones.size="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " iso= "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2635
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v44

    .line 2636
    if-eqz v44, :cond_39

    .line 2637
    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2639
    :cond_39
    const-string v46, "Can\'t find time zone for capital city"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2643
    :cond_3a
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_33

    .line 2644
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: there are "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " testOneUniqueOffsetPath="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\', do nothing"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2670
    .end local v38    # "testOneUniqueOffsetPath":Z
    .end local v41    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v45    # "zoneName":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    if-nez v46, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v46, v0

    if-nez v46, :cond_42

    if-eqz v45, :cond_42

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v46

    if-lez v46, :cond_42

    sget-object v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v46

    if-gez v46, :cond_42

    .line 2684
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v44

    .line 2688
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowFixTimeZone()Z

    move-result v46

    if-eqz v46, :cond_3d

    .line 2690
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesByMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2691
    .local v34, "mccTz":Ljava/lang/String;
    if-nez v34, :cond_3c

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v34

    .line 2693
    :cond_3c
    if-eqz v34, :cond_3d

    .line 2694
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v44

    .line 2695
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_3d

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: try to fixTimeZone mcc:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mccTz:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " zone.getID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v44 .. v44}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2704
    .end local v34    # "mccTz":Ljava/lang/String;
    :cond_3d
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v46, v0

    if-eqz v46, :cond_40

    .line 2707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2708
    .local v10, "ctm":J
    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v42, v0

    .line 2709
    .local v42, "tzOffset":J
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_3e

    .line 2710
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: tzOffset="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " ltod="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2713
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v46

    if-eqz v46, :cond_41

    .line 2714
    sub-long v6, v10, v42

    .line 2715
    .local v6, "adj":J
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_3f

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: adj ltod="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2717
    :cond_3f
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2723
    .end local v6    # "adj":J
    .end local v10    # "ctm":J
    .end local v42    # "tzOffset":J
    :cond_40
    :goto_1b
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_35

    const-string v46, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2698
    :catch_3
    move-exception v12

    .line 2699
    .local v12, "e":Ljava/lang/Exception;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pollStateDone: parse error: mcc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2720
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "ctm":J
    .restart local v42    # "tzOffset":J
    :cond_41
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v46, v0

    sub-long v46, v46, v42

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_1b

    .line 2725
    .end local v10    # "ctm":J
    .end local v42    # "tzOffset":J
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v48, v0

    move/from16 v0, v46

    move/from16 v1, v47

    move-wide/from16 v2, v48

    move-object/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v44

    .line 2726
    sget-boolean v46, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v46, :cond_35

    const-string v46, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2738
    :cond_43
    const-string v46, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2779
    .end local v31    # "iso":Ljava/lang/String;
    .end local v33    # "mcc":Ljava/lang/String;
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v36    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v44    # "zone":Ljava/util/TimeZone;
    .end local v45    # "zoneName":Ljava/lang/String;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2797
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v46

    const/16 v47, 0x5

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_47

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v46

    const/16 v47, 0x5

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v46, v0

    if-nez v46, :cond_2b

    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    move/from16 v46, v0

    const/16 v47, 0x5

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2b

    .line 2807
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "recover setup data for roaming off. OldDataRegState:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " NewDataRegState:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " NewRoamingState:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " NewDataRoamingState:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " PsRegState:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2812
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 2813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v46

    if-nez v46, :cond_2b

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_14

    .line 2834
    :cond_48
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_15
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 2891
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 2906
    :goto_0
    return-void

    .line 2899
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2900
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2905
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 14
    .param p1, "code"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 3088
    const/4 v4, 0x0

    .line 3089
    .local v4, "isRoaming":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3090
    .local v7, "strHomePlmn":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 3091
    .local v8, "strServingPlmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3092
    .local v5, "isServingPlmnInGroup":Z
    const/4 v3, 0x0

    .line 3093
    .local v3, "isHomePlmnInGroup":Z
    const/4 v2, 0x0

    .line 3095
    .local v2, "ignoreDomesticRoaming":Z
    const-string v10, "ro.mtk_bsp_package"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3097
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v10, v8, v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 3156
    :goto_0
    return v9

    .line 3102
    :catch_0
    move-exception v0

    .line 3103
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3107
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v10, 0x5

    if-ne v10, p1, :cond_1

    .line 3108
    const/4 v4, 0x1

    .line 3112
    :cond_1
    const-string v10, "ro.mtk_bsp_package"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3114
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v10}, Lcom/mediatek/common/telephony/IServiceStateExt;->ignoreDomesticRoaming()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 3120
    :cond_2
    :goto_1
    if-ne v2, v9, :cond_3

    if-ne v4, v9, :cond_3

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 3121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ServingPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " HomePlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3123
    const-string v10, "Same MCC,don\'t set as roaming"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3124
    const/4 v4, 0x0

    .line 3129
    :cond_3
    if-ne v4, v9, :cond_7

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    .line 3130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strServingPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " strHomePlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    array-length v10, v10

    if-ge v1, v10, :cond_7

    .line 3134
    const/4 v5, 0x0

    .line 3135
    const/4 v3, 0x0

    .line 3138
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v10, v10, v1

    array-length v10, v10

    if-ge v6, v10, :cond_6

    .line 3139
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v10, v10, v1

    aget-object v10, v10, v6

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3140
    const/4 v5, 0x1

    .line 3142
    :cond_4
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v10, v10, v1

    aget-object v10, v10, v6

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3143
    const/4 v3, 0x1

    .line 3138
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3115
    .end local v1    # "i":I
    .end local v6    # "j":I
    :catch_1
    move-exception v0

    .line 3116
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .line 3148
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "i":I
    .restart local v6    # "j":I
    :cond_6
    if-ne v5, v9, :cond_8

    if-ne v3, v9, :cond_8

    .line 3149
    const/4 v4, 0x0

    .line 3150
    const-string v9, "Ignore roaming"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v1    # "i":I
    .end local v6    # "j":I
    :cond_7
    move v9, v4

    .line 3156
    goto/16 :goto_0

    .line 3132
    .restart local v1    # "i":I
    .restart local v6    # "j":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private regCodeToRegState(I)I
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 3047
    packed-switch p1, :pswitch_data_0

    .line 3057
    .end local p1    # "code":I
    :goto_0
    :pswitch_0
    return p1

    .line 3049
    .restart local p1    # "code":I
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 3051
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 3053
    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    .line 3055
    :pswitch_4
    const/4 p1, 0x4

    goto :goto_0

    .line 3047
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3021
    packed-switch p1, :pswitch_data_0

    .line 3040
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3041
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 3033
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 3037
    goto :goto_0

    .line 3021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resetIvsrState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5297
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 5298
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 5300
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIvsrCtr:I

    .line 5301
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    .line 5302
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    .line 5303
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3636
    const-string v0, "[NITZ]:revertToNitz,AUTO_TIME is 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3647
    :cond_0
    :goto_0
    return-void

    .line 3639
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_2

    .line 3640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3643
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 3644
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3676
    :cond_0
    :goto_0
    return-void

    .line 3656
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getReceivedNitz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3657
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3658
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 3665
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowFixTimeZone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3666
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->fixTimeZone()V

    .line 3667
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to fixed TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3668
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 3675
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Do nothing since other phone has received NITZ, but this phone didn\'t"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3592
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveNitzTime: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3593
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 3594
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 3595
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveNitzTimeZone zoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3588
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3589
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3625
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3626
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3628
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3629
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3630
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3631
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3604
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3605
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3607
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 3608
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3609
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3610
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3611
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3612
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v2, :cond_1

    .line 3613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3616
    :cond_1
    return-void
.end method

.method private setEINFO(ILandroid/os/Message;)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 4902
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 4903
    .local v0, "Cmd":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+EINFO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4904
    const/4 v1, 0x1

    const-string v2, "+EINFO"

    aput-object v2, v0, v1

    .line 4905
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 4906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEINFO for EMMRRS, ATCmd[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4907
    return-void
.end method

.method private setNotification(I)V
    .locals 0
    .param p1, "notifyType"    # I

    .prologue
    .line 3755
    return-void
.end method

.method private setNullState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2258
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 2259
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2260
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2261
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2263
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 2264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    .line 2266
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 2267
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, v2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 2270
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 2272
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 2273
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 2275
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 2276
    return-void
.end method

.method private setReceivedNitz(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "receivedNitz"    # Z

    .prologue
    .line 5136
    const/4 v0, 0x0

    .line 5137
    .local v0, "index":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 5138
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 5144
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReceivedNitz : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5145
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    aput-boolean p2, v1, v0

    .line 5146
    return-void

    .line 5139
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 5140
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 5142
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private setRejectCauseNotification(I)V
    .locals 10
    .param p1, "cause"    # I

    .prologue
    .line 4466
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRejectCauseNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4468
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4469
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4470
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, #android:drawable@stat_sys_warning#t

    iput v7, v6, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4477
    const-string v1, ""

    .line 4478
    .local v1, "details":Ljava/lang/CharSequence;
    const v6, 0x8050067

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4479
    .local v5, "title":Ljava/lang/CharSequence;
    const/16 v3, 0x37a

    .line 4481
    .local v3, "notificationId":I
    sparse-switch p1, :sswitch_data_0

    .line 4501
    :goto_0
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRejectCauseNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4502
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4503
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4506
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 4509
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4510
    return-void

    .line 4483
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :sswitch_0
    const v6, 0x8050068

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4484
    goto :goto_0

    .line 4486
    :sswitch_1
    const v6, 0x8050069

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4487
    goto :goto_0

    .line 4489
    :sswitch_2
    const v6, 0x8050070

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4490
    goto :goto_0

    .line 4492
    :sswitch_3
    const v6, 0x8050071

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4493
    goto :goto_0

    .line 4495
    :sswitch_4
    const v6, 0x8050075

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4496
    goto :goto_0

    .line 4481
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 2254
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2255
    return-void
.end method

.method private setSimPower()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x75300

    const/16 v6, 0x78

    .line 5335
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5336
    const-string v3, "InvalidSimInfo set TRM due to CS or PS invalid block for in calling"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5337
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->delayDoIvsr()V

    .line 5339
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 5340
    .local v1, "msg0":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 5341
    invoke-virtual {p0, v1, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5355
    .end local v1    # "msg0":Landroid/os/Message;
    :goto_0
    return-void

    .line 5345
    :cond_0
    const-string v3, "InvalidSimInfo reset SIM due to CS or PS invalid first time,delay 5s for MT"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5346
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 5347
    .local v2, "msg1":Landroid/os/Message;
    const/16 v3, 0x77

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5348
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5350
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    .line 5352
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5353
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 5354
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setSimType(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "simType"    # Ljava/lang/String;

    .prologue
    .line 5161
    const/4 v0, 0x0

    .line 5162
    .local v0, "index":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 5163
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 5169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimType : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5170
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 5171
    return-void

    .line 5164
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 5165
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 5167
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private setSpecialCardTypeNotification(Ljava/lang/String;II)V
    .locals 10
    .param p1, "iccCardType"    # Ljava/lang/String;
    .param p2, "titleType"    # I
    .param p3, "detailType"    # I

    .prologue
    .line 4519
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSpecialCardTypeNotification: create notification for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4522
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4523
    .local v0, "context":Landroid/content/Context;
    const/16 v3, 0x22c7

    .line 4525
    .local v3, "notificationId":I
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4526
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, #android:drawable@stat_sys_warning#t

    iput v7, v6, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4534
    const-string v5, ""

    .line 4535
    .local v5, "title":Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 4543
    :goto_0
    const-string v1, ""

    .line 4544
    .local v1, "details":Ljava/lang/CharSequence;
    packed-switch p3, :pswitch_data_1

    .line 4552
    :goto_1
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSpecialCardTypeNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4553
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4554
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4557
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 4560
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4561
    return-void

    .line 4537
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_0
    const v6, 0x8050097

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4538
    goto :goto_0

    .line 4546
    .restart local v1    # "details":Ljava/lang/CharSequence;
    :pswitch_1
    const v6, 0x8050098

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4547
    goto :goto_1

    .line 4535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 4544
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 34
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oemNoCheckNIZ()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 3555
    :goto_0
    return-void

    .line 3384
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 3385
    .local v22, "start":J
    sget-boolean v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v28, :cond_1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " start="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " delay="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v22, p2

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3392
    :cond_1
    :try_start_0
    const-string v28, "GMT"

    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 3394
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 3395
    const/16 v28, 0x10

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3397
    const-string v28, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 3399
    .local v19, "nitzSubs":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v26, v0

    .line 3400
    .local v26, "year":I
    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3403
    const/16 v28, 0x1

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v18, v28, -0x1

    .line 3404
    .local v18, "month":I
    const/16 v28, 0x2

    move/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3406
    const/16 v28, 0x2

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3407
    .local v7, "date":I
    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 3409
    const/16 v28, 0x3

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3410
    .local v12, "hour":I
    const/16 v28, 0xa

    move/from16 v0, v28

    invoke-virtual {v6, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 3412
    const/16 v28, 0x4

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3413
    .local v15, "minute":I
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v6, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 3415
    const/16 v28, 0x5

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 3416
    .local v20, "second":I
    const/16 v28, 0xd

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3418
    const/16 v28, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    .line 3420
    .local v21, "sign":Z
    :goto_1
    const/16 v28, 0x6

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 3423
    .local v24, "tzOffset":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    const/16 v28, 0x7

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3437
    .local v8, "dst":I
    :goto_2
    if-eqz v21, :cond_a

    const/16 v28, 0x1

    :goto_3
    mul-int v28, v28, v24

    mul-int/lit8 v28, v28, 0xf

    mul-int/lit8 v28, v28, 0x3c

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    .line 3439
    const/16 v27, 0x0

    .line 3445
    .local v27, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 3446
    const/16 v28, 0x8

    aget-object v28, v19, v28

    const/16 v29, 0x21

    const/16 v30, 0x2f

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    .line 3447
    .local v25, "tzname":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 3448
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[NITZ] setTimeFromNITZString,tzname:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " zone:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3451
    .end local v25    # "tzname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "phone"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v14

    .line 3455
    .local v14, "iso":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[NITZ] setTimeFromNITZString,mGotCountryCode:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3457
    if-nez v27, :cond_3

    .line 3459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 3460
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_c

    .line 3461
    if-eqz v8, :cond_b

    const/16 v28, 0x1

    :goto_4
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move/from16 v0, v24

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3, v14}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 3474
    :cond_3
    :goto_5
    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v29, v0

    if-eqz v8, :cond_e

    const/16 v28, 0x1

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 3479
    :cond_4
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3480
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 3481
    if-eqz v8, :cond_f

    const/16 v28, 0x1

    :goto_7
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 3482
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    .line 3488
    :cond_5
    if-eqz v27, :cond_7

    .line 3489
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 3490
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3492
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 3495
    :cond_7
    const-string v28, "gsm.ignore-nitz"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3496
    .local v13, "ignore":Ljava/lang/String;
    if-eqz v13, :cond_10

    const-string v28, "yes"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 3497
    const-string v28, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3552
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v12    # "hour":I
    .end local v13    # "ignore":Ljava/lang/String;
    .end local v14    # "iso":Ljava/lang/String;
    .end local v15    # "minute":I
    .end local v18    # "month":I
    .end local v19    # "nitzSubs":[Ljava/lang/String;
    .end local v20    # "second":I
    .end local v21    # "sign":Z
    .end local v24    # "tzOffset":I
    .end local v26    # "year":I
    .end local v27    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v9

    .line 3553
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ex="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3418
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v12    # "hour":I
    .restart local v15    # "minute":I
    .restart local v18    # "month":I
    .restart local v19    # "nitzSubs":[Ljava/lang/String;
    .restart local v20    # "second":I
    .restart local v26    # "year":I
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 3423
    .restart local v21    # "sign":Z
    .restart local v24    # "tzOffset":I
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getMobileCountryCode()I

    move-result v28

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDstForMcc(IJ)I

    move-result v8

    goto/16 :goto_2

    .line 3437
    .restart local v8    # "dst":I
    :cond_a
    const/16 v28, -0x1

    goto/16 :goto_3

    .line 3461
    .restart local v14    # "iso":Ljava/lang/String;
    .restart local v27    # "zone":Ljava/util/TimeZone;
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 3469
    :cond_c
    if-eqz v8, :cond_d

    const/16 v28, 0x1

    :goto_8
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    goto/16 :goto_5

    :cond_d
    const/16 v28, 0x0

    goto :goto_8

    .line 3474
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 3481
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 3502
    .restart local v13    # "ignore":Ljava/lang/String;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3504
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 3505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v16, v28, p2

    .line 3508
    .local v16, "millisSinceNitzReceived":J
    const-wide/16 v28, 0x0

    cmp-long v28, v16, v28

    if-gez v28, :cond_12

    .line 3510
    sget-boolean v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v28, :cond_11

    .line 3511
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3550
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3518
    :cond_12
    const-wide/32 v28, 0x7fffffff

    cmp-long v28, v16, v28

    if-lez v28, :cond_14

    .line 3520
    :try_start_4
    sget-boolean v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v28, :cond_13

    .line 3521
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/32 v30, 0x5265c00

    div-long v30, v16, v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " days"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3550
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 3529
    :cond_14
    const/16 v28, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v29, v0

    :try_start_6
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3531
    sget-boolean v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v28, :cond_15

    .line 3532
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: Setting time of day to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " NITZ receive delay(ms): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " gained(ms): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v30, v30, v32

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " from "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3539
    :cond_15
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3540
    const-string v28, "GsmSST"

    const-string v29, "NITZ: after Setting time of day"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    .end local v16    # "millisSinceNitzReceived":J
    :cond_16
    const-string v28, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 3545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 3546
    .local v10, "end":J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NITZ: end="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " dur="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v10, v22

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3548
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3550
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v10    # "end":J
    :catchall_0
    move-exception v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v28
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private updateLocatedPlmn(Ljava/lang/String;)V
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 4174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocatedPlmn(),previous plmn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,update to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4176
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4179
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4180
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4181
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4183
    :cond_3
    const-string v3, "plmn"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4185
    if-eqz p1, :cond_6

    .line 4188
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4189
    .local v2, "mcc":I
    const-string v3, "iso"

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4197
    .end local v2    # "mcc":I
    :goto_0
    const-string v3, "persist.radio.autoratswitch"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4198
    const-string v3, "updateLocatedPlmn: framework auto RAT switch disabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4207
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v1, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4208
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4211
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 4212
    return-void

    .line 4190
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4191
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocatedPlmn: countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4192
    const-string v3, "iso"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4193
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 4194
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocatedPlmn: countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4195
    const-string v3, "iso"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4200
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 4201
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    goto :goto_1

    .line 4204
    :cond_6
    const-string v3, "iso"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateNetworkInfo(II)V
    .locals 4
    .param p1, "newRegState"    # I
    .param p2, "newNetworkType"    # I

    .prologue
    const/4 v3, 0x1

    .line 4943
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getDisplayState()I

    move-result v0

    .line 4945
    .local v0, "displayState":I
    const/4 v1, 0x0

    .line 4946
    .local v1, "isRegisted":Z
    if-eq p1, v3, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 4948
    :cond_0
    const/4 v1, 0x1

    .line 4966
    :goto_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_4

    if-ne v0, v3, :cond_4

    .line 4969
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, p2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 4983
    :cond_2
    :goto_1
    return-void

    .line 4950
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 4970
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_5

    .line 4973
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    if-nez v2, :cond_2

    .line 4974
    const-string v2, "send screen state ON to change format of CREG"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4975
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 4976
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendScreenState(Z)V

    .line 4977
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_1

    .line 4979
    :cond_5
    if-ne v0, v3, :cond_2

    if-eqz v1, :cond_2

    .line 4980
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 4981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Voice network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "oriOperatorLong"    # Ljava/lang/String;
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oriOperatorLong= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5206
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 5208
    .local v3, "phoneNum":I
    new-array v0, v3, [I

    .line 5210
    .local v0, "cardType":[I
    const-string v5, ""

    .line 5211
    .local v5, "strOperatorOverride":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5213
    .local v1, "isCdma4GSim":Z
    if-eqz p2, :cond_4

    const-string v7, "45403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "45404"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5214
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 5215
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v2

    .line 5216
    .local v2, "phoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_POLL_STATE_OPERATOR, phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5217
    aget v6, v0, v2

    .line 5219
    .local v6, "targetCardType":I
    and-int/lit8 v7, v6, 0x4

    if-gtz v7, :cond_1

    and-int/lit8 v7, v6, 0x8

    if-lez v7, :cond_2

    :cond_1
    and-int/lit8 v7, v6, 0x2

    if-lez v7, :cond_2

    .line 5222
    const/4 v1, 0x1

    .line 5225
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v4

    .line 5226
    .local v4, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5227
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5230
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetCardType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " strOperatorOverride= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCdma4GSim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5234
    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 5235
    move-object p1, v5

    .line 5239
    .end local v0    # "cardType":[I
    .end local v1    # "isCdma4GSim":Z
    .end local v2    # "phoneId":I
    .end local v3    # "phoneNum":I
    .end local v4    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v5    # "strOperatorOverride":Ljava/lang/String;
    .end local v6    # "targetCardType":I
    :cond_4
    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 738
    const-string v1, "ServiceStateTracker dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 743
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 747
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_2
    :goto_0
    const-string v1, "ro.mtk_femto_cell_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForFemtoCellInfo(Landroid/os/Handler;)V

    .line 763
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 766
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 767
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "No isImeiLocked"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3823
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3824
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3857
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 771
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 772
    :cond_0
    return-void
.end method

.method protected fixTimeZone()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4640
    const/4 v6, 0x0

    .line 4641
    .local v6, "zone":Ljava/util/TimeZone;
    const-string v1, ""

    .line 4642
    .local v1, "iso":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4643
    .local v3, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4646
    .local v2, "mcc":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4649
    const/4 v9, 0x3

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4656
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4661
    :goto_0
    const-string v9, "000"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4664
    const-string v9, "telephony.test.ignore.nitz"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_5

    move v4, v7

    .line 4668
    .local v4, "testOneUniqueOffsetPath":Z
    :goto_1
    invoke-static {v1}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4669
    .local v5, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v7, :cond_0

    if-eqz v4, :cond_6

    .line 4670
    :cond_0
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "zone":Ljava/util/TimeZone;
    check-cast v6, Ljava/util/TimeZone;

    .line 4671
    .restart local v6    # "zone":Ljava/util/TimeZone;
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v7, :cond_1

    .line 4672
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixTimeZone: no nitz but one TZ for iso-cc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with zone.getID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " testOneUniqueOffsetPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4676
    :cond_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4698
    .end local v4    # "testOneUniqueOffsetPath":Z
    .end local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2
    :goto_2
    if-eqz v6, :cond_8

    .line 4699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixTimeZone: zone != null zone.getID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4700
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4701
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4703
    :cond_3
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 4707
    :goto_3
    return-void

    .line 4651
    :cond_4
    const-string v7, "fixTimeZone but not registered and operatorNumeric is null or invalid value"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 4657
    :catch_0
    move-exception v0

    .line 4658
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fixTimeZone countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    move v4, v8

    .line 4664
    goto/16 :goto_1

    .line 4679
    .restart local v4    # "testOneUniqueOffsetPath":Z
    .restart local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v7, :cond_7

    .line 4680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uniqueZones.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4681
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 4683
    if-eqz v6, :cond_2

    .line 4684
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_2

    .line 4689
    :cond_7
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v7, :cond_2

    .line 4690
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fixTimeZone: there are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unique offsets for iso-cc=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " testOneUniqueOffsetPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', do nothing"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4705
    .end local v4    # "testOneUniqueOffsetPath":Z
    .end local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_8
    const-string v7, "fixTimeZone: zone == null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 13

    .prologue
    const v12, 0x7fffffff

    .line 3304
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_2

    .line 3305
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3306
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 3364
    :cond_1
    :goto_0
    return-object v6

    .line 3308
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 3309
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_8

    .line 3322
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 3323
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 3324
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_4

    move-object v3, v7

    .line 3325
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 3326
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 3327
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3329
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3330
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret GSM info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3332
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_5

    move-object v5, v7

    .line 3333
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 3334
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 3335
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3337
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3338
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret WCDMA info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3340
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_5
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_3

    :cond_6
    move-object v4, v7

    .line 3343
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 3344
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 3345
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v12, :cond_3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v12, :cond_3

    .line 3347
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3349
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3350
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_3

    .line 3351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): possible LTE cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3356
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_7
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_1

    .line 3357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret best answer cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3361
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v10, :cond_9

    .line 3362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3364
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 3266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    return-object v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 796
    const-string v24, "GsmSST"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Received message "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] while being destroyed. Ignoring."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 1197
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1200
    :cond_2
    :goto_1
    const-string v24, "handleMessage msg done"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :sswitch_0
    const-string v24, "handle EVENT_RADIO_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 804
    const-string v24, "ro.mtk_bsp_package"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 805
    const-string v24, "not BSP package, notify!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioAvailable(I)V

    goto :goto_1

    .line 814
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 815
    const-string v24, "handle EVENT_SIM_READY"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, #android:bool@skip_restoring_network_selection#t

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 818
    .local v19, "skipRestoringSelection":Z
    sget-boolean v24, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v24, :cond_3

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "skipRestoringSelection="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 819
    :cond_3
    if-nez v19, :cond_4

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 823
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_1

    .line 828
    .end local v19    # "skipRestoringSelection":Z
    :sswitch_2
    const-string v24, "handle EVENT_RADIO_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 830
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MTK propiertary Power on flow, setRadioPower:  mDesiredPowerState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  phoneId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 840
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 843
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 837
    :cond_6
    const-string v24, "BSP package but use MTK Power on flow"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_2

    .line 846
    :sswitch_3
    const-string v24, "handle EVENT_NETWORK_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 848
    .local v4, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 852
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const-string v24, "handle EVENT_PS_NETWORK_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 854
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 859
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const-string v24, "handle EVENT_GET_SIGNAL_STRENGTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 866
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 867
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_7

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v25, v0

    new-instance v26, Landroid/telephony/SignalStrength;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/SignalStrength;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 872
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifySignalStrengthChanged(Landroid/os/AsyncResult;)V

    .line 874
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_1

    .line 879
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string v24, "handle EVENT_GET_LOC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 881
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    .line 882
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v20, v24

    check-cast v20, [Ljava/lang/String;

    .line 883
    .local v20, "states":[Ljava/lang/String;
    const/4 v11, -0x1

    .line 884
    .local v11, "lac":I
    const/4 v6, -0x1

    .line 885
    .local v6, "cid":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 887
    const/16 v24, 0x1

    :try_start_0
    aget-object v24, v20, v24

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 888
    const/16 v24, 0x1

    aget-object v24, v20, v24

    const/16 v25, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 890
    :cond_8
    const/16 v24, 0x2

    aget-object v24, v20, v24

    if-eqz v24, :cond_9

    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_9

    .line 891
    const/16 v24, 0x2

    aget-object v24, v20, v24

    const/16 v25, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 897
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 902
    .end local v6    # "cid":I
    .end local v11    # "lac":I
    .end local v20    # "states":[Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_1

    .line 893
    .restart local v6    # "cid":I
    .restart local v11    # "lac":I
    .restart local v20    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 894
    .local v10, "ex":Ljava/lang/NumberFormatException;
    const-string v24, "GsmSST"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "error parsing location: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 908
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "cid":I
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v11    # "lac":I
    .end local v20    # "states":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 909
    const-string v24, "handle EVENT_POLL_STATE_REGISTRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 917
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 918
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 910
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 911
    const-string v24, "handle EVENT_POLL_STATE_GPRS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 912
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 913
    const-string v24, "handle EVENT_POLL_STATE_OPERATOR"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 915
    :cond_d
    const-string v24, "handle EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 921
    :sswitch_8
    const-string v24, "handle EVENT_POLL_SIGNAL_STRENGTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 931
    :sswitch_9
    const-string v24, "handle EVENT_NITZ_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 933
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/Object;

    check-cast v24, [Ljava/lang/Object;

    const/16 v25, 0x0

    aget-object v16, v24, v25

    check-cast v16, Ljava/lang/String;

    .line 934
    .local v16, "nitzString":Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/Object;

    check-cast v24, [Ljava/lang/Object;

    const/16 v25, 0x1

    aget-object v24, v24, v25

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 935
    .local v14, "nitzReceiveTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 940
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "nitzReceiveTime":J
    .end local v16    # "nitzString":Ljava/lang/String;
    :sswitch_a
    const-string v24, "handle EVENT_SIGNAL_STRENGTH_UPDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 944
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 945
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v25, v0

    new-instance v26, Landroid/telephony/SignalStrength;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/SignalStrength;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 950
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifySignalStrengthChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 954
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v24, "handle EVENT_SIM_RECORDS_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V

    goto/16 :goto_1

    .line 967
    :sswitch_c
    const-string v24, "handle EVENT_LOCATION_UPDATES_ENABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 970
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0xf

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 975
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const-string v24, "handle EVENT_SET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 978
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v24, 0x15

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 979
    .local v13, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 982
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "message":Landroid/os/Message;
    :sswitch_e
    const-string v24, "handle EVENT_RESET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 984
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 985
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 987
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 991
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string v24, "handle EVENT_GET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 993
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_f

    .line 994
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x0

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 998
    :goto_5
    const/16 v24, 0x14

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 999
    .restart local v13    # "message":Landroid/os/Message;
    const/16 v22, 0x7

    .line 1000
    .local v22, "toggledNetworkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 996
    .end local v13    # "message":Landroid/os/Message;
    .end local v22    # "toggledNetworkType":I
    :cond_f
    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_5

    .line 1003
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string v24, "handle EVENT_CHECK_REPORT_GPRS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v24

    if-nez v24, :cond_10

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v12

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    .line 1009
    .local v12, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v25, 0xc3bb

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v24

    const/16 v27, 0x1

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v24

    :goto_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v26, v27

    invoke-static/range {v25 .. v26}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1011
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1013
    .end local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_10
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_1

    .line 1009
    .restart local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_11
    const/16 v24, -0x1

    goto :goto_6

    .line 1018
    .end local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_11
    const-string v24, "handle EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1019
    sget-boolean v24, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v24, :cond_12

    const-string v24, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1021
    :cond_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1022
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1025
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string v24, "handle EVENT_ALL_DATA_DISCONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    .line 1027
    .local v8, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1028
    monitor-enter p0

    .line 1029
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1030
    sget-boolean v24, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v24, :cond_13

    const-string v24, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1031
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 1032
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1036
    :goto_7
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v24

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 1034
    :cond_14
    :try_start_2
    const-string v24, "EVENT_ALL_DATA_DISCONNECTED is stale"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 1039
    .end local v8    # "dds":I
    :sswitch_13
    const-string v24, "handle EVENT_CHANGE_IMS_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_1

    .line 1043
    :sswitch_14
    const-string v24, "handle EVENT_INVALID_SIM_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1045
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1048
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const-string v24, "handle EVENT_IMEI_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1049
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    goto/16 :goto_1

    .line 1052
    :sswitch_16
    const-string v24, "handle EVENT_ICC_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1054
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 1055
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1056
    .local v18, "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1058
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1059
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1060
    const-string v24, "Reset mLastRegisteredPLMN and mLastPSRegisteredPLMN"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1065
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :sswitch_17
    const-string v24, "handle EVENT_ENABLE_EMMRRS_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1067
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_15

    .line 1068
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v7, v24

    check-cast v7, [Ljava/lang/String;

    .line 1069
    .local v7, "data":[Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ENABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v7, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1070
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ENABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v7, v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1071
    const/16 v24, 0x0

    aget-object v24, v7, v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1072
    .local v17, "oldValue":I
    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    .line 1073
    .local v23, "value":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ENABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1074
    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    .line 1075
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V

    .line 1078
    .end local v7    # "data":[Ljava/lang/String;
    .end local v17    # "oldValue":I
    .end local v23    # "value":I
    :cond_15
    const-string v24, "EVENT_ENABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1081
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    const-string v24, "handle EVENT_DISABLE_EMMRRS_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1083
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_16

    .line 1084
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v7, v24

    check-cast v7, [Ljava/lang/String;

    .line 1085
    .restart local v7    # "data":[Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_DISABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v7, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1086
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_DISABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v7, v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1089
    const/16 v24, 0x0

    :try_start_3
    aget-object v24, v7, v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1090
    .restart local v17    # "oldValue":I
    const v24, 0xff7f

    and-int v23, v17, v24

    .line 1091
    .restart local v23    # "value":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_DISABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1092
    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    .line 1093
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1099
    .end local v7    # "data":[Ljava/lang/String;
    .end local v17    # "oldValue":I
    .end local v23    # "value":I
    :cond_16
    :goto_8
    const-string v24, "EVENT_DISABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1095
    .restart local v7    # "data":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1096
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected einfo value : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 1102
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :sswitch_19
    const-string v24, "handle EVENT_FEMTO_CELL_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1104
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onFemtoCellInfoResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1107
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const-string v24, "handle EVENT_IMS_REGISTRATION_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1110
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string v24, "persist.ims.simulate"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1111
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    const/16 v25, 0x1

    :goto_9
    aput v25, v24, v26

    .line 1112
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Override EVENT_IMS_REGISTRATION_INFO: new mImsRegInfo="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v26, 0x0

    aget v24, v24, v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1117
    :cond_17
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x1

    aget v24, v24, v25

    if-lez v24, :cond_18

    .line 1118
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    .line 1120
    :cond_18
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ImsRegistrationInfoResult ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegInfo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1111
    :cond_19
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 1123
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v24, "handle EVENT_REG_SUSPENDED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1125
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x0

    aget v21, v24, v25

    .line 1126
    .local v21, "suspendId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x73

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v21

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1129
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "suspendId":I
    :sswitch_1c
    const-string v24, "handle EVENT_RESUME_CAMPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1135
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1136
    .local v5, "arscreen":Landroid/os/AsyncResult;
    if-eqz v5, :cond_1b

    .line 1137
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsScreenOn:Z

    .line 1143
    :goto_a
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeCount:I

    .line 1146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsScreenOn:Z

    move/from16 v24, v0

    if-nez v24, :cond_1c

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeSmoothMessage()V

    .line 1149
    const-string v24, "ro.mtk_bsp_package"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 1151
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1152
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1153
    const/16 v24, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1178
    :cond_1a
    :goto_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "leon EVENT_OEM_SCREEN_CHANGED:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsScreenOn:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1139
    :cond_1b
    const-string v24, "leon EVENT_OEM_SCREEN_CHANGED error"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 1156
    :catch_2
    move-exception v9

    .line 1157
    .local v9, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_b

    .line 1163
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_1c
    const-string v24, "set explict_update_spn = 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1164
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 1165
    const-string v24, "ro.mtk_bsp_package"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 1167
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1168
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1169
    const/16 v24, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 1172
    :catch_3
    move-exception v9

    .line 1173
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_b

    .line 1185
    .end local v5    # "arscreen":Landroid/os/AsyncResult;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :sswitch_1e
    const-string v24, "handle EVENT_DO_IVSR"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1187
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->doIvsr()V

    goto/16 :goto_1

    .line 1190
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1f
    const-string v24, "handle EVENT_CLEAR_FORCE_IVSR"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1192
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetIvsrState()V

    goto/16 :goto_1

    .line 800
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_0
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_b
        0x11 -> :sswitch_1
        0x12 -> :sswitch_c
        0x13 -> :sswitch_f
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x2d -> :sswitch_13
        0x65 -> :sswitch_14
        0x66 -> :sswitch_4
        0x67 -> :sswitch_15
        0x68 -> :sswitch_18
        0x69 -> :sswitch_17
        0x6a -> :sswitch_16
        0x6b -> :sswitch_19
        0x70 -> :sswitch_1a
        0x72 -> :sswitch_1b
        0x73 -> :sswitch_1c
        0x74 -> :sswitch_5
        0x77 -> :sswitch_1e
        0x78 -> :sswitch_1f
        0x96 -> :sswitch_1d
        0x3e9 -> :sswitch_12
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 36
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1847
    const/16 v18, -0x1

    .line 1848
    .local v18, "psLac":I
    const/16 v17, -0x1

    .line 1852
    .local v17, "psCid":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 1853
    const-string v31, "handlePollStateResult return due to (ar.userObj != mPollingContext)"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 1858
    const/4 v10, 0x0

    .line 1860
    .local v10, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 1861
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/CommandException;

    check-cast v31, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v10

    .line 1864
    :cond_2
    sget-object v31, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v31

    if-ne v10, v0, :cond_3

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    .line 1867
    const-string v31, "handlePollStateResult cancelPollState due to RADIO_NOT_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1871
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v31

    if-nez v31, :cond_4

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    .line 1874
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "handlePollStateResult cancelPollState due to mCi.getRadioState()= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_4
    sget-object v31, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v31

    if-eq v10, v0, :cond_5

    .line 1879
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2136
    .end local v10    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v33, v31, v32

    add-int/lit8 v33, v33, -0x1

    aput v33, v31, v32

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    if-nez v31, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2144
    const/16 v31, 0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2145
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    .line 2152
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v31

    if-nez v31, :cond_7

    .line 2155
    const-string v31, "update cellLoc by +CGREG"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 2172
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2c

    :cond_8
    const/16 v23, 0x1

    .line 2173
    .local v23, "roaming":Z
    :goto_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "set raoming to"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2d

    :cond_9
    const/16 v31, 0x1

    :goto_3
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ",mGsmRoaming= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ",mDataRoaming= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2176
    const/4 v13, 0x0

    .line 2177
    .local v13, "isRoamingForSpecialSim":Z
    const-string v31, "ro.mtk_bsp_package"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 2179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/mediatek/common/telephony/IServiceStateExt;->isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v31

    if-eqz v31, :cond_a

    .line 2182
    const/4 v13, 0x1

    .line 2189
    :cond_a
    :goto_4
    if-nez v13, :cond_d

    .line 2190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v31

    if-nez v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v31

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2192
    :cond_b
    const-string v31, "set raoming fasle due to special roaming agreements and MVNO\'s."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2193
    const/16 v23, 0x0

    .line 2196
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2e

    .line 2197
    const/16 v23, 0x0

    .line 2203
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2206
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1883
    .end local v13    # "isRoamingForSpecialSim":Z
    .end local v23    # "roaming":Z
    :cond_e
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1885
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1886
    .local v25, "states":[Ljava/lang/String;
    const/4 v15, -0x1

    .line 1887
    .local v15, "lac":I
    const/4 v7, -0x1

    .line 1888
    .local v7, "cid":I
    const/16 v30, 0x0

    .line 1889
    .local v30, "type":I
    const/16 v21, 0x4

    .line 1890
    .local v21, "regState":I
    const/16 v20, -0x1

    .line 1891
    .local v20, "reasonRegStateDenied":I
    const/16 v19, -0x1

    .line 1892
    .local v19, "psc":I
    const/16 v22, -0x1

    .line 1893
    .local v22, "rejCause":I
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v31, :cond_16

    .line 1895
    const/16 v31, 0x0

    :try_start_2
    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1896
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_14

    .line 1897
    const/16 v31, 0x1

    aget-object v31, v25, v31

    if-eqz v31, :cond_10

    const/16 v31, 0x1

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_10

    .line 1899
    const/16 v31, 0x1

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    .line 1900
    .local v29, "tempLac":I
    if-gez v29, :cond_f

    .line 1901
    const-string v31, "set Lac to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v29

    .line 1904
    :cond_f
    move/from16 v15, v29

    .line 1907
    .end local v29    # "tempLac":I
    :cond_10
    const/16 v31, 0x2

    aget-object v31, v25, v31

    if-eqz v31, :cond_12

    const/16 v31, 0x2

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_12

    .line 1909
    const/16 v31, 0x2

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 1910
    .local v28, "tempCid":I
    if-gez v28, :cond_11

    .line 1911
    const-string v31, "set Cid to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v28

    .line 1914
    :cond_11
    move/from16 v7, v28

    .line 1917
    .end local v28    # "tempCid":I
    :cond_12
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    const/16 v31, 0x3

    aget-object v31, v25, v31

    if-eqz v31, :cond_13

    const/16 v31, 0x3

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_13

    .line 1919
    const/16 v31, 0x3

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkInfo(II)V

    .line 1922
    :cond_13
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0xe

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_14

    const/16 v31, 0xd

    aget-object v31, v25, v31

    if-eqz v31, :cond_14

    const/16 v31, 0xd

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_14

    .line 1923
    const/16 v31, 0xd

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRejectCause(I)V

    .line 1925
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "set voice reject cause to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1928
    :cond_14
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0xe

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    .line 1929
    const/16 v31, 0xe

    aget-object v31, v25, v31

    if-eqz v31, :cond_15

    const/16 v31, 0xe

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_15

    .line 1930
    const/16 v31, 0xe

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 1933
    :cond_15
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EVENT_POLL_STATE_REGISTRATION mSS getRilVoiceRadioTechnology:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", regState:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", NewSS RilVoiceRadioTechnology:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", lac:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", cid:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1943
    :cond_16
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRegState(I)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, #android:bool@config_voice_capable#t

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 1949
    .local v14, "isVoiceCapable":Z
    const/16 v31, 0xd

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    const/16 v31, 0xa

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    const/16 v31, 0xc

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    const/16 v31, 0xe

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    :cond_17
    if-eqz v14, :cond_1a

    .line 1954
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1958
    :goto_7
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "regState = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "isVoiceCapable = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "mEmergencyOnly = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1962
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_19

    .line 1963
    const-string v31, "states.length > 3"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1966
    const v31, 0xfffe

    move/from16 v0, v31

    if-eq v15, v0, :cond_18

    const v31, 0xfffffff

    move/from16 v0, v31

    if-ne v7, v0, :cond_1b

    .line 1968
    :cond_18
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "unknown lac:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " or cid:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1978
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2132
    .end local v7    # "cid":I
    .end local v14    # "isVoiceCapable":Z
    .end local v15    # "lac":I
    .end local v19    # "psc":I
    .end local v20    # "reasonRegStateDenied":I
    .end local v21    # "regState":I
    .end local v22    # "rejCause":I
    .end local v25    # "states":[Ljava/lang/String;
    .end local v30    # "type":I
    :catch_0
    move-exception v11

    .line 2133
    .local v11, "ex":Ljava/lang/RuntimeException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1938
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    .restart local v7    # "cid":I
    .restart local v15    # "lac":I
    .restart local v19    # "psc":I
    .restart local v20    # "reasonRegStateDenied":I
    .restart local v21    # "regState":I
    .restart local v22    # "rejCause":I
    .restart local v25    # "states":[Ljava/lang/String;
    .restart local v30    # "type":I
    :catch_1
    move-exception v11

    .line 1939
    .local v11, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "error parsing RegistrationState: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1956
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .restart local v14    # "isVoiceCapable":Z
    :cond_1a
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_7

    .line 1973
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_19

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15, v7}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto :goto_8

    .line 1983
    .end local v7    # "cid":I
    .end local v14    # "isVoiceCapable":Z
    .end local v15    # "lac":I
    .end local v19    # "psc":I
    .end local v20    # "reasonRegStateDenied":I
    .end local v21    # "regState":I
    .end local v22    # "rejCause":I
    .end local v25    # "states":[Ljava/lang/String;
    .end local v30    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1985
    .restart local v25    # "states":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 1986
    .restart local v30    # "type":I
    const/16 v21, 0x4

    .line 1987
    .restart local v21    # "regState":I
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1988
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1989
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v31, :cond_22

    .line 1991
    const/16 v31, 0x0

    :try_start_5
    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1994
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1f

    .line 1995
    const/16 v31, 0x1

    aget-object v31, v25, v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x1

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_1d

    .line 1996
    const/16 v31, 0x1

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    .line 1997
    .restart local v29    # "tempLac":I
    if-gez v29, :cond_1c

    .line 1998
    const-string v31, "set Lac to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v29

    .line 2001
    :cond_1c
    move/from16 v18, v29

    .line 2003
    .end local v29    # "tempLac":I
    :cond_1d
    const/16 v31, 0x2

    aget-object v31, v25, v31

    if-eqz v31, :cond_1f

    const/16 v31, 0x2

    aget-object v31, v25, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_1f

    .line 2004
    const/16 v31, 0x2

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 2005
    .restart local v28    # "tempCid":I
    if-gez v28, :cond_1e

    .line 2006
    const-string v31, "set Cid to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v28

    .line 2009
    :cond_1e
    move/from16 v17, v28

    .line 2015
    .end local v28    # "tempCid":I
    :cond_1f
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_20

    const/16 v31, 0x3

    aget-object v31, v25, v31

    if-eqz v31, :cond_20

    .line 2016
    const/16 v31, 0x3

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2018
    :cond_20
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_21

    const/16 v31, 0x4

    aget-object v31, v25, v31

    if-eqz v31, :cond_21

    const/16 v31, 0x3

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    .line 2019
    const/16 v31, 0x4

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2020
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<mNewReasonDataDenied> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->setDataRejectCause(I)V

    .line 2022
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "set data reject cause to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2024
    :cond_21
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_22

    const/16 v31, 0x5

    aget-object v31, v25, v31

    if-eqz v31, :cond_22

    .line 2025
    const/16 v31, 0x5

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2026
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<mNewMaxDataCalls> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2032
    :cond_22
    :goto_9
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 2033
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRegState(I)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2035
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setProprietaryDataRadioTechnology(I)V

    .line 2041
    sget-boolean v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v31, :cond_5

    .line 2042
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " regState="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " dataRadioTechnology="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2028
    .end local v8    # "dataRegState":I
    :catch_2
    move-exception v11

    .line 2029
    .restart local v11    # "ex":Ljava/lang/NumberFormatException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2050
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .end local v21    # "regState":I
    .end local v25    # "states":[Ljava/lang/String;
    .end local v30    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2052
    .local v16, "opNames":[Ljava/lang/String;
    if-eqz v16, :cond_29

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_29

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v31

    if-eqz v31, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v6

    .line 2056
    .local v6, "brandOverride":Ljava/lang/String;
    :goto_a
    if-eqz v6, :cond_24

    .line 2057
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v32, v16, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v6, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    :goto_b
    const/16 v31, 0x2

    aget-object v31, v16, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2054
    .end local v6    # "brandOverride":Ljava/lang/String;
    :cond_23
    const/4 v6, 0x0

    goto :goto_a

    .line 2060
    .restart local v6    # "brandOverride":Ljava/lang/String;
    :cond_24
    const/16 v26, 0x0

    .line 2061
    .local v26, "strOperatorLong":Ljava/lang/String;
    const/16 v27, 0x0

    .line 2062
    .local v27, "strOperatorShort":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v24

    .line 2064
    .local v24, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x2

    aget-object v34, v16, v34

    const/16 v35, 0x1

    invoke-interface/range {v31 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    .line 2066
    if-eqz v26, :cond_25

    .line 2067
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorLong use lookupOperatorNameFromNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2084
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x2

    aget-object v34, v16, v34

    const/16 v35, 0x0

    invoke-interface/range {v31 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    .line 2086
    if-eqz v27, :cond_27

    .line 2087
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorShort use lookupOperatorNameFromNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2098
    :goto_d
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EVENT_POLL_STATE_OPERATOR: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v32, v16, v32

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2069
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v31

    const/16 v32, 0x2

    aget-object v32, v16, v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v24

    move/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 2071
    if-eqz v26, :cond_26

    .line 2072
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorLong use lookupOperatorName"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2075
    const/16 v31, 0x2

    aget-object v31, v16, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_c

    .line 2080
    :cond_26
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorLong use value from ril"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2081
    const/16 v31, 0x0

    aget-object v26, v16, v31

    goto/16 :goto_c

    .line 2089
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v31

    const/16 v32, 0x2

    aget-object v32, v16, v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v24

    move/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 2091
    if-eqz v27, :cond_28

    .line 2092
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorShort use lookupOperatorName"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2094
    :cond_28
    const-string v31, "EVENT_POLL_STATE_OPERATOR: OperatorShort use value from ril"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2095
    const/16 v31, 0x1

    aget-object v27, v16, v31

    goto/16 :goto_d

    .line 2102
    .end local v6    # "brandOverride":Ljava/lang/String;
    .end local v24    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v26    # "strOperatorLong":Ljava/lang/String;
    .end local v27    # "strOperatorShort":Ljava/lang/String;
    :cond_29
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 2103
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "opNames:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v32, v16, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " len="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const/16 v31, 0x0

    aget-object v31, v16, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2a

    const/16 v31, 0x0

    aget-object v31, v16, v31

    const-string v32, "000000"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2a

    .line 2108
    const/16 v31, 0x0

    aget-object v31, v16, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2110
    :cond_2a
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2117
    .end local v16    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, [I

    move-object/from16 v0, v31

    check-cast v0, [I

    move-object v12, v0

    .line 2118
    .local v12, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    const/16 v31, 0x0

    aget v31, v12, v31

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_2b

    const/16 v31, 0x1

    :goto_e
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2119
    const/16 v31, 0x0

    aget v31, v12, v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v31

    if-nez v31, :cond_5

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2126
    const-string v31, " Forcing Automatic Network Selection, manual selection is not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 2118
    :cond_2b
    const/16 v31, 0x0

    goto :goto_e

    .line 2172
    .end local v12    # "ints":[I
    :cond_2c
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 2173
    .restart local v23    # "roaming":Z
    :cond_2d
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 2184
    .restart local v13    # "isRoamingForSpecialSim":Z
    :catch_3
    move-exception v9

    .line 2185
    .local v9, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    .line 2198
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsRoaming(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 2199
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 1883
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1431
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1434
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3278
    const/4 v0, 0x0

    .line 3279
    .local v0, "isAllowed":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3281
    :cond_0
    const/4 v0, 0x1

    .line 3286
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3287
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    .line 3288
    .local v1, "m":I
    if-ne v1, v3, :cond_2

    .line 3289
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 3293
    .end local v1    # "m":I
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v2, :cond_3

    .line 3294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConcurrentVoiceAndDataAllowed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3296
    :cond_3
    return v0

    .line 3289
    .restart local v1    # "m":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHPlmn(Ljava/lang/String;)Z
    .locals 10
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5082
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 5083
    .local v4, "mccmnc":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 5131
    :cond_0
    :goto_0
    return v5

    .line 5085
    :cond_1
    if-eqz v4, :cond_2

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5086
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHPlmn getSIMOperatorNumeric error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5090
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 5091
    goto :goto_0

    .line 5093
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    .line 5095
    goto :goto_0

    .line 5100
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 5101
    const/4 v2, 0x0

    .line 5102
    .local v2, "isServingPlmnInGroup":Z
    const/4 v1, 0x0

    .line 5104
    .local v1, "isHomePlmnInGroup":Z
    if-eqz p1, :cond_0

    if-nez v4, :cond_0

    .line 5105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_0

    .line 5107
    const/4 v2, 0x0

    .line 5108
    const/4 v1, 0x0

    .line 5111
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v7, v7, v0

    array-length v7, v7

    if-ge v3, v7, :cond_8

    .line 5112
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5113
    const/4 v2, 0x1

    .line 5115
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5116
    const/4 v1, 0x1

    .line 5111
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5121
    :cond_8
    if-ne v2, v6, :cond_9

    if-ne v1, v6, :cond_9

    .line 5123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plmn:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "is in customized ehplmn table"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move v5, v6

    .line 5124
    goto/16 :goto_0

    .line 5105
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4719
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4727
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 4720
    :catch_0
    move-exception v1

    .line 4721
    .local v1, "eNFE":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNumeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4723
    .end local v1    # "eNFE":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 4724
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNumeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPsRegStateRoamByUnsol()Z
    .locals 3

    .prologue
    .line 1344
    const/4 v0, 0x0

    .line 1346
    .local v0, "psRegState":Z
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1347
    const/4 v0, 0x1

    .line 1349
    :cond_0
    return v0
.end method

.method public isSameRadioTechnologyMode(II)Z
    .locals 5
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .prologue
    const/16 v4, 0xf

    const/16 v1, 0xe

    const/16 v3, 0xd

    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 5062
    if-ne p1, v1, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    .line 5075
    :cond_1
    :goto_0
    return v0

    .line 5067
    :cond_2
    if-lt p1, v2, :cond_3

    if-le p1, v3, :cond_4

    :cond_3
    if-ne p1, v4, :cond_6

    :cond_4
    if-lt p2, v2, :cond_5

    if-le p2, v3, :cond_1

    :cond_5
    if-eq p2, v4, :cond_1

    .line 5075
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3813
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3818
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-void
.end method

.method public oemCallStateChange()V
    .locals 4

    .prologue
    const/16 v3, 0x77

    const/4 v2, 0x1

    .line 5370
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    if-nez v1, :cond_1

    .line 5383
    :cond_0
    :goto_0
    return-void

    .line 5374
    :cond_1
    const-string v1, "InvalidSimInfo reset SIM due to CS or PS invalid for oemCallStateChange"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5375
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 5376
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mForceDoIvsr:Z

    .line 5377
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    .line 5379
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5380
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 5381
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected oemIsIVSR()Z
    .locals 1

    .prologue
    .line 5387
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBeginForceDoIvsr:Z

    return v0
.end method

.method public onSetPhoneRCDone(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "phoneRcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/high16 v10, 0x10000

    .line 3976
    const/4 v0, -0x1

    .line 3977
    .local v0, "INVALID":I
    const/4 v7, 0x0

    .line 3978
    .local v7, "size":I
    const/4 v3, 0x0

    .line 3979
    .local v3, "needToChangeNetworkMode":Z
    const/4 v6, 0x0

    .line 3980
    .local v6, "phoneRaf":Landroid/telephony/RadioAccessFamily;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    .line 3981
    .local v2, "myPhoneId":I
    const/4 v5, 0x0

    .line 3982
    .local v5, "newCapability":I
    move v4, v0

    .line 3984
    .local v4, "networkMode":I
    if-nez p1, :cond_1

    .line 4022
    :cond_0
    :goto_0
    return-void

    .line 3985
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3986
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 3987
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "phoneRaf":Landroid/telephony/RadioAccessFamily;
    check-cast v6, Landroid/telephony/RadioAccessFamily;

    .line 3988
    .restart local v6    # "phoneRaf":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v6}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v8

    if-ne v2, v8, :cond_4

    .line 3989
    const/4 v3, 0x1

    .line 3990
    invoke-virtual {v6}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v5

    .line 3995
    :cond_2
    if-eqz v3, :cond_0

    .line 3996
    and-int/lit16 v8, v5, 0x4000

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_5

    .line 3998
    const/16 v4, 0x9

    .line 4010
    :goto_2
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "myPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newCapability="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " networkMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4013
    :cond_3
    if-eq v4, v0, :cond_0

    .line 4019
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    goto :goto_0

    .line 3986
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3999
    :cond_5
    and-int/lit8 v8, v5, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    .line 4001
    const/4 v4, 0x0

    goto :goto_2

    .line 4002
    :cond_6
    and-int v8, v5, v10

    if-ne v8, v10, :cond_7

    .line 4004
    const/4 v4, 0x1

    goto :goto_2

    .line 4006
    :cond_7
    move v4, v0

    .line 4007
    const-string v8, "Error: capability is not define"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onUpdateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3764
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3769
    :cond_1
    const-string v1, "reset ps_invlaid!=1 when update gsm icccard "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3770
    const-string v1, "gsm.sim.invalidpssim"

    const-string v2, "1000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3772
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3774
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 3775
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 3776
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3777
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 3778
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 3779
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3781
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3782
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3785
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRemoveCard:Z

    .line 3786
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lastTime:J

    .line 3787
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3788
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v5}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 3789
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3790
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v5}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 3792
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3795
    :cond_3
    if-eqz v0, :cond_0

    .line 3798
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRemoveCard:Z

    .line 3801
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3802
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3803
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3804
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3805
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 3806
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public pollState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2289
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPreferredNetworkModeSettings(I)I

    move-result v0

    .line 2292
    .local v0, "currentNetworkMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollState RadioState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentNetworkMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2294
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    .line 2295
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aput v4, v1, v4

    .line 2297
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2331
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-ne v1, v3, :cond_0

    .line 2332
    const-string v1, "pollState is ignored!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2357
    :goto_0
    return-void

    .line 2301
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2303
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2304
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2305
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2306
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2308
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNullState()V

    .line 2310
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 2314
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2315
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2316
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2317
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2318
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2320
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNullState()V

    .line 2322
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 2336
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2337
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2341
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2342
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 2346
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2347
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2351
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2352
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 7
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    const/4 v6, -0x1

    .line 3867
    monitor-enter p0

    .line 3868
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v4, :cond_3

    .line 3869
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 3870
    .local v0, "dds":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    .line 3871
    .local v2, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3872
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v2

    .line 3876
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerOffRadioSafely phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhone.getSubId()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3879
    if-eq v0, v6, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v2, :cond_4

    .line 3883
    :cond_1
    const-string v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3884
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3885
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3954
    .end local v0    # "dds":I
    .end local v2    # "phoneSubId":I
    :cond_3
    :goto_0
    monitor-exit p0

    .line 3956
    :goto_1
    return-void

    .line 3888
    .restart local v0    # "dds":I
    .restart local v2    # "phoneSubId":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3889
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3890
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3891
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3894
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3895
    const-string v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3909
    :goto_2
    if-eq v0, v6, :cond_6

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_f

    .line 3912
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3913
    :cond_7
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "Data disconnected (no data sub), turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3915
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3916
    monitor-exit p0

    goto :goto_1

    .line 3954
    .end local v0    # "dds":I
    .end local v2    # "phoneSubId":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3897
    .restart local v0    # "dds":I
    .restart local v2    # "phoneSubId":I
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    .line 3898
    .local v3, "proxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->isDuringIrat()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v5

    if-eq v4, v5, :cond_c

    .line 3900
    :cond_a
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "mPhone is not current Ps Phone, radio off right now"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3901
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3902
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 3903
    monitor-exit p0

    goto/16 :goto_1

    .line 3905
    :cond_c
    const-string v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_2

    .line 3918
    .end local v3    # "proxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    :cond_d
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_e

    const-string v4, "Data is active on.  Wait for all data disconnect"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3919
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v5, 0x3e9

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3921
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 3925
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3926
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_10

    .line 3927
    const-string v4, "Only IMS or EIMS connected, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3930
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3931
    monitor-exit p0

    goto/16 :goto_1

    .line 3934
    :cond_11
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3935
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x26

    iput v4, v1, Landroid/os/Message;->what:I

    .line 3936
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 3943
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3944
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_12

    const-string v4, "Wait upto 5s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3946
    :cond_12
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto/16 :goto_0

    .line 3948
    :cond_13
    const-string v4, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3950
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public refreshSpnDisplay()V
    .locals 7

    .prologue
    .line 1437
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "numeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1439
    .local v0, "newAlphaLong":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1441
    .local v1, "newAlphaShort":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1442
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    if-eqz v0, :cond_0

    .line 1451
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSpnDisplay set alpha to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1456
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1459
    return-void
.end method

.method protected setDeviceRatMode(I)V
    .locals 17
    .param p1, "phoneId"    # I

    .prologue
    .line 1205
    const-string v14, "[setDeviceRatMode]+"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1206
    const/4 v3, 0x0

    .line 1207
    .local v3, "hasCdmaApp":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    .line 1208
    .local v1, "capabilityPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v14

    if-eqz v14, :cond_2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 1210
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCardType(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->containsCdmaApp(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1211
    const-string v14, "[setDeviceRatMode]- hasCdmaApp=true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1212
    const/4 v3, 0x1

    .line 1214
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1215
    .local v4, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v14

    sget-object v15, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v14, v15, :cond_1

    .line 1217
    const-string v14, "[setDeviceRatMode]- SVLTE LTE data only mode, do not set ERAT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1340
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :goto_0
    return-void

    .line 1220
    .restart local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 1221
    const-string v14, "FTA LTE only, do not set ERAT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteProjectType()I

    move-result v6

    .line 1228
    .local v6, "projectType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1230
    .local v8, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    const/16 v14, 0x67

    if-eq v14, v6, :cond_3

    const/4 v14, 0x3

    if-ne v14, v6, :cond_6

    :cond_3
    if-eqz v8, :cond_6

    .line 1233
    const v11, 0x7fffffff

    .line 1234
    .local v11, "subId":I
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v10

    .line 1235
    .local v10, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v12

    .line 1236
    .local v12, "subIds":[I
    if-eqz v12, :cond_4

    .line 1237
    const/4 v14, 0x0

    aget v11, v12, v14

    .line 1239
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setDeviceRatMode, soltId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mGsmRoaming = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", subId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    const-string v15, "46000"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    const-string v15, "46002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    const-string v15, "46007"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    const-string v15, "46008"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v14, :cond_6

    .line 1247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setDeviceRatMode, operator = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preferred_network_mode"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1255
    .end local v10    # "slotId":I
    .end local v11    # "subId":I
    .end local v12    # "subIds":[I
    :cond_6
    const/4 v13, 0x1

    .line 1256
    .local v13, "targetNetworkMode":I
    const/4 v9, -0x1

    .line 1258
    .local v9, "restrictedNwMode":I
    const-string v14, "ro.mtk_bsp_package"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1260
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v14}, Lcom/mediatek/common/telephony/IServiceStateExt;->isSupportRatBalancing()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1261
    const-string v14, "Network Type is controlled by RAT Blancing, no need to set network type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1262
    const-string v14, "[setDeviceRatMode]-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1265
    :catch_0
    move-exception v2

    .line 1266
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1269
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_7
    const-string v14, "ro.telephony.cl.config"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 1270
    const/16 v13, 0x9

    .line 1294
    :cond_8
    :goto_1
    const-string v14, "ro.mtk_bsp_package"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1296
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/mediatek/common/telephony/IServiceStateExt;->needAutoSwitchRatMode(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 1301
    :cond_9
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restrictedNwMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1302
    if-ltz v9, :cond_f

    .line 1303
    if-eq v9, v13, :cond_a

    .line 1304
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Revise targetNetworkMode to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1305
    move v13, v9

    .line 1311
    :cond_a
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetNetworkMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " capcapabilityPhoneId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1314
    if-ltz v13, :cond_12

    .line 1316
    if-eqz v3, :cond_11

    .line 1317
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1319
    .restart local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v14

    sget-object v15, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v14, v15, :cond_10

    .line 1321
    const-string v14, "[setDeviceRatMode]- isRoamingMode=true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v7

    .line 1325
    .local v7, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[setDeviceRatMode]- setRatMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1271
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v7    # "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_b
    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 1272
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPreferredNetworkModeSettings(I)I

    move-result v13

    goto/16 :goto_1

    .line 1275
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPreferredNetworkModeSettings(I)I

    move-result v13

    .line 1276
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v5

    .line 1277
    .local v5, "mCapability":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not major phone, targetNetworkMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mCapability="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1279
    and-int/lit8 v14, v5, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_d

    .line 1281
    const/16 v14, 0x9

    if-ne v13, v14, :cond_8

    .line 1282
    const-string v14, "Set RAT to 3/2G for non-major phoe support 3/2G capability"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1283
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1286
    :cond_d
    if-eqz v13, :cond_e

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    .line 1288
    :cond_e
    const-string v14, "Set RAT to 2G for non-major phoe only support 2G capability"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1289
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1297
    .end local v5    # "mCapability":I
    :catch_1
    move-exception v2

    .line 1298
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_2

    .line 1308
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_f
    const-string v14, "Not major phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1330
    .restart local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_10
    const-string v14, "[setDeviceRatMode]- Not USIM/SIM, do not set ERAT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1335
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x0

    invoke-interface {v14, v13, v15}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1336
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[setDeviceRatMode]- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1338
    :cond_12
    const-string v14, "[setDeviceRatMode]- targetNetworkMode invalid!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setEverIVSR(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEverIVSR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4148
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 4151
    if-ne p1, v3, :cond_1

    .line 4152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4157
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4160
    :cond_0
    const-string v1, "broadcast ACTION_IVSR_NOTIFY intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4162
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4164
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 3959
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 3960
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 3961
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 3963
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3964
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3965
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3966
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 3968
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3973
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 3972
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1355
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_0

    .line 1356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceShuttingDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDesiredPowerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerOffDelayNeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1363
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_2

    .line 1364
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "mAlarmSwitch == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1365
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1366
    .local v1, "context":Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1367
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1368
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1372
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_4

    .line 1375
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v10, v4}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 1377
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1380
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bCheckNoServiceAgain:Z

    .line 1419
    :cond_3
    :goto_0
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    .line 1420
    return-void

    .line 1382
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_b

    .line 1386
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v4, :cond_a

    .line 1387
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-nez v4, :cond_9

    .line 1388
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1389
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1390
    .restart local v1    # "context":Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1392
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 1395
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1396
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "Alarm setting"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1397
    :cond_8
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1400
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1401
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1404
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bCheckNoServiceAgain:Z

    goto :goto_0

    .line 1408
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1409
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1412
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bCheckNoServiceAgain:Z

    goto/16 :goto_0

    .line 1416
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_b
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1417
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2215
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 2217
    .local v2, "isVoiceInService":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2218
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2220
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2221
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 2231
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    .line 2233
    .local v1, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2234
    .local v0, "dataRegType":I
    if-eqz v1, :cond_1

    .line 2235
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2236
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 2251
    :cond_1
    :goto_3
    return-void

    .end local v0    # "dataRegType":I
    .end local v1    # "isDataInService":Z
    .end local v2    # "isVoiceInService":Z
    :cond_2
    move v2, v4

    .line 2215
    goto :goto_0

    .line 2224
    .restart local v2    # "isVoiceInService":Z
    :cond_3
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 2228
    :cond_4
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    :cond_5
    move v1, v4

    .line 2231
    goto :goto_2

    .line 2237
    .restart local v0    # "dataRegType":I
    .restart local v1    # "isDataInService":Z
    :cond_6
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2238
    if-eqz v2, :cond_7

    .line 2240
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2244
    :cond_7
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2248
    :cond_8
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3
.end method

.method public setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 2
    .param p1, "lteSST"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 5014
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .line 5015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteServiceStateTracker mSvlteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5016
    return-void
.end method

.method protected updateCellInfoRate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7fffffff

    .line 4736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCellInfoRate(),mCellInfoRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4737
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eqz v0, :cond_2

    .line 4738
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4739
    const-string v0, "cancel previous timer if any"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4740
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4741
    sput-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 4744
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 4746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule timer with period = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4747
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 4755
    :cond_1
    :goto_0
    return-void

    .line 4748
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-ne v0, v2, :cond_1

    .line 4749
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 4750
    const-string v0, "cancel cell info timer if any"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4751
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4752
    sput-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method protected updateOperatorAlpha(Ljava/lang/String;)I
    .locals 4
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 4923
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    .line 4924
    .local v0, "myPhoneId":I
    if-nez v0, :cond_1

    .line 4925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PROPERTY_OPERATOR_ALPHA to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4926
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4937
    :cond_0
    :goto_0
    return v3

    .line 4927
    :cond_1
    if-ne v0, v3, :cond_2

    .line 4928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PROPERTY_OPERATOR_ALPHA_2 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4929
    const-string v1, "gsm.operator.alpha.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4930
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PROPERTY_OPERATOR_ALPHA_3 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4932
    const-string v1, "gsm.operator.alpha.3"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4933
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PROPERTY_OPERATOR_ALPHA_4 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4935
    const-string v1, "gsm.operator.alpha.4"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 1464
    return-void
.end method

.method protected updateSpnDisplay(Z)V
    .locals 30
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 1467
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateGsmCdmaServiceState(Landroid/telephony/ServiceState;I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getUpdateSvlteSpnPhoneId(I)I

    move-result v29

    .line 1470
    .local v29, "updateSpnPhoneId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    .line 1471
    const-string v2, "ignore updateSpnDisplay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1835
    .end local v29    # "updateSpnPhoneId":I
    :goto_0
    return-void

    .line 1474
    .restart local v29    # "updateSpnPhoneId":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPreUpdateSvlteSpnPhoneId()I

    move-result v2

    move/from16 v0, v29

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getUpdateSvlteSpnSstType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    :cond_1
    const/16 p1, 0x1

    .line 1478
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay, Use GSMSST ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to update spn display, forceUpdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1481
    .end local v29    # "updateSpnPhoneId":I
    :cond_3
    const/16 v26, 0x0

    .line 1482
    .local v26, "simRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1483
    .local v21, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v21, :cond_4

    move-object/from16 v26, v21

    .line 1484
    check-cast v26, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1492
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoGetDisplayRule(Lcom/android/internal/telephony/uicc/IccRecords;Landroid/telephony/ServiceState;)I

    move-result v23

    .line 1494
    .local v23, "rule":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v27

    .line 1495
    .local v27, "strNumPlmn":Ljava/lang/String;
    if-eqz v26, :cond_15

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 1496
    .local v5, "spn":Ljava/lang/String;
    :goto_1
    const/16 v24, 0x0

    .line 1497
    .local v24, "sEons":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1498
    .local v6, "showPlmn":Z
    const/4 v4, 0x0

    .line 1499
    .local v4, "plmn":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1500
    .local v22, "realPlmn":Ljava/lang/String;
    if-eqz v26, :cond_16

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    .line 1529
    .local v19, "mSimOperatorNumeric":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOemRegState(Landroid/telephony/ServiceState;)I

    move-result v14

    .line 1530
    .local v14, "combinedRegState":I
    if-eqz v14, :cond_17

    .line 1531
    const/4 v6, 0x1

    .line 1532
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:string@lockscreen_carrier_default#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1534
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1543
    :cond_5
    :goto_3
    move-object/from16 v22, v4

    .line 1659
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    and-int/lit8 v2, v23, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    const/4 v7, 0x1

    .line 1665
    .local v7, "showSpn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    if-eqz v6, :cond_6

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1669
    :cond_7
    const/4 v5, 0x0

    .line 1670
    const/4 v7, 0x0

    .line 1673
    :cond_8
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1675
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->needSpnRuleShowPlmnOnly()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origin showSpn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    const/4 v7, 0x0

    .line 1681
    const/4 v6, 0x1

    .line 1682
    const/16 v23, 0x2

    .line 1689
    :cond_a
    :goto_5
    const-string v2, "ro.mtk_wfc_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    if-eqz v26, :cond_b

    .line 1693
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getImsRegInfo()Z

    move-result v17

    .line 1695
    .local v17, "imsRegStatus":Z
    const-string v2, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ims Registration Status = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    if-eqz v17, :cond_b

    .line 1697
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;

    move-result-object v28

    .line 1698
    .local v28, "tempPlmn":Ljava/lang/String;
    if-eqz v28, :cond_b

    .line 1699
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1709
    .end local v17    # "imsRegStatus":Z
    .end local v28    # "tempPlmn":Ljava/lang/String;
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    if-ne v6, v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-ne v7, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p1, :cond_14

    .line 1716
    :cond_c
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1718
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->allowSpnDisplayed()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1720
    :cond_d
    const-string v2, "For CT test case don\'t show SPN."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1721
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_e

    .line 1722
    const/4 v7, 0x0

    .line 1723
    const/4 v5, 0x0

    .line 1734
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oppoVirtualSimCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1735
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mShowPlmn:Z

    .line 1736
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mShowSPn:Z

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewPlmn:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewPlmn:Ljava/lang/String;

    .line 1745
    :cond_f
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v18, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1749
    const/high16 v2, 0x20000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1752
    :cond_10
    const-string v2, "showSpn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    const-string v2, "spn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    const-string v2, "showPlmn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1755
    const-string v2, "plmn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    const-string v2, "hnbName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    const-string v2, "csgId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    const-string v2, "domain"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use SvlteSST phone id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1768
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v20

    .line 1771
    .local v20, "phoneId":I
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v9

    .line 1774
    .local v9, "slotId":I
    const-string v2, "ro.mtk_femto_cell_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1776
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1778
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->needToShowCsgId()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 1795
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move v10, v6

    move-object v11, v4

    move v12, v7

    move-object v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 1797
    .local v25, "setResult":Z
    if-nez v25, :cond_12

    .line 1798
    const-string v2, "set subscription plmn spn failed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1799
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    .line 1801
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v2, :cond_13

    .line 1802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setUpdateSvlteSpnSstType(I)V

    .line 1805
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSpn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1813
    .end local v9    # "slotId":I
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "phoneId":I
    .end local v25    # "setResult":Z
    :cond_14
    const/4 v2, 0x1

    if-ne v7, v2, :cond_1c

    if-nez v6, :cond_1c

    if-eqz v5, :cond_1c

    .line 1815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllOpertorInfo with spn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1819
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorAlpha(Ljava/lang/String;)I

    .line 1831
    :goto_a
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 1832
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 1833
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 1834
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    goto/16 :goto_0

    .line 1495
    .end local v4    # "plmn":Ljava/lang/String;
    .end local v5    # "spn":Ljava/lang/String;
    .end local v6    # "showPlmn":Z
    .end local v7    # "showSpn":Z
    .end local v14    # "combinedRegState":I
    .end local v19    # "mSimOperatorNumeric":Ljava/lang/String;
    .end local v22    # "realPlmn":Ljava/lang/String;
    .end local v24    # "sEons":Ljava/lang/String;
    :cond_15
    const-string v5, ""

    goto/16 :goto_1

    .line 1500
    .restart local v4    # "plmn":Ljava/lang/String;
    .restart local v5    # "spn":Ljava/lang/String;
    .restart local v6    # "showPlmn":Z
    .restart local v22    # "realPlmn":Ljava/lang/String;
    .restart local v24    # "sEons":Ljava/lang/String;
    :cond_16
    const-string v19, ""

    goto/16 :goto_2

    .line 1537
    .restart local v14    # "combinedRegState":I
    .restart local v19    # "mSimOperatorNumeric":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-static {v2, v3, v8}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1659
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1684
    .restart local v7    # "showSpn":Z
    :catch_0
    move-exception v15

    .line 1685
    .local v15, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_5

    .line 1702
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v16

    .line 1703
    .local v16, "ex":Lcom/android/ims/ImsException;
    const-string v2, "GsmSST"

    const-string v3, "Fail to get Ims Status"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1726
    .end local v16    # "ex":Lcom/android/ims/ImsException;
    :catch_2
    move-exception v15

    .line 1727
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_7

    .line 1766
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto/16 :goto_8

    .line 1782
    .restart local v9    # "slotId":I
    .restart local v20    # "phoneId":I
    :catch_3
    move-exception v15

    .line 1783
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_9

    .line 1786
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 1789
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 1822
    .end local v9    # "slotId":I
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "phoneId":I
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllOpertorInfo with realPlmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1826
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorAlpha(Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method public compareTwoRadioTechnology(II)Z
    .locals 4
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xe

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eq p2, v2, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public mzGetNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "OperatorNumeric"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .local v1, "locCountry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .local v2, "locLanguage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "locPlmn":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    .end local v3    # "locPlmn":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
