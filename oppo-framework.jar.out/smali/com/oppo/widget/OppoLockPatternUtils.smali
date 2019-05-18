.class public Lcom/oppo/widget/OppoLockPatternUtils;
.super Ljava/lang/Object;
.source "OppoLockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field protected static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FACE_UNLOCK:Ljava/lang/String; = "face_unlock"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field protected static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field protected static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field protected static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.weak_fallback"

.field public static final LOCKSCREEN_WEAK_FALLBACK_FOR:Ljava/lang/String; = "lockscreen.weak_fallback_for"

.field protected static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field protected static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_QUALITY_VOICE_WEAK:I = 0x4000
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "MTK FIELD"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field protected static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final SETTINGS_COMMAND_KEY:Ljava/lang/String; = "settings_command_key"

.field public static final SETTINGS_COMMAND_VALUE:Ljava/lang/String; = "settings_command_value"

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternUtils"

.field public static final USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

.field public static final VOICE_UNLOCK:Ljava/lang/String; = "voice_unlock"

.field public static final VOICE_WEAK_FALLBACK_SET_KEY:Ljava/lang/String; = "lockscreen.voice_weak_fallback_set"

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    .line 146
    sget-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    const-string v1, "showuserswitcher"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    sget-object v0, Lcom/oppo/widget/OppoLockPatternUtils;->USER_SWITCH_LOCK_OPTIONS:Landroid/os/Bundle;

    const-string v1, "showsecuritychallenge"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const/16 v0, -0x2710

    sput v0, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 208
    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1183
    array-length v1, p0

    .line 1185
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_0

    .line 1194
    const/4 v4, 0x0

    .line 1195
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1197
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1198
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1199
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1200
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1201
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 1202
    add-int/2addr v4, v3

    .line 1198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_0
    const-string v6, ""

    .line 1215
    :goto_1
    return-object v6

    .line 1190
    :pswitch_1
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1206
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1208
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 1209
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1210
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_2

    .line 1211
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1215
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 612
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 613
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 614
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    const/4 v0, 0x1

    .line 613
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 621
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 622
    const/high16 v4, 0x50000

    .line 630
    :goto_2
    return v4

    .line 624
    :cond_2
    if-eqz v1, :cond_3

    .line 625
    const/high16 v4, 0x40000

    goto :goto_2

    .line 627
    :cond_3
    if-eqz v0, :cond_4

    .line 628
    const/high16 v4, 0x20000

    goto :goto_2

    .line 630
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private finishBiometricWeak()V
    .locals 3

    .prologue
    .line 1427
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1429
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 1433
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1434
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1436
    return-void
.end method

.method private finishVoiceWeak()V
    .locals 3

    .prologue
    .line 1461
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setVoiceUnlockFallbackSet(Z)V

    .line 1465
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1466
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.voiceunlock"

    const-string v2, "com.mediatek.voiceunlock.VoiceUnlockSetupEnd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1469
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1145
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1148
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1147
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 303
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 308
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1293
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1296
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1295
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 917
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 918
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 920
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 921
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 923
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1321
    :goto_0
    return-object v1

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1448
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1453
    :goto_0
    return v0

    .line 1450
    :catch_0
    move-exception v0

    .line 1453
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 871
    const-string v4, ""

    .line 880
    :goto_0
    return-object v4

    .line 873
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 875
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 876
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 877
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 878
    .local v0, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    .end local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1154
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1302
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1306
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1327
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :goto_0
    return-void

    .line 1328
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 855
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 856
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 857
    aget-byte v0, v1, v2

    .line 858
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    .end local v0    # "b":B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 957
    const-string v0, "0123456789ABCDEF"

    .line 958
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 959
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_0
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 638
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 643
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 644
    const-string v2, "OppoLockPatternUtils"

    const-string v3, "Could not find the mount service to update the encryption password"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeAppWidgets([I)V
    .locals 4
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1242
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .locals 6
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1246
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1247
    .local v3, "widgets":[I
    if-nez v3, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v4

    .line 1250
    :cond_1
    if-ltz p2, :cond_0

    array-length v5, v3

    if-gt p2, v5, :cond_0

    .line 1253
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 1254
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 1255
    if-ne p2, v0, :cond_2

    .line 1256
    aput p1, v2, v0

    .line 1257
    add-int/lit8 v0, v0, 0x1

    .line 1259
    :cond_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1260
    aget v4, v3, v1

    aput v4, v2, v0

    .line 1261
    add-int/lit8 v1, v1, 0x1

    .line 1254
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1264
    :cond_4
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->writeAppWidgets([I)V

    .line 1265
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 347
    .local v2, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 369
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 370
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v5

    .line 375
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 376
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 377
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    .line 380
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 382
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 383
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 385
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    const/4 v4, 0x1

    .line 320
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    .line 323
    .local v3, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v1

    .line 324
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    if-nez v3, :cond_0

    .line 325
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .end local v1    # "matched":Z
    :cond_0
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    move v1, v4

    .line 329
    goto :goto_0

    .line 330
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OppoLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLockSettings() is null getLockSettings()= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 332
    goto :goto_0
.end method

.method public clearLock(Z)V
    .locals 4
    .param p1, "isFallback"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 489
    if-nez p1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 492
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 494
    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setLockPatternEnabled(Z)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 497
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 498
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 499
    return-void
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 4

    .prologue
    .line 1509
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1510
    return-void
.end method

.method public clearVoiceUnlock()V
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternUtils;->setVoiceUnlockFallbackSet(Z)V

    .line 1496
    return-void
.end method

.method deleteGallery()V
    .locals 3

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 3

    .prologue
    .line 525
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 528
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 6

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 441
    .local v0, "activePasswordQuality":I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    invoke-direct {p0, v2, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 443
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_0

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 445
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/high16 v0, 0x10000

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const v0, 0x8000

    goto :goto_0

    .line 456
    :sswitch_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const/16 v0, 0x4000

    goto :goto_0

    .line 461
    :sswitch_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    const/high16 v0, 0x20000

    goto :goto_0

    .line 466
    :sswitch_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/high16 v0, 0x40000

    goto :goto_0

    .line 471
    :sswitch_5
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    const/high16 v0, 0x50000

    goto :goto_0

    .line 476
    :sswitch_6
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/high16 v0, 0x60000

    goto :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .locals 10

    .prologue
    .line 1162
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1165
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1166
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1168
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 1169
    aget-object v0, v3, v6

    .line 1171
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v5

    .line 1173
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "OppoLockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v2, 0x0

    .line 1179
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_1
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 282
    sget v1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 284
    sget v1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 194
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "OppoLockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFallbackAppWidgetId()I
    .locals 4

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 6

    .prologue
    const-wide/32 v4, 0x10000

    .line 813
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 818
    .local v0, "quality":I
    const v1, 0x8000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_1

    .line 820
    :cond_0
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 823
    :cond_1
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1090
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1091
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1092
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 1095
    .end local v0    # "deadline":J
    :cond_1
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "nextAlarm":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    :cond_0
    const/4 v0, 0x0

    .line 1140
    .end local v0    # "nextAlarm":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1443
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getVoiceUnlockFallbackSet()Z
    .locals 2

    .prologue
    .line 1504
    const-string v0, "lockscreen.voice_weak_fallback_set"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 431
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1004
    iget-object v4, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1006
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v2

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1015
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1019
    goto :goto_0
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1040
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1041
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .locals 10

    .prologue
    .line 970
    const-string v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 971
    .local v4, "mode":J
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 972
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 976
    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 982
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingVoiceWeak()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    if-eqz v0, :cond_6

    :cond_3
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 972
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 976
    .restart local v1    # "passwordEnabled":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 982
    .restart local v0    # "backupEnabled":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v6, 0x10000

    .line 990
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v6, v7}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move v0, v1

    .line 994
    .local v0, "backupEnabled":Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v6, v7}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->usingVoiceWeak()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_2
    move v0, v2

    .line 990
    goto :goto_0

    .restart local v0    # "backupEnabled":Z
    :cond_3
    move v1, v2

    .line 994
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 421
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 1103
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1335
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1336
    .local v2, "mode":J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1337
    .local v1, "isPattern":Z
    :goto_0
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v4

    .line 1341
    .local v0, "isPassword":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1343
    .local v4, "secure":Z
    :cond_2
    :goto_2
    return v4

    .end local v0    # "isPassword":Z
    .end local v1    # "isPattern":Z
    .end local v4    # "secure":Z
    :cond_3
    move v1, v5

    .line 1336
    goto :goto_0

    .restart local v1    # "isPattern":Z
    :cond_4
    move v0, v5

    .line 1337
    goto :goto_1

    .restart local v0    # "isPassword":Z
    :cond_5
    move v4, v5

    .line 1341
    goto :goto_2
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1069
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 1055
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 940
    if-nez p1, :cond_0

    .line 941
    const/4 v2, 0x0

    .line 953
    :goto_0
    return-object v2

    .line 943
    :cond_0
    const/4 v0, 0x0

    .line 944
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 946
    .local v2, "hashed":[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 947
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 948
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 949
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/oppo/widget/OppoLockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/oppo/widget/OppoLockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 950
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "OppoLockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppWidget(I)Z
    .locals 6
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1269
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1271
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return v4

    .line 1275
    :cond_1
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1276
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1277
    aget v5, v3, v0

    if-ne v5, p1, :cond_2

    .line 1276
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    :cond_2
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 1283
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1287
    :cond_3
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->writeAppWidgets([I)V

    .line 1288
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 271
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 275
    return-void
.end method

.method public resumeCall()V
    .locals 2

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1412
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 666
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 667
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFallbackFor"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 682
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 31
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFallbackFor"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 698
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v25

    .line 700
    .local v25, "hash":[B
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 702
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    .line 703
    .local v27, "keyStore":Landroid/security/KeyStore;
    if-eqz p1, :cond_b

    .line 704
    if-nez p5, :cond_0

    .line 706
    invoke-direct/range {p0 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 712
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/OppoLockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 713
    .local v24, "computedQuality":I
    if-nez p3, :cond_8

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 717
    const-string v5, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 718
    if-eqz v24, :cond_7

    .line 719
    const/4 v7, 0x0

    .line 720
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 721
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 722
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 723
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 724
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 725
    .local v12, "nonletter":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_4

    .line 726
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 727
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_1

    .line 728
    add-int/lit8 v7, v7, 0x1

    .line 729
    add-int/lit8 v8, v8, 0x1

    .line 725
    :goto_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 730
    :cond_1
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_2

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_2

    .line 731
    add-int/lit8 v7, v7, 0x1

    .line 732
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 733
    :cond_2
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_3

    .line 734
    add-int/lit8 v10, v10, 0x1

    .line 735
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 737
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 738
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 741
    .end local v23    # "c":C
    :cond_4
    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p5

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 774
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v26    # "i":I
    :cond_5
    :goto_2
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 775
    .local v28, "passwordHistory":Ljava/lang/String;
    if-nez v28, :cond_6

    .line 776
    new-instance v28, Ljava/lang/String;

    .end local v28    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    .line 778
    .restart local v28    # "passwordHistory":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v29

    .line 779
    .local v29, "passwordHistoryLength":I
    if-nez v29, :cond_a

    .line 780
    const-string v28, ""

    .line 790
    :goto_3
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 804
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v24    # "computedQuality":I
    .end local v27    # "keyStore":Landroid/security/KeyStore;
    .end local v28    # "passwordHistory":Ljava/lang/String;
    .end local v29    # "passwordHistoryLength":I
    :goto_4
    return-void

    .line 746
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v24    # "computedQuality":I
    .restart local v27    # "keyStore":Landroid/security/KeyStore;
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 800
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v24    # "computedQuality":I
    .end local v27    # "keyStore":Landroid/security/KeyStore;
    :catch_0
    move-exception v30

    .line 802
    .local v30, "re":Landroid/os/RemoteException;
    const-string v5, "OppoLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 751
    .end local v30    # "re":Landroid/os/RemoteException;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v24    # "computedQuality":I
    .restart local v27    # "keyStore":Landroid/security/KeyStore;
    :cond_8
    :try_start_1
    const-string v5, "face_unlock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 753
    const-string v5, "lockscreen.password_type"

    const-wide/32 v14, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 755
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishBiometricWeak()V

    .line 758
    const v14, 0x8000

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_2

    .line 761
    :cond_9
    const-string v5, "voice_unlock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 762
    const-string v5, "lockscreen.password_type"

    const-wide/16 v14, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 764
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishVoiceWeak()V

    .line 767
    const/16 v14, 0x4000

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_2

    .line 782
    .restart local v28    # "passwordHistory":Ljava/lang/String;
    .restart local v29    # "passwordHistoryLength":I
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 785
    const/4 v5, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    mul-int v6, v6, v29

    add-int v6, v6, v29

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_3

    .line 794
    .end local v24    # "computedQuality":I
    .end local v28    # "passwordHistory":Ljava/lang/String;
    .end local v29    # "passwordHistoryLength":I
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 795
    invoke-virtual/range {v27 .. v27}, Landroid/security/KeyStore;->reset()Z

    .line 797
    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->saveLockPattern(Ljava/util/List;ZLjava/lang/String;)V

    .line 548
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZLjava/lang/String;)V
    .locals 12
    .param p2, "isFallback"    # Z
    .param p3, "isFallbackFor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 564
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    .line 565
    .local v10, "keyStore":Landroid/security/KeyStore;
    if-eqz p1, :cond_3

    .line 566
    invoke-static {p1}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 567
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 568
    if-nez p2, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->deleteGallery()V

    .line 571
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->clearVoiceUnlock()V

    .line 572
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 573
    const/high16 v1, 0x10000

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 604
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "keyStore":Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 576
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "keyStore":Landroid/security/KeyStore;
    :cond_1
    const-string v1, "face_unlock"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 579
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 581
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishBiometricWeak()V

    .line 582
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "keyStore":Landroid/security/KeyStore;
    :catch_0
    move-exception v11

    .line 602
    .local v11, "re":Landroid/os/RemoteException;
    const-string v1, "OppoLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v11    # "re":Landroid/os/RemoteException;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "keyStore":Landroid/security/KeyStore;
    :cond_2
    :try_start_1
    const-string v1, "voice_unlock"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, 0x4000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 587
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 589
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->finishVoiceWeak()V

    .line 590
    const/16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {v10}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    invoke-virtual {v10}, Landroid/security/KeyStore;->reset()Z

    .line 598
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 3

    .prologue
    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists()Z
    .locals 3

    .prologue
    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 1026
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1028
    .local v0, "currentFlag":J
    if-eqz p1, :cond_0

    .line 1029
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1033
    .local v2, "newFlag":J
    :goto_0
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1034
    return-void

    .line 1031
    .end local v2    # "newFlag":J
    :cond_0
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 278
    sput p1, Lcom/oppo/widget/OppoLockPatternUtils;->sCurrentUserId:I

    .line 279
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1048
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1049
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 508
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 509
    return-void

    .line 508
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1081
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/oppo/widget/OppoLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1082
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1114
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1115
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1439
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1440
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1062
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1063
    return-void
.end method

.method public setVoiceUnlockFallbackSet(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 1477
    const-string v0, "lockscreen.voice_weak_fallback_set"

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1478
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "phoneState"    # I
    .param p3, "shown"    # Z

    .prologue
    .line 1401
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoLockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 1402
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V
    .locals 7
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "phoneState"    # I
    .param p3, "shown"    # Z
    .param p4, "upperCase"    # Z
    .param p5, "showIcon"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1364
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    .line 1365
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1372
    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    .line 1374
    const v3, 0xc040451

    .line 1375
    .local v3, "textId":I
    if-eqz p5, :cond_1

    const v2, 0x1080084

    .line 1376
    .local v2, "phoneCallIcon":I
    :goto_0
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1382
    .end local v2    # "phoneCallIcon":I
    :goto_1
    if-eqz p4, :cond_5

    .line 1383
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1384
    .local v1, "original":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1385
    .local v4, "upper":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    .end local v1    # "original":Ljava/lang/CharSequence;
    .end local v3    # "textId":I
    .end local v4    # "upper":Ljava/lang/String;
    :goto_3
    return-void

    .line 1367
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .restart local v3    # "textId":I
    :cond_1
    move v2, v5

    .line 1375
    goto :goto_0

    .line 1378
    .end local v3    # "textId":I
    :cond_2
    const v3, 0xc040452

    .line 1379
    .restart local v3    # "textId":I
    if-eqz p5, :cond_3

    const v0, 0xc080469

    .line 1380
    .local v0, "emergencyIcon":I
    :goto_4
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .end local v0    # "emergencyIcon":I
    :cond_3
    move v0, v5

    .line 1379
    goto :goto_4

    .line 1384
    .restart local v1    # "original":Ljava/lang/CharSequence;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1387
    .end local v1    # "original":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_3
.end method

.method public usingBiometricWeak()Z
    .locals 4

    .prologue
    .line 830
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 832
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingVoiceWeak()Z
    .locals 4

    .prologue
    .line 841
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 843
    .local v0, "quality":I
    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeFallbackAppWidgetId(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1226
    return-void
.end method
