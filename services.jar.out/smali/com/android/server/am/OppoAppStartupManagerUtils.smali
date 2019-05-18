.class public Lcom/android/server/am/OppoAppStartupManagerUtils;
.super Ljava/lang/Object;
.source "OppoAppStartupManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "action"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "activity"

.field private static final BLACKGUARD_NAME:Ljava/lang/String; = "blackguard"

.field private static final OPPO_STARTUP_MANAGER_FILE_PATH:Ljava/lang/String; = "/data/system/startup_manager.xml"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "provider"

.field private static final RECEIVER_NAME:Ljava/lang/String; = "receiver"

.field private static final SEVICECPN_NAME:Ljava/lang/String; = "sevicecpn"

.field private static final TAG:Ljava/lang/String;

.field private static mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;


# instance fields
.field private DEBUG_DETAIL:Z

.field DEBUG_SWITCH:Z

.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProviderBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeviceCpnBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    .line 70
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->initDir()V

    .line 71
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->initFileObserver()V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->readStartupManagerFile()V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/am/OppoAppStartupManagerUtils;

    invoke-direct {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    return-object v0
.end method

.method private initDir()V
    .locals 4

    .prologue
    .line 83
    sget-object v2, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "initDir start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/startup_manager.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "startupManagerFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "initDir failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAppStartupManagerUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    .line 99
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->startWatching()V

    .line 100
    return-void
.end method

.method private readFromFileLocked(Ljava/io/File;)V
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_0

    .line 136
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "readFromFileLocked start"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 150
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 154
    :cond_5
    const/4 v9, 0x0

    .line 156
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 159
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v5, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    :cond_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 164
    .local v12, "type":I
    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 165
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_7

    .line 167
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked tagName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    const-string v13, "sevicecpn"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 171
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "sevicecpn":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 175
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked sevicecpn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v8    # "sevicecpn":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_0
    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 233
    if-eqz v10, :cond_9

    .line 234
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    :cond_9
    move-object v9, v10

    .line 240
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v12    # "type":I
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :cond_a
    :goto_1
    return-void

    .line 178
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_b
    :try_start_3
    const-string v13, "receiver"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 179
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "receiver":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 183
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked receiver = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 221
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "receiver":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 222
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    if-eqz v9, :cond_a

    .line 234
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 236
    :catch_1
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_c
    :try_start_6
    const-string v13, "provider"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 187
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "provider":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v13, :cond_8

    .line 191
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked provider = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 223
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "provider":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v4

    move-object v9, v10

    .line 224
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    if-eqz v9, :cond_a

    .line 234
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 236
    :catch_3
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_d
    :try_start_9
    const-string v13, "activity"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 195
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "activity":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 199
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 225
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_4
    move-exception v4

    move-object v9, v10

    .line 226
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_4
    :try_start_a
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 233
    if-eqz v9, :cond_a

    .line 234
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 236
    :catch_5
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_e
    :try_start_c
    const-string v13, "action"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 203
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "action":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 207
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 227
    .end local v1    # "action":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_6
    move-exception v4

    move-object v9, v10

    .line 228
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_d
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed IOException "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 233
    if-eqz v9, :cond_a

    .line 234
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 236
    :catch_7
    move-exception v4

    .line 237
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_f
    :try_start_f
    const-string v13, "blackguard"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 211
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "blackguard":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 215
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked blackguard = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_0

    .line 229
    .end local v3    # "blackguard":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_8
    move-exception v4

    move-object v9, v10

    .line 230
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_10
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 233
    if-eqz v9, :cond_a

    .line 234
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_1

    .line 236
    :catch_9
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "type":I
    :catch_a
    move-exception v4

    .line 237
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 239
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 232
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catchall_0
    move-exception v13

    .line 233
    :goto_7
    if-eqz v9, :cond_10

    .line 234
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 238
    :cond_10
    :goto_8
    throw v13

    .line 236
    :catch_b
    move-exception v4

    .line 237
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to close state FileInputStream "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 232
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 229
    :catch_c
    move-exception v4

    goto :goto_6

    .line 227
    :catch_d
    move-exception v4

    goto/16 :goto_5

    .line 225
    :catch_e
    move-exception v4

    goto/16 :goto_4

    .line 223
    :catch_f
    move-exception v4

    goto/16 :goto_3

    .line 221
    :catch_10
    move-exception v4

    goto/16 :goto_2
.end method


# virtual methods
.method public getActionBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getActivityBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getBlackguardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    return-object v0
.end method

.method public getProviderBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getReceiverBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getSeviceCpnBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public readStartupManagerFile()V
    .locals 3

    .prologue
    .line 127
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v2, "readFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "startupManagerFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->readFromFileLocked(Ljava/io/File;)V

    .line 131
    return-void
.end method

.method public setDynamicDebugSwitch()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_SWITCH:Z

    .line 267
    return-void
.end method
