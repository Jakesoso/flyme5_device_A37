.class public Lcom/android/server/fingerprint/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final DEBUG:Z

.field private static final FINGERPRINT_MANAGER_ACTIVITY:Ljava/lang/String; = "oppo.intent.action.FINGERPRINT"

.field private static final FINGERPRINT_MANAGER_ACTIVITY_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "ActivityUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/fingerprint/ActivityUtil;->DEBUG:Z

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.FINGERPRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/fingerprint/ActivityUtil;->FINGERPRINT_MANAGER_ACTIVITY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startFpManager(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 37
    const-string v1, "ActivityUtil"

    const-string v2, "context null, return ACTIVITY_START_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, -0x1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/fingerprint/ActivityUtil;->FINGERPRINT_MANAGER_ACTIVITY_INTENT:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 43
    sget-boolean v2, Lcom/android/server/fingerprint/ActivityUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityUtil"

    const-string v3, " start fingerprint enroll activity sucess 33"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method
