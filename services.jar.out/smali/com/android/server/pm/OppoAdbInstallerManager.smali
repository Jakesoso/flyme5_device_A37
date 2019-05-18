.class public Lcom/android/server/pm/OppoAdbInstallerManager;
.super Ljava/lang/Object;
.source "OppoAdbInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final ADB_INSTALLER_STATUS_PATH:Ljava/lang/String; = "/data/system/config/adb_installer_status.xml"

.field public static DEBUG_DETAIL:Z = false

.field private static final SYSTEM_CONFIG_PATH:Ljava/lang/String; = "/data/system/config"

.field public static final TAG:Ljava/lang/String; = "OppoAdbInstallerManager"

.field private static mOppoAdbInstallerManager:Lcom/android/server/pm/OppoAdbInstallerManager;


# instance fields
.field private CTS_APKNAME_KEY:[Ljava/lang/String;

.field private mAdbInstallerFileObserver:Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mSwitch:Z

.field private mSystemReady:Z

.field public mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/OppoAdbInstallerManager;->mOppoAdbInstallerManager:Lcom/android/server/pm/OppoAdbInstallerManager;

    .line 59
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 55
    iput-boolean v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSwitch:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSystemReady:Z

    .line 57
    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mAdbInstallerFileObserver:Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;

    .line 61
    const-string v0, "ro.oppo.version"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mVersion:Ljava/lang/String;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.core.tests"

    aput-object v1, v0, v2

    const-string v1, "Cts"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.drawelements.deqp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.replica.replicaisland"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TestDeviceSetup"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Xts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NotificationBot"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->CTS_APKNAME_KEY:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static final getInstance()Lcom/android/server/pm/OppoAdbInstallerManager;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/pm/OppoAdbInstallerManager;->mOppoAdbInstallerManager:Lcom/android/server/pm/OppoAdbInstallerManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/pm/OppoAdbInstallerManager;

    invoke-direct {v0}, Lcom/android/server/pm/OppoAdbInstallerManager;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoAdbInstallerManager;->mOppoAdbInstallerManager:Lcom/android/server/pm/OppoAdbInstallerManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/android/server/pm/OppoAdbInstallerManager;->mOppoAdbInstallerManager:Lcom/android/server/pm/OppoAdbInstallerManager;

    return-object v0
.end method

.method private initFile()V
    .locals 5

    .prologue
    .line 225
    const-string v3, "OppoAdbInstallerManager"

    const-string v4, "initFile start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/config"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "systemConfigPath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/config/adb_installer_status.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "adbInstallerPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 237
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/pm/OppoAdbInstallerManager;->saveAdbInstallerStatusFile(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;

    const-string v4, "/data/system/config/adb_installer_status.xml"

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;-><init>(Lcom/android/server/pm/OppoAdbInstallerManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mAdbInstallerFileObserver:Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;

    .line 245
    iget-object v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mAdbInstallerFileObserver:Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;

    invoke-virtual {v3}, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;->startWatching()V

    .line 246
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "OppoAdbInstallerManager"

    const-string v4, "initFile failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private readFromStatusFileLocked(Ljava/io/File;)Z
    .locals 12
    .param p1, "adbInstallerStatusFile"    # Ljava/io/File;

    .prologue
    .line 281
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "readFromStatusFileLocked!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v5, 0x0

    .line 283
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 285
    .local v2, "status":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 287
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 292
    .local v8, "type":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 293
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "tag":Ljava/lang/String;
    const-string v9, "p"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 295
    const/4 v9, 0x0

    const-string v10, "att"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 297
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readFromStatusFileLocked  status == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 302
    .end local v4    # "str":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 315
    if-eqz v6, :cond_2

    .line 316
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    move v3, v2

    .line 321
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "status":Z
    .end local v8    # "type":I
    .local v3, "status":Z
    :goto_1
    return v3

    .line 318
    .end local v3    # "status":Z
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "status":Z
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    if-eqz v5, :cond_3

    .line 316
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :goto_3
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "status":Z
    :catch_2
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_5
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 315
    if-eqz v5, :cond_4

    .line 316
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_5
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "status":Z
    :catch_4
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 308
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_7
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 315
    if-eqz v5, :cond_5

    .line 316
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_7
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "status":Z
    :catch_6
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 310
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "failed IOException "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 315
    if-eqz v5, :cond_6

    .line 316
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_6
    :goto_9
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v2    # "status":Z
    :catch_8
    move-exception v0

    .line 319
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_a
    :try_start_b
    const-string v9, "OppoAdbInstallerManager"

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 315
    if-eqz v5, :cond_7

    .line 316
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    :goto_b
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "status":Z
    :catch_a
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 315
    :goto_c
    if-eqz v5, :cond_8

    .line 316
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_8
    :goto_d
    move v3, v2

    .line 321
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 318
    .end local v3    # "status":Z
    .restart local v2    # "status":Z
    :catch_b
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_c

    .line 311
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 309
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 307
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 305
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 303
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private writeToStatusFileLocked(Ljava/io/File;Z)V
    .locals 9
    .param p1, "adbInstallerStatusFile"    # Ljava/io/File;
    .param p2, "status"    # Z

    .prologue
    .line 333
    sget-boolean v5, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 334
    const-string v5, "OppoAdbInstallerManager"

    const-string v6, "writeToStatusFileLocked!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    const/4 v3, 0x0

    .line 338
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 341
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 342
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 343
    const/4 v5, 0x0

    const-string v6, "gs"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 347
    const/4 v5, 0x0

    const-string v6, "p"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    const/4 v5, 0x0

    const-string v6, "p"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    :cond_1
    const/4 v5, 0x0

    const-string v6, "gs"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    if-eqz v4, :cond_2

    .line 359
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    .line 365
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 361
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "OppoAdbInstallerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 364
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 355
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "OppoAdbInstallerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    if-eqz v3, :cond_3

    .line 359
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 361
    :catch_2
    move-exception v0

    .line 362
    const-string v5, "OppoAdbInstallerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 358
    :goto_2
    if-eqz v3, :cond_4

    .line 359
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 363
    :cond_4
    :goto_3
    throw v5

    .line 361
    :catch_3
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "OppoAdbInstallerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close state FileInputStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 354
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public handForAdbInstallerCancel(Ljava/lang/String;)V
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v1, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "OppoAdbInstallerManager"

    const-string v2, "handAdbInstallCancel!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_1

    .line 95
    const-string v1, "OppoAdbInstallerManager"

    const-string v2, "handAdbInstallCancel mPms = null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mApkPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string v3, ""

    const/16 v4, -0x63

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 99
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 106
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public handleForAdbInstaller(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "installFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mVersion:Ljava/lang/String;

    const-string v5, "CN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    const-string v4, "OppoAdbInstallerManager"

    const-string v5, "the version isn\'t CN!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSwitch:Z

    if-nez v4, :cond_2

    .line 123
    const-string v4, "OppoAdbInstallerManager"

    const-string v5, "handleForAdbInstaller mSwitch = false !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSystemReady:Z

    if-nez v4, :cond_3

    .line 128
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSystemReady:Z

    .line 129
    iget-boolean v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSystemReady:Z

    if-nez v4, :cond_3

    .line 130
    const-string v4, "OppoAdbInstallerManager"

    const-string v5, "System is not ready!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v4, :cond_4

    .line 136
    const-string v4, "OppoAdbInstallerManager"

    const-string v5, "handleForAdbInstaller mPms = null !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_4
    sget-boolean v4, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_5

    .line 141
    const-string v4, "OppoAdbInstallerManager"

    const-string v5, "installPackageAsUser INSTALL_FROM_ADB !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "/storage"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "/sdcard"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OppoAdbInstallerManager;->isCtsApk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPPO_INSTALL_FROM_ADB"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "apkPath"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "installFlags"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    invoke-static {p1, p2}, Lcom/android/server/pm/OppoAdbInstallerEntry;->Builder(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/OppoAdbInstallerEntry;

    move-result-object v2

    .line 158
    .local v2, "oaie":Lcom/android/server/pm/OppoAdbInstallerEntry;
    iget-object v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v4

    .line 161
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 163
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "oaie":Lcom/android/server/pm/OppoAdbInstallerEntry;
    :cond_7
    const-string v4, "OppoAdbInstallerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  file is not exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleForAdbInstallerObserver(Ljava/lang/String;I)V
    .locals 6
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "ret"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_0

    .line 169
    const-string v1, "OppoAdbInstallerManager"

    const-string v2, "handleForAdbInstallerObserver mPms = null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-boolean v1, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "OppoAdbInstallerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleForAdbInstallerObserver apkPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mApkPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAdbInstallerEntry;

    iget-object v1, v1, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, p2, v4, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mOppoPackageInstallerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    add-int/lit8 v0, v0, -0x1

    .line 178
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 184
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public init(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/pm/OppoAdbInstallerManager;->initFile()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/pm/OppoAdbInstallerManager;->readAdbInstallerFile()V

    .line 87
    return-void
.end method

.method public isCtsApk(Ljava/lang/String;)Z
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v7, 0x0

    .line 195
    .local v7, "result":Z
    const-string v0, ""

    .line 197
    .local v0, "apkName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move v8, v7

    .line 221
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 202
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_1
    :try_start_0
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, "index":I
    if-ltz v4, :cond_3

    .line 204
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->CTS_APKNAME_KEY:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v1, v3

    .line 208
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 209
    sget-boolean v9, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_2

    .line 210
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCtsApk apkName == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_2
    const/4 v7, 0x1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v5    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    move v8, v7

    .line 221
    .restart local v8    # "result":I
    goto :goto_0

    .line 205
    .end local v8    # "result":I
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "index":I
    .restart local v5    # "len$":I
    .restart local v6    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v5    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "OppoAdbInstallerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCtsApk apkName == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2
.end method

.method public readAdbInstallerFile()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/config/adb_installer_status.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "adbInstallerStatusFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSwitch:Z

    .line 274
    invoke-direct {p0}, Lcom/android/server/pm/OppoAdbInstallerManager;->initFile()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/OppoAdbInstallerManager;->readFromStatusFileLocked(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/OppoAdbInstallerManager;->mSwitch:Z

    goto :goto_0
.end method

.method public saveAdbInstallerStatusFile(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 326
    sget-boolean v1, Lcom/android/server/pm/OppoAdbInstallerManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "OppoAdbInstallerManager"

    const-string v2, "saveAdbInstallerStatusFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/config/adb_installer_status.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "adbInstallerStatusFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/OppoAdbInstallerManager;->writeToStatusFileLocked(Ljava/io/File;Z)V

    .line 330
    return-void
.end method
