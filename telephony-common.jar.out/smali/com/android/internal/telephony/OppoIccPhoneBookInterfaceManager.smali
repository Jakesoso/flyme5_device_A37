.class public Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "OppoIccPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field protected static final OPPO_EVENT_GET_ADN_FIELD_INFO_DONE:I = 0x66


# instance fields
.field protected mBaseHandler:Landroid/os/Handler;

.field private simNameLeng:I

.field private simNumberLeng:I

.field private simTotal:I

.field private simUsed:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 69
    new-instance v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    .line 63
    return-void
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OppoIccPhoneBookInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OppoIccPhoneBookInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_0

    .line 113
    const-string v0, "oppoGetSimPhonebookAllSpace: phonebook not ready."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 114
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->oppoGetTotalAdn()I

    move-result v0

    goto :goto_0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_0

    .line 131
    const-string v0, "oppoGetSimPhonebookNameLength: phonebook not ready."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 132
    const/4 v0, -0x1

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    .line 151
    iget v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    goto :goto_0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_0

    .line 122
    const-string v0, "oppoGetSimPhonebookUsedSpace: phonebook not ready."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 123
    const/4 v0, -0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->oppoGetUesedAdn()I

    move-result v0

    goto :goto_0
.end method
