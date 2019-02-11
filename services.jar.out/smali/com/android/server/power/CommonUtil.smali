.class Lcom/android/server/power/CommonUtil;
.super Ljava/lang/Object;
.source "OppoWakeLockCheck.java"


# static fields
.field private static final ATAG:Ljava/lang/String; = "OppoWakeLockCheck"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

.field private mPkm:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v0, p0, Lcom/android/server/power/CommonUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 169
    iput-object v0, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    .line 170
    iput-object v0, p0, Lcom/android/server/power/CommonUtil;->mPkm:Landroid/content/pm/IPackageManager;

    .line 174
    iput-object p1, p0, Lcom/android/server/power/CommonUtil;->mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v0}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/CommonUtil;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 176
    return-void
.end method

.method private getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "pid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/power/CommonUtil;->mPkm:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/power/CommonUtil;->mPkm:Landroid/content/pm/IPackageManager;

    .line 347
    :goto_0
    return-object v0

    .line 346
    :cond_0
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/CommonUtil;->mPkm:Landroid/content/pm/IPackageManager;

    .line 347
    iget-object v0, p0, Lcom/android/server/power/CommonUtil;->mPkm:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method


# virtual methods
.method public getActiveAudioPids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/power/CommonUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "pids":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/power/CommonUtil;->getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAppLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 234
    const-string v3, ""

    .line 235
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 236
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 238
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x2710

    if-lt p2, v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v4, v3

    .line 254
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 243
    .end local v4    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :goto_1
    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "label":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "label":Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 254
    .end local v3    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v4    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_2
    const-string v5, "OppoWakeLockCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error happened when  getApplicationInfo from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    new-instance v2, Landroid/app/OppoActivityManager;

    invoke-direct {v2}, Landroid/app/OppoActivityManager;-><init>()V

    .line 270
    .local v2, "oAm":Landroid/app/OppoActivityManager;
    const/4 v0, 0x0

    .line 272
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OppoWakeLockCheck"

    const-string v4, "getTopActivityComponentName exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getPkgNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/CommonUtil;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 226
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoWakeLockCheck"

    const-string v4, "getNameForUid exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPkgsForUid(I)[Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "pkgName":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/CommonUtil;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 261
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoWakeLockCheck"

    const-string v4, "getPackagesForUid exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProcessForPid(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 6
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v3, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/server/power/CommonUtil;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    .line 207
    iget-object v3, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    move-object v1, v4

    .line 219
    :goto_0
    return-object v1

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 215
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_0

    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move-object v1, v4

    .line 219
    goto :goto_0
.end method

.method public getSurfceLayers()Ljava/lang/String;
    .locals 9

    .prologue
    .line 306
    const-string v1, ""

    .line 307
    .local v1, "layers":Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 310
    .local v3, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "dumpsys SurfaceFlinger --list"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 311
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 315
    .local v2, "lineText":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    const-string v6, "FocusedStackFrame"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DimLayer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TickerPanel"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Magnification Overlay"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "AssertTip"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 327
    :cond_1
    if-eqz v5, :cond_2

    .line 329
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 336
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .line 339
    .end local v2    # "lineText":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-object v1

    .line 330
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "lineText":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "OppoWakeLockCheck"

    const-string v7, "failed closing reader"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "lineText":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v6, "OppoWakeLockCheck"

    const-string v7, "dumpsys SurfaceFlinger --list IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    if-eqz v4, :cond_4

    .line 329
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 335
    :cond_4
    :goto_4
    if-eqz v3, :cond_3

    .line 336
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 330
    :catch_2
    move-exception v0

    .line 331
    const-string v6, "OppoWakeLockCheck"

    const-string v7, "failed closing reader"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_5

    .line 329
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 335
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 336
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_6
    throw v6

    .line 330
    :catch_3
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "OppoWakeLockCheck"

    const-string v8, "failed closing reader"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "lineText":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 324
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_7
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public getTopAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    .line 296
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getTopAppName()Landroid/content/ComponentName;

    move-result-object v0

    .line 302
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getUidForPkgName(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/server/power/CommonUtil;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 283
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v0, -0x1

    .line 285
    .local v0, "packageUid":I
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isWindowShownForUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 351
    const/4 v0, 0x1

    .line 353
    .local v0, "shown":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/CommonUtil;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v1, p1}, Landroid/view/IOppoWindowManagerImpl;->isWindowShownForUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 357
    :goto_0
    return v0

    .line 354
    :catch_0
    move-exception v1

    goto :goto_0
.end method
