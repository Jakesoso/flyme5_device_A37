.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"


# instance fields
.field EmailRecIndex:I

.field EmailTagNumberInIap:I

.field IapBufferSize:I

.field aas:I

.field additionalNumber:Ljava/lang/String;

.field additionalNumber2:Ljava/lang/String;

.field additionalNumber3:Ljava/lang/String;

.field emailefid:I

.field emaillen:I

.field grpIds:Ljava/lang/String;

.field iap:[B

.field iapefid:I

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNameLength:I

.field mNumber:Ljava/lang/String;

.field mNumberLength:I

.field mRecordNumber:I

.field number2:Ljava/lang/String;

.field number2efid:I

.field result:I

.field sfi:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 196
    if-nez p3, :cond_0

    .line 197
    const-string p3, ""

    .line 199
    :cond_0
    if-nez p4, :cond_1

    .line 200
    const-string p4, ""

    .line 203
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 204
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 205
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 215
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 216
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 217
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 218
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "anr2"    # Ljava/lang/String;
    .param p7, "anr3"    # Ljava/lang/String;
    .param p8, "emails"    # [Ljava/lang/String;
    .param p9, "grps"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 255
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 256
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 257
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 258
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 259
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 260
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 261
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 262
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 263
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "grps"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 231
    if-nez p3, :cond_0

    .line 232
    const-string p3, ""

    .line 234
    :cond_0
    if-nez p4, :cond_1

    .line 235
    const-string p4, ""

    .line 237
    :cond_1
    if-nez p5, :cond_2

    .line 238
    const-string p5, ""

    .line 242
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 243
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 244
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 245
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 246
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 247
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 250
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 181
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 182
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 183
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 184
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 185
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 4
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 65
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 81
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 163
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 164
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 165
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 173
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 177
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 160
    return-void
.end method

.method private isContainChineseChar(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alphTag"    # Ljava/lang/String;

    .prologue
    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 615
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 616
    const-string v3, "[\u4e00-\u9fa5]"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    const/4 v2, 0x1

    .line 622
    :cond_0
    return v2

    .line 615
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPhoneNumberInvaild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x1

    .line 634
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    .prologue
    const/4 v5, 0x0

    .line 560
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 563
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 565
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 570
    .local v2, "numberLength":I
    array-length v3, p1

    add-int/lit8 v3, v3, -0xe

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    .line 571
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumberLength:I

    .line 574
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 576
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 609
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 587
    .restart local v1    # "footerOffset":I
    .restart local v2    # "numberLength":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 591
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 593
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 594
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 595
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 596
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 597
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 602
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 603
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 604
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 605
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 606
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 607
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 378
    if-ne p0, p1, :cond_0

    .line 379
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    .line 381
    :cond_0
    if-nez p0, :cond_1

    .line 382
    const-string p0, ""

    .line 384
    :cond_1
    if-nez p1, :cond_2

    .line 385
    const-string p1, ""

    .line 387
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 528
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 537
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .param p1, "recordSize"    # I

    .prologue
    .line 426
    const-string v10, "AdnRecord"

    const-string v11, "in BuildAdnString"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    add-int/lit8 v7, p1, -0xe

    .line 431
    .local v7, "footerOffset":I
    const/4 v1, 0x0

    .line 434
    .local v1, "alphaIdLength":I
    new-array v0, p1, [B

    .line 435
    .local v0, "adnString":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, p1, :cond_0

    .line 436
    const/4 v10, -0x1

    aput-byte v10, v0, v9

    .line 435
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 438
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 439
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] invaild number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v10, -0xf

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 441
    const/4 v0, 0x0

    .line 516
    .end local v0    # "adnString":[B
    :cond_1
    :goto_1
    return-object v0

    .line 443
    .restart local v0    # "adnString":[B
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 444
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 472
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 473
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 474
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    const-string v10, "AdnRecord"

    const-string v11, "call getBytes"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 478
    .local v3, "byteTag":[B
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    const/4 v10, 0x1

    new-array v8, v10, [B

    .line 484
    .local v8, "header":[B
    const/4 v10, 0x0

    const/16 v11, -0x80

    aput-byte v11, v8, v10

    .line 485
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 486
    array-length v10, v3

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_5

    .line 487
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 488
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] after getBytes byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adnString.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 447
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x14

    if-le v10, v11, :cond_4

    .line 449
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 450
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 454
    :cond_4
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 456
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 461
    .local v2, "bcdNumber":[B
    const/4 v10, 0x0

    add-int/lit8 v11, v7, 0x1

    array-length v12, v2

    invoke-static {v2, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 464
    add-int/lit8 v10, v7, 0x0

    array-length v11, v2

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 466
    add-int/lit8 v10, v7, 0xc

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 468
    add-int/lit8 v10, v7, 0xd

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    goto/16 :goto_2

    .line 457
    .end local v2    # "bcdNumber":[B
    :catch_0
    move-exception v6

    .line 458
    .local v6, "exc":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 459
    .local v4, "cmdEx":Lcom/android/internal/telephony/CommandException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid number for BCD "

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 479
    .end local v4    # "cmdEx":Lcom/android/internal/telephony/CommandException;
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 480
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] getBytes exception"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 492
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "byteTag":[B
    .restart local v8    # "header":[B
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 493
    array-length v10, v3

    add-int/lit8 v1, v10, 0x1

    .line 494
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arrarString"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v10, :cond_1

    if-le v1, v7, :cond_1

    .line 510
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 511
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",alphaIdLength:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 496
    :cond_7
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 498
    .restart local v3    # "byteTag":[B
    array-length v1, v3

    .line 499
    array-length v10, v0

    if-le v1, v10, :cond_8

    .line 500
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 501
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] after stringToGsm8BitPacked byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adnString.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 505
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public getAasIndex()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "number":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 294
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "AdnRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdditionalNumber Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAdnNameLength()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNameLength:I

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailLen()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    return v0
.end method

.method public getEmailTagNumberInIap(I)I
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 704
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    return p1
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNumber()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    return v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getSFI()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public oppoGetRecordNumber()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public oppoSetRecordNumber(I)V
    .locals 0
    .param p1, "recordIdx"    # I

    .prologue
    .line 643
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 644
    return-void
.end method

.method public oppobuildAdnString(I)[B
    .locals 10
    .param p1, "recordSize"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "adnString":[B
    add-int/lit8 v3, p1, -0xe

    .line 722
    .local v3, "footerOffset":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 723
    :cond_0
    new-array v0, p1, [B

    .line 724
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 725
    aput-byte v9, v0, v4

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 728
    :cond_1
    const/4 v2, 0x0

    .line 729
    .local v2, "byteTag":[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 730
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 731
    if-eqz v2, :cond_3

    array-length v6, v2

    if-le v6, v3, :cond_3

    .line 772
    .end local v2    # "byteTag":[B
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return-object v5

    .line 735
    .restart local v2    # "byteTag":[B
    .restart local v4    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 736
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .end local v2    # "byteTag":[B
    .end local v4    # "i":I
    :cond_4
    :goto_2
    move-object v5, v0

    .line 772
    goto :goto_1

    .line 739
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 741
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 743
    :cond_6
    const/4 v2, 0x0

    .line 744
    .restart local v2    # "byteTag":[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 745
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 746
    if-eqz v2, :cond_7

    array-length v6, v2

    if-gt v6, v3, :cond_2

    .line 751
    :cond_7
    new-array v0, p1, [B

    .line 752
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, p1, :cond_8

    .line 753
    aput-byte v9, v0, v4

    .line 752
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 756
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 758
    .local v1, "bcdNumber":[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 761
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 763
    add-int/lit8 v5, v3, 0xc

    aput-byte v9, v0, v5

    .line 765
    add-int/lit8 v5, v3, 0xd

    aput-byte v9, v0, v5

    .line 768
    if-eqz v2, :cond_4

    .line 769
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2
.end method

.method public setAasIndex(I)V
    .locals 0
    .param p1, "aas"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 335
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setAnr(Ljava/lang/String;I)V
    .locals 3
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 322
    if-nez p2, :cond_0

    .line 323
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 331
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_2
    const-string v0, "AdnRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnr Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailEfid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 659
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 660
    return-void
.end method

.method public setEmailLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 675
    return-void
.end method

.method public setEmailRecIndex(I)V
    .locals 0
    .param p1, "Index"    # I

    .prologue
    .line 694
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 695
    return-void
.end method

.method public setEmailTagNumberInIap(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 699
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 700
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "grps"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setIAPEfid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 664
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 665
    return-void
.end method

.method public setIap([BI)V
    .locals 2
    .param p1, "iap"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 709
    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 711
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 714
    :cond_0
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setNumber2(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 650
    :cond_0
    return-void
.end method

.method public setNumber2Efid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 669
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 670
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 351
    return-void
.end method

.method public setSFI(I)V
    .locals 0
    .param p1, "sfi"    # I

    .prologue
    .line 689
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 690
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .param p1, "sne"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",emails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",grpIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 404
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    return-void
.end method
