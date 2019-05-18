.class public Lcom/android/server/OppoAlarmManagerHelper;
.super Ljava/lang/Object;
.source "OppoAlarmManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;
    }
.end annotation


# static fields
.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static DEBUG:Z = false

.field private static final FILTER_NAME:Ljava/lang/String; = "sys_alarm_filterpackages_list"

.field private static final INEXACT_ALARM_FEATURE_NAME:Ljava/lang/String; = "oppo.inexact.alarm"

.field private static OPPODEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoAlarmManagerHelper"

.field private static filtrateAlarmStr:Ljava/lang/String;

.field private static mAlarm:Lcom/android/server/AlarmManagerService;

.field private static final mConnectedPkgBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static final mDisconnectedPkgWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFastNoWakeupAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mHaveAlarmFeature:Z

.field private static final mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPkgWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveFilterPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    .line 55
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->OPPODEBUG:Z

    .line 57
    sput-boolean v1, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 62
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mFastNoWakeupAlarmList:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/server/OppoAlarmManagerHelper;->getDataFromProvider(Landroid/content/Context;)V

    return-void
.end method

.method private static checkPackage(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 281
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 282
    .local v10, "pkgWhite":Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pkg in mPkgWhiteList =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v10    # "pkgWhite":Ljava/lang/String;
    :cond_0
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    .local v4, "keyWhite":Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key in mKeyList == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyWhite":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 289
    .local v11, "uid":I
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 290
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "packages":[Ljava/lang/String;
    if-nez v7, :cond_2

    .line 292
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v12, 0x1

    .line 318
    :goto_2
    return v12

    .line 295
    :cond_2
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v8, v0, v2

    .line 296
    .local v8, "pkg":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/OppoAlarmManagerHelper;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 297
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 298
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pkg is inPackageNameWhiteList! using exact alarm!!!   pkg == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_3
    const/4 v12, 0x1

    goto :goto_2

    .line 303
    :cond_4
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 305
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_6

    .line 306
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Packagename match key! using exact alarm!!!  pkg == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_6
    const/4 v12, 0x1

    goto :goto_2

    .line 295
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_3

    .line 313
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_8
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_9

    .line 314
    move-object v0, v7

    array-length v5, v0

    const/4 v1, 0x0

    .end local v2    # "i$":I
    .restart local v1    # "i$":I
    :goto_4
    if-ge v1, v5, :cond_a

    aget-object v9, v0, v1

    .line 315
    .local v9, "pkg1":Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This package use inexact alarm !!!  pkg1 == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i$":I
    .end local v9    # "pkg1":Ljava/lang/String;
    .restart local v2    # "i$":I
    :cond_9
    move v1, v2

    .line 318
    .end local v2    # "i$":I
    .restart local v1    # "i$":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method private static checkUid()Z
    .locals 6

    .prologue
    .line 258
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 259
    sget-object v3, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, "uidWhite":Ljava/lang/String;
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid in mUidWhiteList =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v2    # "uidWhite":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 264
    .local v1, "uid":I
    invoke-static {v1}, Lcom/android/server/OppoAlarmManagerHelper;->inUidWhiteList(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 266
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUid uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is inUidWhiteList!  using exact alarm!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    const/4 v3, 0x1

    .line 273
    :goto_1
    return v3

    .line 270
    :cond_2
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 271
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uid use inexact alarm !!!  uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static convertType(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "netInteractive"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "pkgLow":Ljava/lang/String;
    sget-object v5, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 175
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    .line 176
    sget-object v5, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 177
    goto :goto_0

    .line 182
    :cond_4
    sget-object v5, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 185
    goto :goto_0
.end method

.method public static dump()Ljava/lang/String;
    .locals 4

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const-string v2, "NetWhiteArray:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    const-string v2, "NetBlackArray:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    :cond_1
    const-string v2, "FastActionArray:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mFastNoWakeupAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mFastNoWakeupAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 508
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDataFromProvider(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 442
    const/4 v7, 0x0

    .line 443
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 444
    .local v6, "configVersion":I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "version"

    aput-object v0, v2, v1

    const-string v0, "xml"

    aput-object v0, v2, v3

    .line 446
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/OppoAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v3, "filtername=\"sys_alarm_filterpackages_list\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 450
    const-string v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 451
    .local v9, "versioncolumnIndex":I
    const-string v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 452
    .local v10, "xmlcolumnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 453
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 454
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    .line 455
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->OPPODEBUG:Z

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "OppoAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , The filtrateAlarmStr is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v9    # "versioncolumnIndex":I
    .end local v10    # "xmlcolumnIndex":I
    :goto_0
    if-eqz v7, :cond_1

    .line 468
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v7, 0x0

    .line 473
    :cond_1
    :goto_1
    return-void

    .line 461
    :cond_2
    :try_start_1
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "The Filtrate alarm cursor is null,so get data from xml file in system/etc/alarm_filter_packages.xml !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "OppoAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get Filtrate app data from provider,because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    if-eqz v7, :cond_1

    .line 468
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v7, 0x0

    goto :goto_1

    .line 467
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 468
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method public static getWhiteList(Z)V
    .locals 11
    .param p0, "isFromdb"    # Z

    .prologue
    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 348
    .local v3, "strReader":Ljava/io/StringReader;
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 349
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mUidWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 352
    :cond_0
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 353
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mPkgWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 356
    :cond_1
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 357
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mKeyList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 360
    :cond_2
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 361
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mRemoveFilterPackagesList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 365
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 366
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez p0, :cond_7

    .line 367
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/alarm_filter_packages.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .local v5, "xmlFile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v7

    .line 382
    .end local v5    # "xmlFile":Ljava/io/File;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_0
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 383
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_12

    .line 384
    packed-switch v1, :pswitch_data_0

    .line 418
    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 371
    .end local v1    # "eventType":I
    .restart local v5    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v8, "OppoAlarmManagerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    if-eqz v6, :cond_5

    .line 427
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 429
    :cond_5
    if-eqz v3, :cond_6

    .line 430
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 436
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "xmlFile":Ljava/io/File;
    :cond_6
    :goto_3
    return-void

    .line 432
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "xmlFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 377
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlFile":Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v4, Ljava/io/StringReader;

    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    .end local v3    # "strReader":Ljava/io/StringReader;
    .local v4, "strReader":Ljava/io/StringReader;
    :try_start_6
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto :goto_0

    .line 389
    .restart local v1    # "eventType":I
    :pswitch_1
    :try_start_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UidWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 390
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 391
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 420
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 421
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_8
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 426
    if-eqz v6, :cond_8

    .line 427
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 429
    :cond_8
    if-eqz v3, :cond_6

    .line 430
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 432
    :catch_3
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PkgWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 393
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 394
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 422
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    .line 423
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 426
    if-eqz v6, :cond_a

    .line 427
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 429
    :cond_a
    if-eqz v3, :cond_6

    .line 430
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 432
    :catch_5
    move-exception v0

    .line 433
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FilterPackagesArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 396
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 397
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 425
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 426
    :goto_6
    if-eqz v6, :cond_c

    .line 427
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 429
    :cond_c
    if-eqz v3, :cond_d

    .line 430
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 434
    :cond_d
    :goto_7
    throw v8

    .line 398
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_e
    :try_start_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 399
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 400
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 402
    :cond_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 403
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 404
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mDisconnectedPkgWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 405
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetBlackArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 406
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 407
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mConnectedPkgBlackList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 408
    :cond_11
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FastActionArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 409
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 410
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mFastNoWakeupAlarmList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 426
    :cond_12
    if-eqz v6, :cond_13

    .line 427
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 429
    :cond_13
    if-eqz v3, :cond_6

    .line 430
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_3

    .line 432
    :catch_6
    move-exception v0

    .line 433
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 433
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "OppoAlarmManagerHelper"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_6

    .line 422
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_5

    .line 420
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_4

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 336
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 105
    sput-object p0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    .line 106
    sput-object p1, Lcom/android/server/OppoAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 107
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    .local v0, "pms":Landroid/content/pm/PackageManager;
    const-string v2, "oppo.inexact.alarm"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 109
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;

    invoke-direct {v2}, Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;-><init>()V

    const-string v3, "get_data_from_provider"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 110
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public static isFilterRemovePackage(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 479
    sget-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 480
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    .local v1, "removePackage":Ljava/lang/String;
    const-string v2, "OppoAlarmManagerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackage in mRemoveFilterPackagesList =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removePackage":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isImportantAlarm(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x0

    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    sget-object v1, Lcom/android/server/OppoAlarmManagerHelper;->mFastNoWakeupAlarmList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNeedInexactAlarm()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->checkUid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    sget-object v1, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/OppoAlarmManagerHelper;->checkPackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setInexactAlarm(J)J
    .locals 4
    .param p0, "windowLength"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 137
    sget-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    if-eqz v2, :cond_2

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    .line 138
    sget-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 139
    const-string v2, "OppoAlarmManagerHelper"

    const-string v3, "windowLength == AlarmManager.WINDOW_EXACT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->isNeedInexactAlarm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "Using  inexact alarm!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const-wide/16 p0, -0x1

    .line 156
    .end local p0    # "windowLength":J
    :cond_2
    :goto_0
    return-wide p0

    .line 148
    .restart local p0    # "windowLength":J
    :cond_3
    sget-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 149
    const-string v2, "OppoAlarmManagerHelper"

    const-string v3, "Using exact alarm!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-wide p0, v0

    .line 152
    goto :goto_0
.end method
