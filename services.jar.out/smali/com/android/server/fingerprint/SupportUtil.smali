.class public Lcom/android/server/fingerprint/SupportUtil;
.super Ljava/lang/Object;
.source "SupportUtil.java"


# static fields
.field private static final DEBUG:Z

.field public static FINGERPRINT_ENABLE:Z = false

.field private static final FINGERPRINT_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.fingerprint"

.field public static FINGERPRINT_NOT_ENABLE:Z = false

.field public static FINGERPRINT_NOT_SUPPORT:I = 0x0

.field public static FINGERPRINT_SUPPORT:I = 0x0

.field private static FINGERPRINT_SUPPORT_FEATURE:Ljava/lang/String; = null

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const-string v0, "ro.build.release_type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/fingerprint/SupportUtil;->DEBUG:Z

    .line 40
    const-string v0, "SupportUtil"

    sput-object v0, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "oppo.fingerprint.support"

    sput-object v0, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT_FEATURE:Ljava/lang/String;

    .line 44
    sput v1, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT:I

    .line 45
    sput v2, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_NOT_SUPPORT:I

    .line 48
    sput-boolean v1, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_ENABLE:Z

    .line 49
    sput-boolean v2, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_NOT_ENABLE:Z

    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFingerprintSupportValue(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT_FEATURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 53
    .local v0, "support":Z
    sget-object v1, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintSupportValue =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz v0, :cond_0

    sget v1, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_NOT_SUPPORT:I

    goto :goto_0
.end method

.method public static isFingerprintEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_ENABLE:Z

    return v0
.end method

.method public static isFingerprintInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT_FEATURE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.coloros.fingerprint"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 107
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    const-string v4, "com.coloros.fingerprint not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 109
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v2, v3

    .line 113
    goto :goto_0
.end method

.method public static isFingerprintSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/fingerprint/SupportUtil;->FINGERPRINT_SUPPORT_FEATURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, "support":Z
    sget-boolean v1, Lcom/android/server/fingerprint/SupportUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerprintSupport =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return v0
.end method

.method public static isFingerprintUnlockEnabled(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "fingerAppContext":Landroid/content/Context;
    :try_start_0
    const-string v6, "com.coloros.fingerprint"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    if-eqz v1, :cond_1

    .line 87
    const-string v6, "fingerprint_preferences"

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 90
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/server/fingerprint/SupportUtil;->isSecure(Landroid/content/Context;)Z

    move-result v3

    .line 91
    .local v3, "isSecure":Z
    const-string v6, "fingerprint_unlock"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    .local v2, "fingerprint_unlock":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 93
    .local v4, "res":Z
    :cond_0
    sget-boolean v6, Lcom/android/server/fingerprint/SupportUtil;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSecure = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fingerprint_unlock = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "fingerprint_unlock":Z
    .end local v3    # "isSecure":Z
    .end local v4    # "res":Z
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return v4

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/server/fingerprint/SupportUtil;->TAG:Ljava/lang/String;

    const-string v7, "com.coloros.fingerprint, not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isScreenBlack(Landroid/os/PowerManager;)Z
    .locals 1
    .param p0, "power"    # Landroid/os/PowerManager;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/os/PowerManager;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecure(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 135
    .local v1, "passwordQuality":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 139
    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method
