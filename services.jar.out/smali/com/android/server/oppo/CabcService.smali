.class public Lcom/android/server/oppo/CabcService;
.super Lcom/android/internal/cabc/ICabcManager$Stub;
.source "CabcService.java"


# static fields
.field private static DEBUG:Z = false

.field private static final PROP_LOG_CABC:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final TAG:Ljava/lang/String; = "CabcService"

.field private static final cabc_node:Ljava/lang/String; = "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_CABC"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitModeFromDriver:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/cabc/ICabcManager$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/oppo/CabcService;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/server/oppo/CabcService;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/CabcService;->mInitModeFromDriver:I

    .line 40
    return-void
.end method

.method private getCurrentCabcMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 111
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_CABC"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "cabcFile":Ljava/io/File;
    const/16 v5, 0xa

    new-array v0, v5, [C

    .line 113
    .local v0, "a":[C
    const-string v4, ""

    .line 116
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 117
    .local v3, "fr":Ljava/io/FileReader;
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    .line 118
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v3    # "fr":Ljava/io/FileReader;
    :goto_0
    sget-boolean v5, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "CabcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentCabcMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-object v4

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    const-string v5, "CabcService"

    const-string v6, "read cabc node failed!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getModeStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    .line 72
    .local v0, "modeStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 65
    .end local v0    # "modeStr":Ljava/lang/String;
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "modeStr":Ljava/lang/String;
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseMode(Ljava/lang/String;)I
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-boolean v1, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMode mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 143
    .local v0, "result":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "result":I
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 136
    .end local v0    # "result":I
    :cond_2
    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 138
    .end local v0    # "result":I
    :cond_3
    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const/4 v0, 0x3

    .restart local v0    # "result":I
    goto :goto_0

    .line 141
    .end local v0    # "result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private writeCabcNode(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 89
    sget-boolean v5, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "CabcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeCabcNode, new mode is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 91
    :cond_1
    const-string v5, "CabcService"

    const-string v6, "writeCabcNode:mode unavailable!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v4

    .line 94
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_CABC"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "cabcFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 97
    .local v2, "fr":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "fr":Ljava/io/FileWriter;
    .local v3, "fr":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 100
    sget-boolean v5, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "CabcService"

    const-string v6, "write cabc node succeed!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "fr":Ljava/io/FileWriter;
    .restart local v2    # "fr":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    const-string v5, "CabcService"

    const-string v6, "write cabc node failed!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fr":Ljava/io/FileWriter;
    .restart local v3    # "fr":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileWriter;
    .restart local v2    # "fr":Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public closeCabc()V
    .locals 3

    .prologue
    .line 76
    sget-boolean v1, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CabcService"

    const-string v2, "closeCabc."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/server/oppo/CabcService;->getCurrentCabcMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oppo/CabcService;->parseMode(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "currentMode":I
    if-eqz v0, :cond_1

    .line 79
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/oppo/CabcService;->getModeStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oppo/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    .line 81
    :cond_1
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/oppo/CabcService;->getCurrentCabcMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oppo/CabcService;->parseMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openCabc()V
    .locals 3

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CabcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCabc, mInitModeFromDriver is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/oppo/CabcService;->mInitModeFromDriver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/server/oppo/CabcService;->mInitModeFromDriver:I

    invoke-direct {p0, v0}, Lcom/android/server/oppo/CabcService;->getModeStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oppo/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 43
    sget-boolean v1, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/oppo/CabcService;->getModeStr(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "modeStr":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 46
    sget-boolean v1, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed! illegal param."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/oppo/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    sget-boolean v1, Lcom/android/server/oppo/CabcService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successful!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
