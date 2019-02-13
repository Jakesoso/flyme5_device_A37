.class public Lcom/oppo/ota/OppoOtaUtils;
.super Ljava/lang/Object;
.source "OppoOtaUtils.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "ZhiYong.Lin@Plf.Framework add for ota update result "
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final OTA_UPDATE_FAILED:Ljava/lang/String; = "1"

.field private static final OTA_UPDATE_OK:Ljava/lang/String; = "0"

.field private static final RECOVER_UPDATE_FAILED:Ljava/lang/String; = "3"

.field private static final RECOVER_UPDATE_OK:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "OppoOtaUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyOTAUpdateResult(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "isSauUpdate":Z
    const-string v3, "/cache/recovery/last_install"

    .line 60
    .local v3, "lastInstallPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "lastInstallFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    invoke-static {v3}, Lcom/oppo/ota/OppoOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "otaResultStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "/.SAU/zip/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 68
    .end local v6    # "otaResultStr":Ljava/lang/String;
    :cond_0
    const-string v4, "/cache/recovery/intent"

    .line 69
    .local v4, "otaFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "file":Ljava/io/File;
    const-string v7, "OppoOtaUtils"

    const-string v8, "check /cache/recovery/intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    const-string v7, "OppoOtaUtils"

    const-string v8, "/cache/recovery/intent file is exist!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v4}, Lcom/oppo/ota/OppoOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .restart local v6    # "otaResultStr":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    const-string v7, "OppoOtaUtils"

    const-string v8, "OTA update successed!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v5, Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v7, "android.intent.action.OPPO_SAU_UPDATE_SUCCESSED"

    :goto_0
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "otaIntent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    const-string/jumbo v7, "persist.sys.panictime"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v5    # "otaIntent":Landroid/content/Intent;
    .end local v6    # "otaResultStr":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 79
    .restart local v6    # "otaResultStr":Ljava/lang/String;
    :cond_2
    const-string v7, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    goto :goto_0

    .line 85
    :cond_3
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 86
    const-string v7, "OppoOtaUtils"

    const-string v8, "OTA update failed!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v5, Landroid/content/Intent;

    if-eqz v1, :cond_4

    const-string v7, "android.intent.action.OPPO_SAU_UPDATE_FAILED"

    :goto_2
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v5    # "otaIntent":Landroid/content/Intent;
    invoke-static {p0, v5}, Lcom/oppo/ota/OppoOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    .end local v5    # "otaIntent":Landroid/content/Intent;
    :cond_4
    const-string v7, "android.intent.action.OPPO_OTA_UPDATE_FAILED"

    goto :goto_2

    .line 91
    :cond_5
    const-string v7, "2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 92
    const-string v7, "OppoOtaUtils"

    const-string v8, "Recover update ok!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v5    # "otaIntent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 96
    .end local v5    # "otaIntent":Landroid/content/Intent;
    :cond_6
    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 97
    const-string v7, "OppoOtaUtils"

    const-string v8, "Recover update failed!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.OPPO_RECOVER_UPDATE_FAILED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v5    # "otaIntent":Landroid/content/Intent;
    invoke-static {p0, v5}, Lcom/oppo/ota/OppoOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    .end local v5    # "otaIntent":Landroid/content/Intent;
    :cond_7
    const-string v7, "OppoOtaUtils"

    const-string v8, "OTA update file\'s date is invalid!!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v5, 0x0

    .line 194
    .local v5, "resultStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 196
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 204
    if-eqz v4, :cond_2

    .line 206
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 213
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v5

    .line 207
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string/jumbo v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 209
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 201
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "OppoOtaUtils"

    const-string/jumbo v7, "readOTAUpdateResult failed!!!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    if-eqz v3, :cond_0

    .line 206
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 207
    :catch_2
    move-exception v1

    .line 208
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string/jumbo v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 206
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 209
    :cond_1
    :goto_3
    throw v6

    .line 207
    :catch_3
    move-exception v1

    .line 208
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "OppoOtaUtils"

    const-string/jumbo v8, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 204
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 201
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private static sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otaIntent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v17, "ERROR: Open file"

    .line 110
    .local v17, "updatePackageNotExist":Ljava/lang/String;
    const-string/jumbo v16, "signature verification failed"

    .line 111
    .local v16, "signVerifiFailed":Ljava/lang/String;
    const-string/jumbo v9, "has unexpected contents"

    .line 112
    .local v9, "fileNotMatch":Ljava/lang/String;
    const-string v2, "Not enough free space on"

    .line 114
    .local v2, "cacheNotEnough":Ljava/lang/String;
    const/4 v8, -0x1

    .line 115
    .local v8, "failTypeUpdatePackageNotExist":I
    const/4 v7, -0x2

    .line 116
    .local v7, "failTypeSignVerifiFailed":I
    const/4 v6, -0x3

    .line 117
    .local v6, "failTypeFileNotMatch":I
    const/4 v5, -0x4

    .line 119
    .local v5, "failTypeCacheNotEnough":I
    const-string v11, "/cache/recovery/last_log"

    .line 120
    .local v11, "otaLogPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, "otaLogfile":Ljava/io/File;
    const-string v18, "OppoOtaUtils"

    const-string v19, "check /cache/recovery/last_log"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 124
    const-string v18, "OppoOtaUtils"

    const-string v19, "/cache/recovery/last_log file is exist!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v15, 0x0

    .line 127
    .local v15, "resultStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 128
    .local v13, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 131
    .local v10, "hasSendIntent":Z
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 133
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 134
    const-string v18, "OppoOtaUtils"

    const-string/jumbo v19, "update package not found!!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v18, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v18, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    const-string v18, "OppoOtaUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error log is \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v10, 0x1

    .line 171
    :cond_1
    :goto_0
    if-nez v10, :cond_2

    .line 172
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :cond_2
    if-eqz v14, :cond_3

    .line 179
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    .end local v10    # "hasSendIntent":Z
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "resultStr":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v18, "OppoOtaUtils"

    const-string v19, "deal ota log pass!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 142
    .restart local v10    # "hasSendIntent":Z
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "resultStr":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 143
    const-string v18, "OppoOtaUtils"

    const-string/jumbo v19, "signature verification failed!!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v18, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v18, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    const-string v18, "OppoOtaUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error log is \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v10, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 152
    const-string v18, "OppoOtaUtils"

    const-string/jumbo v19, "some file not match original!!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v18, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v18, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const-string v18, "OppoOtaUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error log is \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v10, 0x1

    .line 159
    goto/16 :goto_0

    .line 160
    :cond_6
    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 161
    const-string v18, "OppoOtaUtils"

    const-string v19, "cache have no enough space!!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v18, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v18, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    const-string v18, "OppoOtaUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error log is \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    const/4 v10, 0x1

    .line 168
    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e1":Ljava/io/IOException;
    const-string v18, "OppoOtaUtils"

    const-string/jumbo v19, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 174
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v18, "OppoOtaUtils"

    const-string v19, "get OTA error message failed!!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    if-eqz v13, :cond_3

    .line 179
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 180
    :catch_2
    move-exception v4

    .line 181
    .restart local v4    # "e1":Ljava/io/IOException;
    const-string v18, "OppoOtaUtils"

    const-string/jumbo v19, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_3
    if-eqz v13, :cond_7

    .line 179
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 182
    :cond_7
    :goto_4
    throw v18

    .line 180
    :catch_3
    move-exception v4

    .line 181
    .restart local v4    # "e1":Ljava/io/IOException;
    const-string v19, "OppoOtaUtils"

    const-string/jumbo v20, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 177
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 174
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
