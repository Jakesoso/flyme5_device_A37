.class public Lcom/android/server/OppoGuardElfConfigUtil;
.super Ljava/lang/Object;
.source "OppoGuardElfConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;
    }
.end annotation


# static fields
.field public static final ABNORMAL_START_COUNT:Ljava/lang/String; = "AbnormalStartCount"

.field private static final ABNORMAL_START_COUNT_DEFA_VALUE:I = 0x32

.field public static final BROADCAST_FINISH_TIME:Ljava/lang/String; = "BroadcastFinishTime"

.field private static final BROADCAST_FINISH_TIME_VALUE:J = 0x1770L

.field public static final BROADCAST_SEND_COUNT:Ljava/lang/String; = "BroadcastSendCount"

.field private static final BROADCAST_SEND_COUNT_VALUE:J = 0x3cL

.field private static final CHECK_BROADCAST_SERVICE_TIME_OUT:J = 0x1b7740L

.field public static final CHECK_BRORDCAST_SERVICE_TIME:Ljava/lang/String; = "CheckBroadcastServiceTime"

.field public static final CHECK_START_TIME_INTERVAL:Ljava/lang/String; = "CheckStartTimeInterval"

.field private static final CHECK_START_TIME_INTERVAL_DEFA_VALUE:J = 0x493e0L

.field public static final CHECK_TOP_BROADCAST_TIME:Ljava/lang/String; = "CheckTopBroadcastTime"

.field private static final CHECK_TOP_BROADCAST_TIME_OUT:J = 0x927c0L

.field public static final CLOSE_FLAG:Ljava/lang/String; = "CloseFlag"

.field public static final COLLECT_START_COUNT:Ljava/lang/String; = "CollectStartCount"

.field private static final COLLECT_START_COUNT_DEFA_VALUE:I = 0x1e

.field private static final OPPO_GUARD_ELF_CONFIG_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/oppoguardelf_config.xml"

.field private static final OPPO_GUARD_ELF_PATH:Ljava/lang/String; = "/data/system/oppoguardelf"

.field public static final SERVICE_FINISH_TIME:Ljava/lang/String; = "ServiceFinishTime"

.field private static final SERVICE_FINISH_TIME_VALUE:J = 0x2710L

.field public static TAG:Ljava/lang/String; = null

.field public static final THRESHOLD_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdIntervalPerWakeup"

.field private static final THRESHOLD_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0x12cL

.field public static final THRESHOLD_WARNING_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdWarningIntervalPerWakeup"

.field private static final THRESHOLD_WARNING_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0x168L

.field public static final THRESHOLD_WORST_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdWorstIntervalPerWakeup"

.field private static final THRESHOLD_WORST_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0x3cL

.field public static final TOP_BROADCAST_NUMBER:Ljava/lang/String; = "TopNumber"

.field public static final TOP_NUMBER:I = 0x3

.field private static mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;


# instance fields
.field public mAbnormalStartCount:I

.field public mBroadcastFinishTime:J

.field public mBroadcastSendCount:J

.field public mCheckBroadcastServiceTime:J

.field public mCheckStartTimeInterval:J

.field public mCheckTopBroadcastTime:J

.field public mCloseFlag:Z

.field public mCollectStartCount:I

.field private mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

.field public mServiceFinishTime:J

.field public mThresholdIntervalPerWakeup:J

.field public mThresholdWarningIntervalPerWakeup:J

.field public mThresholdWorstIntervalPerWakeup:J

.field public mTopBroadcastNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "OppoGuardElfConfigUtil"

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 71
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 74
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 77
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 80
    const-wide/16 v0, 0x168

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 83
    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    .line 91
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastFinishTime:J

    .line 95
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mServiceFinishTime:J

    .line 98
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckBroadcastServiceTime:J

    .line 99
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckTopBroadcastTime:J

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mTopBroadcastNumber:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCloseFlag:Z

    .line 109
    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastSendCount:J

    .line 113
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->initDir()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->initFileObserver()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->readConfigFile()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OppoGuardElfConfigUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoGuardElfConfigUtil;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->readConfigFile()V

    return-void
.end method

.method public static final getInstance()Lcom/android/server/OppoGuardElfConfigUtil;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/server/OppoGuardElfConfigUtil;

    invoke-direct {v0}, Lcom/android/server/OppoGuardElfConfigUtil;-><init>()V

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 128
    sget-object v3, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "initDir start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/oppoguardelf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "oppoGuardElfFilePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "oppoGuardElfConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 138
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "init OppoGuardElfConfigUtil Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;-><init>(Lcom/android/server/OppoGuardElfConfigUtil;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    .line 149
    iget-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->startWatching()V

    .line 150
    return-void
.end method

.method private readConfigFile()V
    .locals 10

    .prologue
    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 253
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 254
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    .local v4, "xmlFile":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .local v6, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 264
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 265
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_13

    .line 266
    packed-switch v1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .line 257
    .end local v1    # "eventType":I
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    if-eqz v5, :cond_1

    .line 325
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 327
    :cond_1
    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 334
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 330
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AbnormalStartCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 272
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 273
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateAbnormalStartCount(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 318
    .end local v1    # "eventType":I
    :catch_2
    move-exception v0

    move-object v5, v6

    .line 319
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 324
    if-eqz v5, :cond_3

    .line 325
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 327
    :cond_3
    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 330
    :catch_3
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_4
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CollectStartCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 275
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 276
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateCollectStartCount(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 320
    .end local v1    # "eventType":I
    :catch_4
    move-exception v0

    move-object v5, v6

    .line 321
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    :try_start_9
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 324
    if-eqz v5, :cond_5

    .line 325
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 327
    :cond_5
    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 330
    :catch_5
    move-exception v0

    .line 331
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_6
    :try_start_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CheckStartTimeInterval"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 278
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 279
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateCheckStartTimeInterval(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 323
    .end local v1    # "eventType":I
    :catchall_0
    move-exception v7

    move-object v5, v6

    .line 324
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_5
    if-eqz v5, :cond_7

    .line 325
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 327
    :cond_7
    if-eqz v3, :cond_8

    .line 328
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 332
    :cond_8
    :goto_6
    throw v7

    .line 280
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_9
    :try_start_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 281
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 282
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdIntervalPerWakeup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    :cond_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdWarningIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 284
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 285
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdWarningIntervalPerWakeup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdWorstIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 287
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 288
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdWorstIntervalPerWakeup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    :cond_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BroadcastFinishTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 290
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 291
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastFinishTime:J

    goto/16 :goto_1

    .line 292
    :cond_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ServiceFinishTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 293
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 294
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mServiceFinishTime:J

    goto/16 :goto_1

    .line 295
    :cond_e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CheckBroadcastServiceTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 296
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 297
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x1b7740

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckBroadcastServiceTime:J

    goto/16 :goto_1

    .line 298
    :cond_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CheckTopBroadcastTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 299
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 300
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x927c0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckTopBroadcastTime:J

    goto/16 :goto_1

    .line 301
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TopNumber"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 302
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 303
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x3

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v7, v8

    iput v7, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mTopBroadcastNumber:I

    goto/16 :goto_1

    .line 304
    :cond_11
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CloseFlag"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 305
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 306
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateCloseFlag(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCloseFlag:Z

    goto/16 :goto_1

    .line 307
    :cond_12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BroadcastSendCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 308
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 309
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x3c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/OppoGuardElfConfigUtil;->updateBroadcastAndServiceTime(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastSendCount:J
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 324
    :cond_13
    if-eqz v6, :cond_14

    .line 325
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 327
    :cond_14
    if-eqz v3, :cond_15

    .line 328
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_15
    move-object v5, v6

    .line 332
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 330
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 333
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    :catch_7
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto/16 :goto_5

    .line 320
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 318
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAbnormalStartCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    return v0
.end method

.method public getBroadcastFinishTime()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastFinishTime:J

    return-wide v0
.end method

.method public getBroadcastSendCount()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mBroadcastSendCount:J

    return-wide v0
.end method

.method public getCheckBroadcastServiceTime()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckBroadcastServiceTime:J

    return-wide v0
.end method

.method public getCheckStartTimeInterval()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    return-wide v0
.end method

.method public getCheckTopBroadcastTime()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckTopBroadcastTime:J

    return-wide v0
.end method

.method public getCloseFlag()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCloseFlag:Z

    return v0
.end method

.method public getCollectStartCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    return v0
.end method

.method public getServiceFinishTime()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mServiceFinishTime:J

    return-wide v0
.end method

.method public getThresholdIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    return-wide v0
.end method

.method public getThresholdWarningIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    return-wide v0
.end method

.method public getThresholdWorstIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    return-wide v0
.end method

.method public getTopBroadcastNumber()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mTopBroadcastNumber:I

    return v0
.end method

.method public setAbnormalStartCount(I)V
    .locals 0
    .param p1, "abnormalStartCount"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 158
    return-void
.end method

.method public setCheckStartTimeInterval(J)V
    .locals 1
    .param p1, "checkStartTimeInterval"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 174
    return-void
.end method

.method public setCollectStartCount(I)V
    .locals 0
    .param p1, "collectStartCount"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 166
    return-void
.end method

.method public setThresholdIntervalPerWakeup(J)V
    .locals 1
    .param p1, "thresholdIntervalPerWakeup"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 182
    return-void
.end method

.method public setThresholdWarningIntervalPerWakeup(J)V
    .locals 1
    .param p1, "thresholdWarningIntervalPerWakeup"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 190
    return-void
.end method

.method public updateAbnormalStartCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "abnormalStartCount"    # Ljava/lang/String;

    .prologue
    .line 337
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAbnormalStartCount abnormalStartCount == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 342
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateAbnormalStartCount NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateBroadcastAndServiceTime(Ljava/lang/String;J)J
    .locals 6
    .param p1, "timeCountStr"    # Ljava/lang/String;
    .param p2, "defaultCount"    # J

    .prologue
    .line 223
    const-wide/16 v2, -0x1

    .line 225
    .local v2, "timeCount":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide p2, v2

    .line 230
    .end local p2    # "defaultCount":J
    :goto_0
    return-wide p2

    .line 226
    .restart local p2    # "defaultCount":J
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "updateBroadcastAndServiceTime NumberFormatException: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCheckStartTimeInterval(Ljava/lang/String;)V
    .locals 4
    .param p1, "checkStartTimeInterval"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCheckStartTimeInterval checkStartTimeInterval == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 362
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateCheckStartTimeInterval NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCloseFlag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "flagStr"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x1

    .line 236
    .local v0, "closeFlag":Z
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 240
    .end local v0    # "closeFlag":Z
    .local v1, "closeFlag":I
    :goto_0
    return v1

    .line 237
    .end local v1    # "closeFlag":I
    .restart local v0    # "closeFlag":Z
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "updateCloseFlag NumberFormatException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    .line 240
    .restart local v1    # "closeFlag":I
    goto :goto_0
.end method

.method public updateCollectStartCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "collectStartCount"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCollectStartCount collectStartCount == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 352
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateCollectStartCount NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 367
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdIntervalPerWakeup thresholdIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 372
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdWarningIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdWarningIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdWarningIntervalPerWakeup thresholdWarningIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x168

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 382
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdWarningIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdWorstIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdWorstIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 387
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdWorstIntervalPerWakeup thresholdWorstIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x3c

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    .line 392
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdWorstIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
