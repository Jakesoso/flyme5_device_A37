.class public Lcom/oppo/rutils/RUtils;
.super Ljava/lang/Object;
.source "RUtils.java"


# static fields
.field private static RUTILS_USED_COUNT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mActivitymanager:Landroid/app/IActivityManager;

.field private static mOppoAm:Landroid/app/OppoActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "RUtils"

    sput-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 46
    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 48
    const-string/jumbo v0, "oppo.rutils.used.count"

    sput-object v0, Lcom/oppo/rutils/RUtils;->RUTILS_USED_COUNT:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "rutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "Load RUtils!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NativeGetPidByName(Ljava/lang/String;)I
.end method

.method private static native NativeOppoRUtilsCompareSystemMD5()I
.end method

.method private static native NativeOppoRutilsTestValue()I
.end method

.method private static native NativeRUtilsChmod(Ljava/lang/String;I)I
.end method

.method private static native NativeRUtilsCmd(Ljava/lang/String;)I
.end method

.method private static native NativeRUtilsCmdForExternal(Ljava/lang/String;)I
.end method

.method private static native NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static OppoRUtilsCompareSystemMD5()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 316
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 317
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 325
    .local v0, "ret":I
    :cond_0
    :goto_0
    return v1

    .line 322
    .end local v0    # "ret":I
    :cond_1
    sget-object v3, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v4, "RUtils CompareSystemMD5 enter!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeOppoRUtilsCompareSystemMD5()I

    move-result v0

    .line 324
    .restart local v0    # "ret":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 325
    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static RUtilsChmod(Ljava/lang/String;I)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mod"    # I

    .prologue
    const/4 v0, -0x1

    .line 147
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 148
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 161
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    .line 154
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Permission Denied ~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeRUtilsChmod(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method public static RUtilsCmd(Ljava/lang/String;)I
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 168
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 170
    const/4 v0, -0x1

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeRUtilsCmd(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method public static RUtilsCmdForExternal(Ljava/lang/String;)I
    .locals 9
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 208
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 209
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 248
    :goto_0
    return v3

    .line 214
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 216
    .local v1, "mPackageManager":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_1

    .line 217
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v7, "get PackageManager failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v4, 0x0

    .line 223
    .local v4, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 225
    .local v5, "uid":I
    :try_start_0
    invoke-interface {v1, v5}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "pkgName":Ljava/lang/String;
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgName == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v6, 0x40

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v1, v2, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 229
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 230
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_2
    if-nez v4, :cond_3

    .line 233
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no signatures or error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 240
    :cond_3
    invoke-static {}, Lcom/oppo/rutils/RUtils;->getLocalSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 241
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has error signatures! Permission Denial!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto/16 :goto_0

    .line 246
    :cond_4
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeRUtilsCmdForExternal(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto/16 :goto_0
.end method

.method public static RUtilsGetPidByName(Ljava/lang/String;)I
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 253
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 255
    const/4 v0, -0x1

    .line 260
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeGetPidByName(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 281
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 282
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 294
    :goto_0
    return v0

    .line 287
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 288
    :cond_1
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesStringInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v0, -0x1

    .line 264
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 265
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 277
    :goto_0
    return v0

    .line 270
    :cond_0
    if-nez p0, :cond_1

    .line 271
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method private static decreaseRutilsUsedCount()V
    .locals 4

    .prologue
    .line 107
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mActivitymanager == null getService ACTIVITY_SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 113
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 117
    :cond_1
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-eqz v1, :cond_2

    .line 120
    :try_start_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    invoke-virtual {v1}, Landroid/app/OppoActivityManager;->decreaseRutilsUsedCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 122
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocalSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "308203633082024ba00302010202040875ec17300d06092a864886f70d01010b05003062310b300906035504061302383631123010060355040813096775616e67646f6e673111300f060355040713087368656e7a68656e310e300c060355040a13056368696e61310e300c060355040b13056368696e61310c300a06035504031303726f6d301e170d3135303130373036343930325a170d3235303130343036343930325a3062310b300906035504061302383631123010060355040813096775616e67646f6e673111300f060355040713087368656e7a68656e310e300c060355040a13056368696e61310e300c060355040b13056368696e61310c300a06035504031303726f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100a4677dd7cdd8f0066c813f78e6782aaa42c0b019984d5f7ac6e69bc4ed2d128ed0b88dde7cb6ac94a1c218ec8ab62f626fb35b2cb3306ea70e277fd3a8fa4d9602db220000e724433a0b66010bce499a5d9d70849f92a9594eaf39394ba13e18b0ac882f4c6e4254e8da03446d972a0e82ffb0b84ceb97aeecbeec79762155600fa08a1d4be9643169cd8a8661ae0d86049ceda147e6ab1880c3cc8292a26fa12aac2db1da46fef1b971360c6c35a6d7e22a37d2becbf2fa69ec1d6f154f7adc348e885bf2e7cc2c3174b06fb6b751fb31fa5633316cd8fef160cf930a625de865825feb9303e81656757b5eb43047bf4617ac094266f93fb1d312f94866e5270203010001a321301f301d0603551d0e04160414bbfa177b2f1423144ab1d1c9f9c8e74a048f0319300d06092a864886f70d01010b050003820101007cc9a375d39ca81864de289ed31d97a983db62175f36f2c4d2e332086daae50a2e6df83084b78f182519e5a7c3cff6250b76f382982a9adcc3094ee1a4d5790aca709b0df3a09c9c9f38d2a2bab96150812f564a7dba13c842b46619bb59b0957508045487b7d1fccddaaedb5e93d590a22147027822d6524a2af08336c3292d10cbf69959a024118e3686238649603ed88d7156a6c76429a8bad2bb446a70f06e7b7af6be347b7d898890143c782a17d13af243855035b38630a8f0f4c2367734880b30e9ba570d739fbcecc7947432fe653be187a280a4fc0bd36261a696b84970ea17a921936a6c6feb129c0b75959549930654f48eb823dbd842b767d4a4"

    .line 204
    .local v0, "signature":Ljava/lang/String;
    return-object v0
.end method

.method private static increaseRutilsUsedCount()V
    .locals 4

    .prologue
    .line 86
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mActivitymanager == null getService ACTIVITY_SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 92
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 96
    :cond_1
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-eqz v1, :cond_2

    .line 99
    :try_start_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    invoke-virtual {v1}, Landroid/app/OppoActivityManager;->increaseRutilsUsedCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 101
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isRUtilsEnable()Z
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v1, "oppo.service.rutils.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isRUtilsEnable oppo.service.rutils.enable = 1!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 63
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isRUtilsEnable oppo.service.rutils.enable = 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static oppoRutilsTestValue()I
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/oppo/rutils/RUtils;->increaseRutilsUsedCount()V

    .line 301
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    .line 303
    const/4 v0, -0x1

    .line 310
    .local v0, "result":I
    :goto_0
    return v0

    .line 306
    .end local v0    # "result":I
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "RUtils oppoRutilsTestValue enter!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeOppoRutilsTestValue()I

    move-result v0

    .line 309
    .restart local v0    # "result":I
    invoke-static {}, Lcom/oppo/rutils/RUtils;->decreaseRutilsUsedCount()V

    goto :goto_0
.end method

.method private static setRutilsEnable()V
    .locals 4

    .prologue
    .line 68
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mActivitymanager == null getService ACTIVITY_SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 72
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 75
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-eqz v1, :cond_1

    .line 76
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mActivitymanager != null setRutilsEnable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    const-string/jumbo v2, "oppo.service.rutils.enable"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/app/OppoActivityManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static waitForRUtilsEnable()Z
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 132
    invoke-static {}, Lcom/oppo/rutils/RUtils;->isRUtilsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waitForRUtilsEnable OK!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x1

    .line 143
    :goto_1
    return v1

    .line 136
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRutilsEnable times == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/oppo/rutils/RUtils;->setRutilsEnable()V

    .line 140
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waitForRUtilsEnable Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    goto :goto_1
.end method
