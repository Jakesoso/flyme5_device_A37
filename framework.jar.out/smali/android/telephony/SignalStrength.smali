.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final IS_BSP_PACKAGE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NT_CDMA:I = 0x5

.field public static final NT_EVDO:I = 0x6

.field public static final NT_GSM:I = 0x1

.field public static final NT_LTE:I = 0x3

.field public static final NT_TDS:I = 0x2

.field public static final NT_UNKNOWN:I = 0x0

.field public static final NT_WCDMA:I = 0x4

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field protected static final ODBG:Z = true

.field public static OEM_LEVLE:I = 0x0

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;


# instance fields
.field private final VENDOR_EDIT:Z

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field public mOEMLevel_0:I

.field public mOEMLevel_1:I

.field private mRealLteRsrp:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v2, v1

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "moderate"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "good"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "great"

    aput-object v4, v2, v3

    sput-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 68
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 69
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 89
    const/4 v2, 0x0

    sput-object v2, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 480
    new-instance v2, Landroid/telephony/SignalStrength$1;

    invoke-direct {v2}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v2, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1628
    const-string/jumbo v2, "persist.sys.oem_smooth"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    .line 68
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 69
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x1

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    iput-boolean v3, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 126
    iput v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 128
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 129
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 131
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 132
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 133
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 134
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 135
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 136
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 137
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 138
    iput-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 141
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 142
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 144
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 185
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 188
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "gsmRssiQdbm"    # I
    .param p15, "gsmRscpQdbm"    # I
    .param p16, "gsmEcn0Qdbm"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v1, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v1, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 203
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 206
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 207
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 208
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 209
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 221
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v1, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v1, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 391
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 234
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1626
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->VENDOR_EDIT:Z

    .line 155
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 156
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 157
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 162
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 163
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 164
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 165
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 167
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 170
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 171
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 173
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1425
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 1

    .prologue
    .line 308
    const-string v0, "SignalStrength get plugin"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 320
    const-string v0, "BSP package should not use plug in"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 323
    sget-object v0, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v0
.end method

.method private static isC2KSupport()Z
    .locals 2

    .prologue
    .line 1611
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCampOnLte()Z
    .locals 2

    .prologue
    .line 1441
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1360
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 405
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 406
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 407
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 408
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 409
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 410
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 411
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 412
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 413
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 414
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 415
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 416
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 417
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 419
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 422
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 423
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 424
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 429
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 430
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 432
    return-object v0

    .line 419
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 115
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 116
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 117
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1301
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1302
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1303
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1304
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1305
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1306
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1307
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1308
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1309
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1310
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1311
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1312
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1313
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1315
    const-string v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1316
    const-string v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1317
    const-string v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1320
    const-string v0, "OEMLevel_0"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1321
    const-string v0, "OEMLevel_1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1323
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 336
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 337
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 338
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 339
    iget v0, p1, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 340
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 341
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 342
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 343
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 344
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 345
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 346
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 349
    iget v0, p1, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 350
    iget v0, p1, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 352
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1239
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1248
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1248
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1332
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1333
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1334
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1346
    const-string v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    const-string v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    const-string v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    const-string v0, "OEMLevel_0"

    iget v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    const-string v0, "OEMLevel_1"

    iget v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 679
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 682
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 705
    .local v0, "asuLevel":I
    :goto_0
    return v0

    .line 686
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 689
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 690
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 691
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 693
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 694
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 696
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 699
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 4

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 928
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 932
    .local v2, "cdmaEcio":I
    const/16 v3, -0x4b

    if-lt v1, v3, :cond_0

    const/16 v0, 0x10

    .line 941
    .local v0, "cdmaAsuLevel":I
    :goto_0
    return v0

    .line 933
    .end local v0    # "cdmaAsuLevel":I
    :cond_0
    const/16 v3, -0x52

    if-lt v1, v3, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 934
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    const/16 v3, -0x5a

    if-lt v1, v3, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 935
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v3, -0x5f

    if-lt v1, v3, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 936
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    const/16 v3, -0x64

    if-lt v1, v3, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 937
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 4

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 881
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 887
    .local v1, "cdmaEcio":I
    const/16 v3, -0x59

    if-lt v0, v3, :cond_0

    const/4 v2, 0x4

    .line 893
    .local v2, "levelDbm":I
    :goto_0
    return v2

    .line 888
    .end local v2    # "levelDbm":I
    :cond_0
    const/16 v3, -0x64

    if-lt v0, v3, :cond_1

    const/4 v2, 0x3

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 889
    .end local v2    # "levelDbm":I
    :cond_1
    const/16 v3, -0x6a

    if-lt v0, v3, :cond_2

    const/4 v2, 0x2

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 890
    .end local v2    # "levelDbm":I
    :cond_2
    const/16 v3, -0x6d

    if-lt v0, v3, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 891
    .end local v2    # "levelDbm":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "levelDbm":I
    goto :goto_0
.end method

.method public getColorOSLevel()[I
    .locals 3

    .prologue
    .line 1637
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x71

    const/16 v4, -0x78

    .line 716
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 720
    .local v1, "dBm":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 735
    .end local v1    # "dBm":I
    :cond_0
    :goto_0
    return v1

    .line 725
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 726
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 728
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_3

    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 4

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1007
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1011
    .local v1, "evdoSnr":I
    const/16 v3, -0x41

    if-lt v0, v3, :cond_0

    const/16 v2, 0x10

    .line 1020
    .local v2, "levelEvdoDbm":I
    :goto_0
    return v2

    .line 1012
    .end local v2    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1

    const/16 v2, 0x8

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 1013
    .end local v2    # "levelEvdoDbm":I
    :cond_1
    const/16 v3, -0x55

    if-lt v0, v3, :cond_2

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 1014
    .end local v2    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_3

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 1015
    .end local v2    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x69

    if-lt v0, v3, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 1016
    .end local v2    # "levelEvdoDbm":I
    :cond_4
    const/16 v2, 0x63

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 4

    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 966
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 972
    .local v1, "evdoSnr":I
    const/16 v3, -0x59

    if-lt v0, v3, :cond_0

    const/4 v2, 0x4

    .line 978
    .local v2, "levelEvdoDbm":I
    :goto_0
    return v2

    .line 973
    .end local v2    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x64

    if-lt v0, v3, :cond_1

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 974
    .end local v2    # "levelEvdoDbm":I
    :cond_1
    const/16 v3, -0x6a

    if-lt v0, v3, :cond_2

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 975
    .end local v2    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x6e

    if-lt v0, v3, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 976
    .end local v2    # "levelEvdoDbm":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 871
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 746
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 747
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 748
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_2

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mapGsmSignalDbm() mGsmRscpQdbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 760
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v3, :cond_1

    .line 761
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    div-int/lit8 v1, v3, 0x4

    .line 771
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 747
    goto :goto_0

    .line 763
    .restart local v0    # "asu":I
    :cond_1
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .restart local v1    # "dBm":I
    goto :goto_1

    .line 766
    .end local v1    # "dBm":I
    :cond_2
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 5

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 799
    .local v0, "asu":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v3, :cond_6

    .line 803
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const/16 v4, -0x19

    if-gt v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 804
    :cond_0
    const/4 v1, 0x0

    .local v1, "level":I
    :goto_0
    move v2, v1

    .line 835
    .end local v1    # "level":I
    .local v2, "level":I
    :goto_1
    return v2

    .line 805
    .end local v2    # "level":I
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const/16 v4, -0x5b

    if-lt v3, v4, :cond_2

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 806
    .end local v1    # "level":I
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const/16 v4, -0x61

    if-lt v3, v4, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 807
    .end local v1    # "level":I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const/16 v4, -0x63

    if-lt v3, v4, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 808
    .end local v1    # "level":I
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 809
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 830
    .end local v1    # "level":I
    :cond_6
    const/4 v3, 0x2

    if-le v0, v3, :cond_7

    const/16 v3, 0x63

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "level":I
    :goto_2
    move v2, v1

    .line 835
    .end local v1    # "level":I
    .restart local v2    # "level":I
    goto :goto_1

    .line 831
    .end local v2    # "level":I
    :cond_8
    const/16 v3, 0xd

    if-lt v0, v3, :cond_9

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_2

    .line 832
    .end local v1    # "level":I
    :cond_9
    const/16 v3, 0xa

    if-lt v0, v3, :cond_a

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_2

    .line 833
    .end local v1    # "level":I
    :cond_a
    const/4 v3, 0x7

    if-lt v0, v3, :cond_b

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_2

    .line 834
    .end local v1    # "level":I
    :cond_b
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_2
.end method

.method public getGsmLevel(Z)I
    .locals 4
    .param p1, "wcdma"    # Z

    .prologue
    const/16 v3, 0x8

    .line 1686
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1687
    .local v0, "asu":I
    if-ltz v0, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1701
    .local v1, "level":I
    :goto_0
    return v1

    .line 1695
    .end local v1    # "level":I
    :cond_1
    if-eqz p1, :cond_3

    const/16 v2, 0xb

    if-lt v0, v2, :cond_4

    :cond_2
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .end local v1    # "level":I
    :cond_3
    const/16 v2, 0xd

    if-ge v0, v2, :cond_2

    .line 1696
    :cond_4
    if-eqz p1, :cond_6

    if-lt v0, v3, :cond_7

    :cond_5
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .end local v1    # "level":I
    :cond_6
    if-ge v0, v3, :cond_5

    .line 1697
    :cond_7
    if-eqz p1, :cond_9

    const/4 v2, 0x7

    if-lt v0, v2, :cond_a

    :cond_8
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .end local v1    # "level":I
    :cond_9
    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    .line 1698
    :cond_a
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmRscpQdbm()I

    move-result v0

    if-gez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmRscpQdbm()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x71

    div-int/lit8 v0, v0, 0x2

    .line 555
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1397
    const/4 v1, -0x1

    .line 1398
    .local v1, "dBm":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1399
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_1

    move v0, v3

    .line 1401
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_0

    .line 1411
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 1413
    :cond_0
    return v1

    .end local v0    # "asu":I
    :cond_1
    move v0, v2

    .line 1399
    goto :goto_0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 644
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 645
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 648
    .local v2, "level":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 669
    :cond_0
    :goto_0
    return v2

    .line 653
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 654
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 655
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 657
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 658
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    .line 660
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 663
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1183
    const/16 v0, 0x63

    .line 1184
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1198
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1199
    const/16 v0, 0xff

    .line 1206
    :goto_0
    return v0

    .line 1201
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .line 1060
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1062
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1067
    .local v1, "rsrpThreshType":I
    sget v7, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    if-nez v7, :cond_1

    const/16 v5, -0x69

    .line 1068
    .local v5, "threshLevel3":I
    :goto_0
    sget v7, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    if-nez v7, :cond_2

    const/16 v4, -0x71

    .line 1070
    .local v4, "threshLevel2":I
    :goto_1
    if-nez v1, :cond_3

    .line 1071
    sget-object v6, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1088
    .local v6, "threshRsrp":[I
    :goto_2
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v8, -0x2c

    if-le v7, v8, :cond_4

    const/4 v0, -0x1

    .line 1095
    :goto_3
    if-eq v0, v9, :cond_9

    .line 1173
    .end local v0    # "rsrpIconLevel":I
    :cond_0
    :goto_4
    return v0

    .line 1067
    .end local v4    # "threshLevel2":I
    .end local v5    # "threshLevel3":I
    .end local v6    # "threshRsrp":[I
    .restart local v0    # "rsrpIconLevel":I
    :cond_1
    const/16 v5, -0x6e

    goto :goto_0

    .line 1068
    .restart local v5    # "threshLevel3":I
    :cond_2
    const/16 v4, -0x73

    goto :goto_1

    .line 1073
    .restart local v4    # "threshLevel2":I
    :cond_3
    sget-object v6, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v6    # "threshRsrp":[I
    goto :goto_2

    .line 1089
    :cond_4
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v8, -0x61

    if-lt v7, v8, :cond_5

    const/4 v0, 0x4

    goto :goto_3

    .line 1090
    :cond_5
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v7, v5, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    .line 1091
    :cond_6
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v7, v4, :cond_7

    const/4 v0, 0x2

    goto :goto_3

    .line 1092
    :cond_7
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v8, -0x78

    if-lt v7, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    .line 1093
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 1121
    :cond_9
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x12c

    if-le v7, v8, :cond_b

    .line 1122
    const/4 v3, -0x1

    .line 1139
    :cond_a
    :goto_5
    if-eq v3, v9, :cond_10

    if-eq v0, v9, :cond_10

    .line 1145
    if-lt v0, v3, :cond_0

    move v0, v3

    goto :goto_4

    .line 1123
    :cond_b
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x82

    if-lt v7, v8, :cond_c

    .line 1124
    const/4 v3, 0x4

    goto :goto_5

    .line 1125
    :cond_c
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_d

    .line 1126
    const/4 v3, 0x3

    goto :goto_5

    .line 1127
    :cond_d
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_e

    .line 1128
    const/4 v3, 0x2

    goto :goto_5

    .line 1129
    :cond_e
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, -0x1e

    if-lt v7, v8, :cond_f

    .line 1130
    const/4 v3, 0x1

    goto :goto_5

    .line 1131
    :cond_f
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, -0xc8

    if-lt v7, v8, :cond_a

    .line 1132
    const/4 v3, 0x0

    goto :goto_5

    .line 1148
    :cond_10
    if-eq v3, v9, :cond_11

    move v0, v3

    .line 1149
    goto :goto_4

    .line 1152
    :cond_11
    if-ne v0, v9, :cond_0

    .line 1157
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v8, 0x3f

    if-le v7, v8, :cond_13

    .line 1158
    const/4 v2, 0x0

    :cond_12
    :goto_6
    move v0, v2

    .line 1173
    goto :goto_4

    .line 1159
    :cond_13
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v8, 0xc

    if-lt v7, v8, :cond_14

    .line 1160
    const/4 v2, 0x4

    goto :goto_6

    .line 1161
    :cond_14
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_15

    .line 1162
    const/4 v2, 0x3

    goto :goto_6

    .line 1163
    :cond_15
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_16

    .line 1164
    const/4 v2, 0x2

    goto :goto_6

    .line 1165
    :cond_16
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v7, :cond_12

    .line 1166
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getOEMLevel(I)I
    .locals 4
    .param p1, "networktype"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 1642
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    .line 1644
    .local v0, "level":I
    if-ne p1, v3, :cond_2

    .line 1645
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getGsmLevel(Z)I

    move-result v0

    .line 1646
    if-lez v0, :cond_1

    .line 1675
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "leon getOEMLevel networktype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1676
    return v0

    .line 1646
    :cond_1
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    goto :goto_0

    .line 1647
    :cond_2
    if-ne p1, v1, :cond_4

    .line 1648
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1649
    sget v2, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    if-ne v2, v3, :cond_0

    .line 1650
    if-le v0, v3, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1652
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 1653
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1654
    if-lez v0, :cond_5

    :goto_2
    goto :goto_0

    :cond_5
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    goto :goto_2

    .line 1660
    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 1661
    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getGsmLevel(Z)I

    move-result v0

    .line 1662
    sget v2, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    if-ne v2, v3, :cond_0

    .line 1663
    if-le v0, v3, :cond_7

    :goto_3
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    .line 1665
    :cond_8
    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 1666
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1667
    if-lez v0, :cond_9

    :goto_4
    goto :goto_0

    :cond_9
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    goto :goto_4

    .line 1668
    :cond_a
    const/4 v1, 0x6

    if-ne p1, v1, :cond_c

    .line 1669
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 1670
    if-lez v0, :cond_b

    :goto_5
    goto :goto_0

    :cond_b
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    goto :goto_5

    .line 1672
    :cond_c
    if-nez p1, :cond_0

    .line 1673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealLteRsrp()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1221
    const/16 v0, 0x1f

    .line 1222
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 284
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 285
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 286
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 287
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 288
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 289
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 290
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 291
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 292
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 293
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 294
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 295
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 296
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 299
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 300
    sget v0, Landroid/telephony/SignalStrength;->OEM_LEVLE:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 305
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 255
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 258
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 1473
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1474
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 1483
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1484
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 1493
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1494
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 1503
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1504
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 1513
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1514
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 541
    return-void
.end method

.method public setGsmBitErrorRate(I)V
    .locals 0
    .param p1, "gsmBitErrorRate"    # I

    .prologue
    .line 1463
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1464
    return-void
.end method

.method public setGsmEcn0Qdbm(I)V
    .locals 0
    .param p1, "gsmEcn0Qdbm"    # I

    .prologue
    .line 1603
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1604
    return-void
.end method

.method public setGsmRscpQdbm(I)V
    .locals 0
    .param p1, "gsmRscpQdbm"    # I

    .prologue
    .line 1593
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1594
    return-void
.end method

.method public setGsmRssiQdbm(I)V
    .locals 0
    .param p1, "gsmRssiQdbm"    # I

    .prologue
    .line 1583
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1584
    return-void
.end method

.method public setGsmSignalStrength(I)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I

    .prologue
    .line 1453
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1454
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    .prologue
    .line 1573
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1574
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 1533
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1534
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 1553
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1554
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 1563
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1564
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 1523
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1524
    return-void
.end method

.method public setRealLteRsrp(I)V
    .locals 0
    .param p1, "realLteRsrp"    # I

    .prologue
    .line 1543
    iput p1, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 1544
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 509
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 512
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 513
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 514
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 519
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 520
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 522
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 529
    return-void

    :cond_4
    move v0, v1

    .line 506
    goto :goto_0

    :cond_5
    move v0, v2

    .line 509
    goto :goto_1

    .line 510
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 513
    goto :goto_3

    :cond_8
    move v0, v4

    .line 520
    goto :goto_4

    :cond_9
    move v0, v4

    .line 521
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 439
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
