.class public Lcom/android/server/am/OppoAutostartManager;
.super Ljava/lang/Object;
.source "OppoAutostartManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;,
        Lcom/android/server/am/OppoAutostartManager$BootFileListener;
    }
.end annotation


# static fields
.field private static final DIR:Ljava/lang/String; = "//data//oppo//boot//"

.field private static final FILE_BOOT_OPTION:Ljava/lang/String; = "//data//oppo//boot//bootoption.txt"

.field private static final PACKAGE_REMOVED_ADDED_FILTER:Ljava/lang/String; = "/data/oppo/boot/broadcastlist.xml"

.field private static final PATH:Ljava/lang/String; = "/data/oppo/boot/bootoption.txt"

.field private static final SAVE_FILE_NAME:Ljava/lang/String; = "bootoption.txt"

.field public static final SKIP_FEATURE:Ljava/lang/String; = "nodialog_switch"

.field public static final SKIP_NAME:Ljava/lang/String; = "nodialog"

.field private static final TAG:Ljava/lang/String; = "OppoAutostartManager"

.field private static compareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static file:Ljava/io/File;

.field private static listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

.field private static mBroadcastFileListener:Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;

.field private static mBroadcatFilterFile:Ljava/io/File;

.field private static mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

.field private static mWidgetActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastLock:Ljava/lang/Object;

.field private mLocalFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    .line 80
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "qualcomm.intent.action.WIFI_DISPLAY_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.appwidget.action.APPWIDGET_PICK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.content.cts.ContextWrapperTest.STICKY_BROADCAST_RESULT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mWidgetActionList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v5, p0, Lcom/android/server/am/OppoAutostartManager;->mSkipFeature:Z

    .line 68
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    .line 394
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.lbe.security"

    aput-object v4, v2, v3

    const-string v3, "com.tencent.qqpimsecure"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "com.qihoo360.mobilesafe"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.cleanmaster.mguard_cn"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.cleanmaster.security_cn"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    .line 106
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//bootoption.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    .line 107
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/oppo/boot/broadcastlist.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->mBroadcatFilterFile:Ljava/io/File;

    .line 108
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    const-string v2, "OppoAutostartManager"

    const-string v3, "file.exists() is not exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 111
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//bootoption.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    .line 113
    :try_start_0
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/oppo/boot/bootoption.txt"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :goto_1
    new-instance v2, Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    const-string v3, "/data/oppo/boot/bootoption.txt"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoAutostartManager$BootFileListener;-><init>(Lcom/android/server/am/OppoAutostartManager;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    .line 135
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    invoke-virtual {v2}, Lcom/android/server/am/OppoAutostartManager$BootFileListener;->startWatching()V

    .line 136
    new-instance v2, Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;

    const-string v3, "/data/oppo/boot/broadcastlist.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;-><init>(Lcom/android/server/am/OppoAutostartManager;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFileListener:Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;

    .line 137
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFileListener:Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;

    invoke-virtual {v2}, Lcom/android/server/am/OppoAutostartManager$BroadcastFileListener;->startWatching()V

    .line 138
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "OppoAutostartManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File creation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_1
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->mBroadcatFilterFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :try_start_2
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->mBroadcatFilterFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v2, "OppoAutostartManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FilterFile creation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    const-string v2, "OppoAutostartManager"

    const-string v3, "file.exists() is  exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OppoAutostartManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoAutostartManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoAutostartManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoAutostartManager;->getBootList(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoAutostartManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoAutostartManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/am/OppoAutostartManager;->readBroadcastFilter()V

    return-void
.end method

.method public static final changeAutobootist(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    return-void
.end method

.method public static final checkAutoBootForbiddenStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 9
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 185
    sget-object v1, Lcom/android/server/am/OppoAutostartManager;->mWidgetActionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 186
    .local v7, "action":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v6, v0

    .line 215
    .end local v7    # "action":Ljava/lang/String;
    :goto_0
    return v6

    .line 191
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v1}, Lcom/android/server/am/OppoAutostartManager;->processCanStart(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_3

    .line 194
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    move v6, v0

    .line 196
    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "OppoAutostartManager"

    const-string v2, "r.callerApp == null!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "OppoAutostartManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto/16 :goto_0

    :cond_4
    move v6, v0

    .line 215
    goto/16 :goto_0
.end method

.method private getBootList(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 239
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 240
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 241
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 242
    .local v3, "strT":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strT":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "OppoAutostartManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 245
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "strT":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 246
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 251
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strT":Ljava/lang/String;
    :cond_2
    const-string v4, "OppoAutostartManager"

    const-string v5, "bootoption  file not exists!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAutostartManager;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/server/am/OppoAutostartManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAutostartManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    return-object v0
.end method

.method private isInFilterList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v2

    .line 290
    :goto_0
    return v1

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_0
    const-string v1, "OppoAutostartManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInFilterList pkgName=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    const-string v4, "OppoAutostartManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInFilterList mBroadcastFilterList=="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    const/4 v1, 0x1

    monitor-exit v3

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 290
    goto :goto_0
.end method

.method private static processCanStart(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 219
    const/4 v1, 0x1

    .line 220
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 222
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 230
    :goto_0
    return v2

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 227
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const/4 v1, 0x0

    :cond_1
    move v2, v1

    .line 230
    goto :goto_0
.end method

.method private readBroadcastFilter()V
    .locals 11

    .prologue
    .line 294
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/oppo/boot/broadcastlist.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 296
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v6, 0x0

    .line 301
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 304
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 305
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object v2

    .line 308
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 315
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 316
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 317
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_b

    .line 318
    packed-switch v1, :pswitch_data_0

    .line 335
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    goto :goto_1

    .line 309
    .end local v1    # "eventType":I
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "OppoAutostartManager"

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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 342
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 343
    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 344
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 346
    :cond_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 347
    if-eqz v6, :cond_4

    .line 348
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 350
    :cond_4
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAutostartManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 346
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 322
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_9
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "nodialog"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 323
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 324
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoAutostartManager;->updateBroadcastFilterList(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 338
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 339
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_a
    const-string v8, "OppoAutostartManager"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 342
    :try_start_b
    iget-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 343
    :try_start_c
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 344
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 346
    :cond_5
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 347
    if-eqz v6, :cond_6

    .line 348
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 350
    :cond_6
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 353
    :catch_3
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAutostartManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_7
    :try_start_e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "nodialog_switch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 327
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 328
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoAutostartManager;->updateSkipFeature(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 341
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .line 342
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    :try_start_f
    iget-object v10, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 343
    :try_start_10
    iget-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 344
    iget-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    iput-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 346
    :cond_8
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 347
    if-eqz v6, :cond_9

    .line 348
    :try_start_11
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 350
    :cond_9
    if-eqz v3, :cond_a

    .line 351
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 355
    :cond_a
    :goto_5
    throw v8

    .line 342
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_b
    :try_start_12
    iget-object v9, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    .line 343
    :try_start_13
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 344
    iget-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mLocalFilterList:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    .line 346
    :cond_c
    monitor-exit v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 347
    if-eqz v7, :cond_d

    .line 348
    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 350
    :cond_d
    if-eqz v3, :cond_e

    .line 351
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    :cond_e
    move-object v6, v7

    .line 355
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 346
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    :try_start_15
    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v8
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    .line 353
    :catch_4
    move-exception v0

    .line 354
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OppoAutostartManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 356
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 346
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v8

    :try_start_17
    monitor-exit v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v8
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v9

    :try_start_19
    monitor-exit v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v9
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 353
    :catch_5
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "OppoAutostartManager"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v8

    goto :goto_4

    .line 338
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public initBootList(Z)V
    .locals 1
    .param p1, "clear"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAutostartManager;->getBootList(Ljava/io/File;)V

    .line 174
    invoke-direct {p0}, Lcom/android/server/am/OppoAutostartManager;->readBroadcastFilter()V

    .line 175
    return-void
.end method

.method public skipSpecialBroadcast(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "result":Z
    iget-boolean v3, p0, Lcom/android/server/am/OppoAutostartManager;->mSkipFeature:Z

    if-nez v3, :cond_0

    move v2, v1

    .line 274
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 261
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v2, v1

    .line 262
    .restart local v2    # "result":I
    goto :goto_0

    .line 265
    .end local v2    # "result":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoAutostartManager;->isInFilterList(Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, "inList":Z
    if-eqz v0, :cond_4

    .line 269
    const-string v3, "OppoAutostartManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip broadcast package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x1

    .end local v0    # "inList":Z
    :cond_4
    move v2, v1

    .line 274
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public updateBroadcastFilterList(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/am/OppoAutostartManager;->mBroadcastFilterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSkipFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OppoAutostartManager;->mSkipFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OppoAutostartManager;->mSkipFeature:Z

    .line 390
    const-string v1, "OppoAutostartManager"

    const-string v2, "updateSkipFeature NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
