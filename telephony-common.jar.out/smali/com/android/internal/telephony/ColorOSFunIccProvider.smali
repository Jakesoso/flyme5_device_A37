.class public Lcom/android/internal/telephony/ColorOSFunIccProvider;
.super Ljava/lang/Object;
.source "ColorOSFunIccProvider.java"


# static fields
.field protected static final OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final OPPO_BOOK_COLUMN_NUM:I = 0x1

.field protected static final STR_ID:Ljava/lang/String; = "id"

.field protected static final STR_NUMBER2:Ljava/lang/String; = "anr"

.field public static final TAG:Ljava/lang/String; = "ColorOSFunIccProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorOSAddIccRecordToEfEx(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "subscription"    # J
    .param p2, "efType"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number1"    # Ljava/lang/String;
    .param p5, "number2"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, -0x1

    .line 132
    .local v0, "index":I
    const/4 v11, 0x0

    .line 134
    .local v11, "email":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 135
    const/4 v2, 0x0

    aget-object v11, p6, v2

    .line 139
    :cond_0
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 141
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 142
    const-string v5, ""

    const-string v6, ""

    move-wide v2, p0

    move v4, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->colorAddAdnRecordsInEfBySearchExUsingSubId(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v2

    goto :goto_0

    .line 146
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static colorOSGetSubscription(Landroid/net/Uri;)J
    .locals 4
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public static colorOSMSimCheckPhoneBookPbrExist(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 10
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 208
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 209
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 210
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 213
    .local v2, "index":I
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 214
    .local v4, "subscription":J
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 216
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorIsPhoneBookPbrExist(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 225
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    if-ne v6, v7, :cond_1

    move v2, v7

    .line 226
    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    .line 227
    .local v3, "object":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 228
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 229
    return-object v0

    .end local v3    # "object":[Ljava/lang/Object;
    :cond_1
    move v2, v8

    .line 225
    goto :goto_1

    .line 222
    :catch_0
    move-exception v9

    goto :goto_0

    .line 220
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public static colorOSMSimCheckPhoneBookReady(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 10
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 181
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 182
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 183
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 186
    .local v2, "index":I
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 187
    .local v4, "subscription":J
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 189
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorISPhoneBookReady(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 198
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    if-ne v6, v7, :cond_1

    move v2, v7

    .line 199
    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    .line 200
    .local v3, "object":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 201
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 202
    return-object v0

    .end local v3    # "object":[Ljava/lang/Object;
    :cond_1
    move v2, v8

    .line 198
    goto :goto_1

    .line 195
    :catch_0
    move-exception v9

    goto :goto_0

    .line 193
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public static colorOSMixEmailLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 235
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 236
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 239
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 240
    .local v4, "subscription":J
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 242
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetAdnEmailLenUsingSubId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 251
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    new-array v3, v7, [Ljava/lang/Object;

    .line 252
    .local v3, "object":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 253
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 255
    return-object v0

    .line 248
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 246
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static colorOSMixSimAllSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 55
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 56
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 59
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 60
    .local v4, "subscription":J
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 62
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimPhonebookAllSpace(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    new-array v3, v7, [Ljava/lang/Object;

    .line 73
    .local v3, "object":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 74
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 76
    return-object v0

    .line 69
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 67
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static colorOSMixSimNameLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 105
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 106
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 109
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 110
    .local v4, "subscription":J
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 112
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimNameLenUsingSubId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    new-array v3, v7, [Ljava/lang/Object;

    .line 122
    .local v3, "object":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 123
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    return-object v0

    .line 118
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 116
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static colorOSMixSimUsedSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 80
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 81
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 84
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)J

    move-result-wide v4

    .line 85
    .local v4, "subscription":J
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 87
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimPhonebookUsedSpace(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":J
    :cond_0
    :goto_0
    new-array v3, v7, [Ljava/lang/Object;

    .line 98
    .local v3, "object":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 99
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 101
    return-object v0

    .line 94
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 92
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static colorOSUpdateIccRecordInEfByIdEx(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "subscription"    # J
    .param p2, "efType"    # I
    .param p3, "id"    # I
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber1"    # Ljava/lang/String;
    .param p6, "newNumber2"    # Ljava/lang/String;
    .param p7, "emails"    # [Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "success":Z
    const/4 v10, 0x0

    .line 161
    .local v10, "email":Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 162
    const/4 v2, 0x0

    aget-object v10, p7, v2

    .line 166
    :cond_0
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 168
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 169
    const/4 v9, 0x0

    move-wide v2, p0

    move v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move v8, p3

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/IIccPhoneBook;->colorUpdateAdnRecordsInEfByIndexExUsingSubId(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v2

    goto :goto_0

    .line 173
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static getIccPhoneBookService()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 51
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "ColorOSFunIccProvider"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method
