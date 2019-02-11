.class public Lcom/oppo/hypnus/Hypnus;
.super Ljava/lang/Object;
.source "Hypnus.java"


# static fields
.field public static final ACTIONINFO:Ljava/lang/String; = "/sys/kernel/hypnus/action_info"

.field public static final ACTION_AGAINST_IDLE:I = 0x10

.field public static final ACTION_ANIMATION:I = 0xb

.field public static final ACTION_AUDIO_PLAYBACK:I = 0x2

.field public static final ACTION_BURST_ANR:I = 0x13

.field public static final ACTION_BURST_BM:I = 0x14

.field public static final ACTION_BURST_GC:I = 0x11

.field public static final ACTION_BURST_LM:I = 0x12

.field public static final ACTION_DOWNLOAD:I = 0x3

.field public static final ACTION_IDLE:I = 0x0

.field public static final ACTION_INSTALLATION:I = 0xf

.field public static final ACTION_IO:I = 0xc

.field public static final ACTION_LAUNCH:I = 0xd

.field public static final ACTION_NONE:I = 0x1

.field public static final ACTION_PERFD:I = 0x63

.field public static final ACTION_PREVIEW:I = 0x5

.field public static final ACTION_PRE_LAUNCH:I = 0xa

.field public static final ACTION_RESUME:I = 0x9

.field public static final ACTION_SCROLLING_H:I = 0x8

.field public static final ACTION_SCROLLING_V:I = 0x7

.field public static final ACTION_SNAPSHOT:I = 0xe

.field public static final ACTION_VIDEO_ENCODING:I = 0x6

.field public static final ACTION_VIDEO_PLAYBACK:I = 0x4

.field public static final BURST_TYPE_GC:I = 0x1

.field public static final BURST_TYPE_LM:I = 0x2

.field public static final SCENEINFO:Ljava/lang/String; = "/sys/kernel/hypnus/scene_info"

.field public static final SCENE_BENCHMARK:I = 0x6

.field public static final SCENE_BOOT:I = 0xd

.field public static final SCENE_BROWSER:I = 0x3

.field public static final SCENE_CAMERA:I = 0x2

.field public static final SCENE_EBOOK:I = 0xb

.field public static final SCENE_GALLERY:I = 0x9

.field public static final SCENE_HEAVY_GAME:I = 0x5

.field public static final SCENE_IO:I = 0xe

.field public static final SCENE_LAUNCHER:I = 0xc

.field public static final SCENE_LIGHT_GAME:I = 0x4

.field public static final SCENE_LISTVIEW:I = 0x8

.field public static final SCENE_MUSIC:I = 0x1

.field public static final SCENE_NAVIGATION:I = 0xa

.field public static final SCENE_NORMAL:I = 0x0

.field public static final SCENE_SUPERAPP:I = 0xf

.field public static final SCENE_VIDEO:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Hypnus"

.field public static final TIME_ANIMATION:I = 0x258

.field public static final TIME_ANIMATION_100:I = 0x64

.field public static final TIME_ANIMATION_300:I = 0x12c

.field public static final TIME_ANIMATION_500:I = 0x1f4

.field public static final TIME_BM:I = 0x32

.field public static final TIME_BURST:I = 0xc7

.field public static final TIME_DEX2OAT:I = 0x4e20

.field public static final TIME_INSTALLATION:I = 0x7530

.field public static final TIME_LAUNCH:I = 0x1388

.field public static final TIME_MAX:I = 0x2bf20

.field public static final TIME_PRE_LAUNCH:I = 0x96

.field public static final TIME_SERVICE_DELAY:I = 0x186a0

.field public static final VERSION:Ljava/lang/String; = "M07"

.field public static final VERSIONINFO:Ljava/lang/String; = "/sys/kernel/hypnus/version"

.field private static mHypnusOK:Z

.field private static mName:Ljava/lang/String;

.field private static mPid:I

.field private static mVersion:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mCount:I

.field private mInIO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oppo/hypnus/Hypnus;->mHypnusOK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v6, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    .line 117
    iput-boolean v6, p0, Lcom/oppo/hypnus/Hypnus;->mInIO:Z

    .line 124
    iput v6, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    .line 126
    const-string/jumbo v4, "persist.debug.hypnus"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iput-boolean v5, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    .line 129
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/kernel/hypnus/version"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "mVersionInfoFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x3

    :try_start_1
    new-array v0, v4, [B

    .line 134
    .local v0, "b":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 136
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v4, Lcom/oppo/hypnus/Hypnus;->mVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v0    # "b":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    :goto_0
    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mVersion:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 145
    const-string v4, "Hypnus"

    const-string v5, "Hypnus version is null, is the module there?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sput-boolean v6, Lcom/oppo/hypnus/Hypnus;->mHypnusOK:Z

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 137
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    sput-boolean v5, Lcom/oppo/hypnus/Hypnus;->mHypnusOK:Z

    .line 149
    iget-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 150
    const-string v4, "Hypnus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hypnus framework module initialized, version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oppo/hypnus/Hypnus;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mVersion:Ljava/lang/String;

    const-string v5, "M07"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    const-string v4, "Hypnus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Framework: M07 module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oppo/hypnus/Hypnus;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public hypnusSetAction(II)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 194
    monitor-enter p0

    .line 195
    const/16 v4, 0x63

    if-ne v4, p1, :cond_3

    .line 196
    :try_start_0
    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 197
    monitor-exit p0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    const-string v5, "filemanager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_2

    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    const-string v5, "backuprestore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_2

    sget-object v4, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    const-string v5, "android.process.media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_9

    .line 202
    :cond_2
    if-eqz p2, :cond_6

    .line 203
    iget v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    .line 204
    iget v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    if-ne v4, v6, :cond_5

    .line 205
    const/16 p1, 0xc

    .line 206
    const p2, 0x2bf20

    .line 207
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->mInIO:Z

    .line 238
    :goto_1
    iget-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 239
    const-string v4, "Hypnus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle ACTION_PERFD, name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    new-instance v2, Ljava/io/File;

    const-string v4, "/sys/kernel/hypnus/action_info"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "mActionInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 249
    .local v3, "out":Ljava/io/FileOutputStream;
    const-string v4, "%d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 251
    .local v1, "info":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 252
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .end local v1    # "info":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 261
    const-string v4, "Hypnus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hypnusSetAction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    .end local v2    # "mActionInfoFile":Ljava/io/File;
    :cond_5
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 242
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 215
    :cond_6
    :try_start_4
    iget v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    .line 216
    iget v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    if-nez v4, :cond_7

    .line 217
    const/16 p1, 0xc

    .line 218
    const/4 p2, 0x0

    .line 219
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->mInIO:Z

    goto/16 :goto_1

    .line 221
    :cond_7
    iget v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    if-gez v4, :cond_8

    .line 222
    const/4 v4, 0x0

    iput v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    .line 224
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    .line 229
    :cond_9
    iget-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->mInIO:Z

    if-ne v6, v4, :cond_a

    .line 230
    const/16 p1, 0xc

    .line 231
    const/4 p2, 0x0

    .line 232
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/hypnus/Hypnus;->mInIO:Z

    .line 233
    const/4 v4, 0x0

    iput v4, p0, Lcom/oppo/hypnus/Hypnus;->mCount:I

    goto/16 :goto_1

    .line 235
    :cond_a
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 253
    .restart local v1    # "info":Ljava/lang/String;
    .restart local v2    # "mActionInfoFile":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 256
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "info":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public hypnusSetBurst(III)V
    .locals 9
    .param p1, "tid"    # I
    .param p2, "type"    # I
    .param p3, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "act":I
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/kernel/hypnus/action_info"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "mActionInfoFile":Ljava/io/File;
    packed-switch p2, :pswitch_data_0

    .line 277
    const-string v5, "Hypnus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hypnusSetBurst: Inavlid burst type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/16 v0, 0x11

    .line 271
    if-lez p1, :cond_2

    const/16 p3, 0xc7

    .line 280
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    .local v4, "out":Ljava/io/FileOutputStream;
    const-string v5, "%d %d %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 285
    .local v2, "info":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 286
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    iget-boolean v5, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 295
    const-string v5, "Hypnus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hypnusSetBurst tid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " act:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move p3, v5

    .line 271
    goto :goto_1

    .line 274
    :pswitch_1
    const/16 v0, 0x12

    .line 275
    goto :goto_1

    .line 287
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 290
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 291
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hypnusSetScene(ILjava/lang/String;)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 159
    sget v5, Lcom/oppo/hypnus/Hypnus;->mPid:I

    if-ne v5, p1, :cond_1

    .line 160
    iget-boolean v5, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 161
    const-string v5, "Hypnus"

    const-string v6, "Same PID ignore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sput p1, Lcom/oppo/hypnus/Hypnus;->mPid:I

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "scene":I
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/kernel/hypnus/scene_info"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "mSceneInfoFile":Ljava/io/File;
    const-string v5, "%d %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "info":Ljava/lang/String;
    sput-object p2, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oppo/hypnus/Hypnus;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 177
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/oppo/hypnus/Hypnus;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "Hypnus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hypnusSetScene:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isHypnusOK()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/oppo/hypnus/Hypnus;->mHypnusOK:Z

    return v0
.end method
