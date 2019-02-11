.class public Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.source "OppoIccPhoneBookInterfaceManagerProxy.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 28
    return-void
.end method


# virtual methods
.method public isPhoneBookPbrExist()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public isPhoneBookReady()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookAllSpace()I

    move-result v0

    return v0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookNameLength()I

    move-result v0

    return v0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookUsedSpace()I

    move-result v0

    return v0
.end method
