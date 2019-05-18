.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final BOOT_REASON_FILE:Ljava/lang/String; = "/sys/power/app_boot"

.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# instance fields
.field public final MSG_UPDATEIMEI:I

.field public final MSG_UPDATESTATE:I

.field private mContext:Landroid/content/Context;

.field mGetStateHandler:Landroid/os/Handler;

.field private final mLastExceptionProc:Ljava/lang/String;

.field private final mLastExceptionProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x18000

    :goto_0
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 77
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    return-void

    .line 74
    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 475
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/BootReceiver;->MSG_UPDATESTATE:I

    .line 476
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/server/BootReceiver;->MSG_UPDATEIMEI:I

    .line 477
    new-instance v0, Lcom/android/server/BootReceiver$3;

    invoke-direct {v0, p0}, Lcom/android/server/BootReceiver$3;-><init>(Lcom/android/server/BootReceiver;)V

    iput-object v0, p0, Lcom/android/server/BootReceiver;->mGetStateHandler:Landroid/os/Handler;

    .line 586
    const-string v0, "/proc/sys/kernel/hung_task_oppo_kill"

    iput-object v0, p0, Lcom/android/server/BootReceiver;->mLastExceptionProc:Ljava/lang/String;

    .line 588
    const-string/jumbo v0, "persist.hungtask.oppo.kill"

    iput-object v0, p0, Lcom/android/server/BootReceiver;->mLastExceptionProperty:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BootReceiver;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->updateSerialNoNVLid()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BootReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BootReceiver;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->isRebootExceptionFromBolckException()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Ljava/io/File;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/BootReceiver;Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/os/DropBoxManager;
    .param p2, "x2"    # Landroid/content/SharedPreferences;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16
    .param p1, "db"    # Landroid/os/DropBoxManager;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const-string v13, "BootReceiver"

    const-string v14, "Copying audit failures to DropBox"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v3, Ljava/io/File;

    const-string v13, "/proc/last_kmsg"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 420
    .local v4, "fileTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-gtz v13, :cond_2

    .line 421
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    const-string v13, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 425
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_0

    .line 427
    if-eqz p2, :cond_3

    .line 428
    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 429
    .local v8, "lastTime":J
    cmp-long v13, v8, v4

    if-eqz v13, :cond_0

    .line 432
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v13, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    .end local v8    # "lastTime":J
    :cond_3
    const-string v13, "[[TRUNCATED]]\n"

    move/from16 v0, p4

    invoke-static {v3, v0, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 436
    .local v11, "log":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v10, v2, v6

    .line 438
    .local v10, "line":Ljava/lang/String;
    const-string v13, "audit"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 439
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 442
    .end local v10    # "line":Ljava/lang/String;
    :cond_5
    const-string v13, "BootReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " worth of audits to DropBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "db"    # Landroid/os/DropBoxManager;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    return-void
.end method

.method private addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "db"    # Landroid/os/DropBoxManager;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "footers"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "maxSize"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    if-eqz p1, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 389
    .local v4, "fileTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 391
    if-eqz p2, :cond_2

    .line 392
    const-wide/16 v8, 0x0

    move-object/from16 v0, p5

    invoke-interface {p2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 393
    .local v6, "lastTime":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 396
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v8, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    .end local v6    # "lastTime":J
    :cond_2
    const-string v8, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to DropBox ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[[TRUNCATED]]\n"

    move/from16 v0, p6

    invoke-static {v2, v0, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "text":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BootReceiver;->readBootReason()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "kernel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "SYSTEM_LAST_KMSG"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 407
    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {p1, v0, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 19
    .param p1, "db"    # Landroid/os/DropBoxManager;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    const/16 v18, 0x0

    .line 449
    .local v18, "upload_needed":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v2, "BootReceiver"

    const-string v3, "Checking for fsck errors"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v10, Ljava/io/File;

    const-string v2, "/dev/fscklogs/log"

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 454
    .local v12, "fileTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    .line 456
    const-string v2, "[[TRUNCATED]]\n"

    move/from16 v0, p4

    invoke-static {v10, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 457
    .local v16, "log":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v14, :cond_2

    aget-object v15, v9, v11

    .line 459
    .local v15, "line":Ljava/lang/String;
    const-string v2, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    const/16 v18, 0x1

    .line 465
    .end local v15    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v18, :cond_3

    .line 466
    const-string v6, "/dev/fscklogs/log"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 458
    .restart local v15    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private isHasRooted()Z
    .locals 9

    .prologue
    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, "res":Z
    const/4 v0, 0x0

    .line 354
    .local v0, "file":Ljava/io/File;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "/system/xbin/"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "/system/sbin/"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "/sbin/"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "/vendor/bin/"

    aput-object v7, v5, v6

    .line 356
    .local v5, "suPaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    :goto_0
    :try_start_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 357
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    const/4 v3, 0x1

    .line 360
    const-string v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DO ROOTED, detected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string/jumbo v6, "persist.sys.root.state"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .line 369
    .end local v3    # "res":Z
    .local v4, "res":I
    :goto_1
    return v4

    .line 356
    .end local v4    # "res":I
    .restart local v3    # "res":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 368
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_2
    const-string v6, "BootReceiver"

    const-string v7, "NO ROOTED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 369
    .restart local v4    # "res":I
    goto :goto_1

    .line 365
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "res":I
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private isLastSystemServerRebootFormBolckException()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 593
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/sys/kernel/hung_task_oppo_kill"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 594
    const-string v5, "BootReceiver"

    const-string/jumbo v6, "reboot file is not exists"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 611
    :cond_0
    :goto_0
    return-object v3

    .line 598
    :cond_1
    const/4 v1, 0x0

    .line 600
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/sys/kernel/hung_task_oppo_kill"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "strSend":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 603
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 605
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "strSend":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_1
    move-object v3, v4

    .line 611
    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private isRebootExceptionFromBolckException()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    const-string/jumbo v1, "persist.hungtask.oppo.kill"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "strSend":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    .end local v0    # "strSend":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "strSend":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 21
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v2, "dropbox"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 199
    .local v3, "db":Landroid/os/DropBoxManager;
    const-string/jumbo v2, "log_files"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 200
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x200

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Build: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Hardware: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Revision: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "ro.revision"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Bootloader: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Radio: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Kernel: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/version"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    const-string v9, "...\n"

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "headers":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BootReceiver;->readBootReason()Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, "bootReason":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BootReceiver;->isHasRooted()Z

    move-result v16

    .line 214
    .local v16, "isRooted":Z
    const-string v2, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aha! Boot reason is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isRooted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v19

    .line 219
    .local v19, "recovery":Ljava/lang/String;
    if-eqz v19, :cond_0

    if-eqz v3, :cond_0

    .line 220
    const-string v2, "SYSTEM_RECOVERY_LOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    const-string v6, ""

    .line 224
    .local v6, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x200

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Boot info:\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Last boot reason: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    :cond_1
    const-string/jumbo v2, "kernel"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "modem"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    :cond_2
    const-string/jumbo v2, "ro.runtime.firstboot"

    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_8

    .line 238
    const-string v2, "encrypted"

    const-string/jumbo v7, "ro.crypto.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "trigger_restart_min_framework"

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 247
    :goto_0
    if-eqz v3, :cond_3

    const-string v2, "SYSTEM_BOOT"

    invoke-virtual {v3, v2, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_3
    const-string/jumbo v2, "kernel"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "modem"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    :cond_4
    const-string v7, "/sys/fs/pstore/console-ramoops"

    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v8, v2

    const-string v9, "SYSTEM_LAST_KMSG"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    const-string v11, "/cache/recovery/log"

    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v12, v2

    const-string v13, "SYSTEM_RECOVERY_LOG"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string v11, "/cache/recovery/last_kmsg"

    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v12, v2

    const-string v13, "SYSTEM_RECOVERY_KMSG"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string v11, "/data/dontpanic/apanic_console"

    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v12, v2

    const-string v13, "APANIC_CONSOLE"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const-string v11, "/data/dontpanic/apanic_threads"

    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v12, v2

    const-string v13, "APANIC_THREADS"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v11, v2

    const-string v12, "SYSTEM_AUDIT"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v11, v2

    const-string v12, "SYSTEM_FSCK"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    sget v2, Landroid/os/OppoManager;->TYPE_PANIC:I

    const-string/jumbo v7, "kernel_panic"

    const-string v8, "KERNEL"

    const-string/jumbo v9, "panic"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10406e8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v7, v8, v9, v10}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_5
    :goto_1
    sget-object v2, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v20

    .line 306
    .local v20, "tombstoneFiles":[Ljava/io/File;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v15, v2, :cond_a

    .line 307
    aget-object v2, v20, v15

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 308
    aget-object v2, v20, v15

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v13, "SYSTEM_TOMBSTONE"

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 244
    .end local v15    # "i":I
    .end local v20    # "tombstoneFiles":[Ljava/io/File;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    .line 245
    .local v18, "now":Ljava/lang/String;
    const-string/jumbo v2, "ro.runtime.firstboot"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    .end local v18    # "now":Ljava/lang/String;
    :cond_8
    const-string v2, "BootReceiver"

    const-string/jumbo v7, "system_server crashed!"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget v2, Landroid/os/OppoManager;->TYPE_ANDROID_CRASH:I

    const-string/jumbo v7, "system_restart"

    const-string v8, "ANDROID"

    const-string v9, "crash"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10406e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v7, v8, v9, v10}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BootReceiver;->isLastSystemServerRebootFormBolckException()Ljava/lang/String;

    move-result-object v17

    .line 297
    .local v17, "lastSystemReboot":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 298
    sget v2, Landroid/os/OppoManager;->TYPE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:I

    const-string v7, "ANDROID"

    const-string/jumbo v8, "reboot_from_blocked"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v2, v0, v7, v8, v9}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_9
    if-eqz v3, :cond_5

    const-string v2, "SYSTEM_RESTART"

    invoke-virtual {v3, v2, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 315
    .end local v17    # "lastSystemReboot":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v20    # "tombstoneFiles":[Ljava/io/File;
    :cond_a
    new-instance v7, Lcom/android/server/BootReceiver$2;

    sget-object v2, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    move-object/from16 v8, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 329
    sget-object v2, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 330
    return-void
.end method

.method private static readBootReason()Ljava/lang/String;
    .locals 6

    .prologue
    .line 336
    const-string v4, ""

    .line 338
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/sys/power/app_boot"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 340
    .local v3, "length":I
    new-array v0, v3, [B

    .line 341
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 342
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_0
    return-object v4

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private updateSerialNoNVLid()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    .line 164
    const-string/jumbo v8, "ro.serialno"

    const-string v9, " "

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "serialnum":Ljava/lang/String;
    const-string v0, "/data/nvram/APCFG/APRDEB/SERIAL_NUM"

    .line 167
    .local v0, "SERIALNUM_FILENAME":Ljava/lang/String;
    :try_start_0
    const-string v8, "NvRAMAgent"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 168
    .local v2, "binder":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/NvRAMAgent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 169
    .local v1, "agent":Lcom/android/server/NvRAMAgent;
    const/4 v3, 0x0

    .line 171
    .local v3, "buff":[B
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/server/NvRAMAgent;->readFileByName(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 175
    :goto_0
    const/16 v8, 0x10

    :try_start_2
    aget-byte v8, v3, v8

    if-eqz v8, :cond_0

    .line 176
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 177
    .local v7, "temp":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_1

    .line 178
    aget-char v8, v7, v5

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    .end local v5    # "i":I
    .end local v7    # "temp":[C
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 187
    .end local v1    # "agent":Lcom/android/server/NvRAMAgent;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "buff":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 188
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 180
    .restart local v1    # "agent":Lcom/android/server/NvRAMAgent;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v3    # "buff":[B
    .restart local v5    # "i":I
    .restart local v7    # "temp":[C
    :cond_1
    const/16 v8, 0x10

    const/4 v9, 0x0

    :try_start_3
    aput-byte v9, v3, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 182
    :try_start_4
    invoke-interface {v1, v0, v3}, Lcom/android/server/NvRAMAgent;->writeFileByName(Ljava/lang/String;[B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 183
    :catch_2
    move-exception v4

    .line 184
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "ZhiYong.Lin@Plf.Framework.OTA, modify for ota update result"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    .line 158
    return-void
.end method
