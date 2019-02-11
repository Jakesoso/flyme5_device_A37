.class public final Lcom/mediatek/multiwindow/MultiWindowProxy;
.super Lcom/mediatek/sef/proxy/FeatureProxyBase;
.source "MultiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static DEFAULT_CHANGE_CONFIG:Z = false

.field public static final ERR_HANDLING_CONFIG_NOT_CHANGE:I = 0x1

.field public static final ERR_HANDLING_DISABLE_FLOAT:I = 0x3

.field public static final ERR_HANDLING_MINIMAX_RESTART_APP:I = 0x2

.field public static final ERR_HANDLING_NONE:I = 0x0

.field public static final FLOATING_WINDOW_DIALOG:I = 0x2

.field public static final FLOATING_WINDOW_FULL:I = 0x1

.field private static final MULTIWINDOW_SERVICE:Ljava/lang/String; = "multiwindow_service_v1"

.field public static final NOT_FLOATING_WINDOW:I = 0x0

.field static final TAG:Ljava/lang/String; = "MultiWindow"

.field private static sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field public static sFeatureProperty:I

.field public static sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private isAppErrorHandlingEnabled:Z

.field private mAMSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mASSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mActionView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFloating:Z

.field private mIsTranslucent:Z

.field private mMaximumView:Landroid/widget/ImageView;

.field private mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

.field mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field private mStickView:Landroid/widget/ImageView;

.field private mSticked:Z

.field private mWindowType:I

.field private mWindowsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getFeatureProperty()I

    move-result v0

    sput v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    .line 902
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/mediatek/sef/proxy/FeatureProxyBase;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mSticked:Z

    .line 76
    iput v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 899
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    .line 908
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 922
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    .line 94
    const-string/jumbo v1, "multiwindow_service_v1"

    invoke-virtual {p0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 101
    const-string v1, "debug.mw.apperrhandling"

    invoke-static {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    .line 102
    const-string v1, "debug.mw.changeconfig"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    .line 103
    return-void
.end method

.method static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 881
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 883
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 884
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 885
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 887
    const-string v6, "getBoolean"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 888
    .local v2, "getBoolean":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 889
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 890
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v6

    .line 891
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 895
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getBoolean":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBooleanProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 895
    goto :goto_0
.end method

.method public static getFeatureProperty()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 159
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 162
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 163
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 165
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 166
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 167
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "persist.sys.multiwindow"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 168
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 169
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 173
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFeatureProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;
    .locals 3

    .prologue
    .line 109
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-direct {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 113
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    :try_start_2
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    sget-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    iput-object v2, v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_1
    :goto_1
    :try_start_3
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    monitor-exit v1

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static getIntProperty(Ljava/lang/String;I)I
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 861
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 863
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 864
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 865
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 867
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 868
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 869
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 870
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 871
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 875
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 875
    goto :goto_0
.end method

.method public static isFeatureSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindowBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public activityCreated(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->activityCreated(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addConfigNotChangePkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addConfigNotChangePkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addDisableFloatPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addDisableFloatPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addMiniMaxRestartPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addMiniMaxRestartPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public adjustActivityConfig(Landroid/content/res/Configuration;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 410
    .local v1, "widthDp":I
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 412
    .local v0, "heightDp":I
    iput v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 413
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 414
    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 416
    :cond_0
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 417
    if-ge v1, v0, :cond_2

    .line 418
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 419
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 439
    :goto_0
    const-string v2, "MultiWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustActivityConfig, apply override config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "heightDp":I
    .end local v1    # "widthDp":I
    :cond_1
    return-object p1

    .line 421
    .restart local v0    # "heightDp":I
    .restart local v1    # "widthDp":I
    :cond_2
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 422
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 427
    :cond_3
    const/4 v2, 0x1

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 428
    if-ge v1, v0, :cond_4

    .line 429
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 430
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 432
    :cond_4
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 433
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0
.end method

.method public adjustWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    :cond_0
    return-object p1
.end method

.method public appErrorHandling(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inMaxOrRestore"    # Z

    .prologue
    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    sget-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->appErrorHandling(Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 602
    :goto_0
    return v0

    .line 599
    :catch_0
    move-exception v0

    .line 602
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeWindow(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->closeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableFeature()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public enableFocusedFrame(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->enableFocusedFrame(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDisableFloatComponentList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatComponentList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 543
    :goto_0
    return-object v1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatComponentList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableFloatPkgList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatPkgList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 530
    :goto_0
    return-object v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingState()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    return v0
.end method

.method public getPlatformApiVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const-string/jumbo v0, "multiwindow_service_v1"

    return-object v0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public isAppErrorHandlingEnabled()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    return v0
.end method

.method public isFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 631
    :goto_0
    return v0

    .line 628
    :catch_0
    move-exception v0

    .line 631
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingWindow(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMiniMax(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isInMiniMax(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 698
    :goto_0
    return v0

    .line 695
    :catch_0
    move-exception v0

    .line 698
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x1

    return v0
.end method

.method public isStickStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isStickStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 684
    :goto_0
    return v0

    .line 681
    :catch_0
    move-exception v0

    .line 684
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSticky(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isSticky(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 670
    :goto_0
    return v0

    .line 667
    :catch_0
    move-exception v0

    .line 670
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchConfigChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 569
    :goto_0
    return v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchConfigChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchConfigNotChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigNotChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 464
    :goto_0
    return v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchConfigNotChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatActivityList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ActivityName"    # Ljava/lang/String;

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatActivityList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    :goto_0
    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchDisableFloatActivityList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatPkgList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatWinList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "winName"    # Ljava/lang/String;

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchDisableFloatWinList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchMinimaxRestartList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchMinimaxRestartList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 556
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchMinimaxRestartList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniMaxTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->miniMaxTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveActivityTaskToFront(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveFloatingWindow(II)V
    .locals 1
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveFloatingWindow(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public needChangeConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 447
    sget-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public needHideRestoreButton(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "winName"    # Ljava/lang/String;

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const/4 v1, 0x1

    .line 517
    :goto_0
    return v1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needHideRestoreButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resizeFloatingWindow(III)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resizeFloatingWindow(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restoreWindow(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    .line 268
    if-eqz p2, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFloatDecorVisibility(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visibility"    # I

    .prologue
    .line 302
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v2, :cond_0

    .line 306
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 308
    .local v1, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    .line 309
    const-string v2, "MultiWindow"

    const-string/jumbo v3, "setFloatDecorVisibility matched"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->phoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v2, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setFloatDecorVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "index":I
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_0
    :goto_1
    return-void

    .line 306
    .restart local v0    # "index":I
    .restart local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setFloatingStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setFloatingStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneWindowCallback(Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 241
    return-void
.end method

.method public setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowType(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowType"    # I

    .prologue
    .line 330
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v3, :cond_0

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-nez p2, :cond_2

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    goto :goto_0

    .line 344
    :cond_2
    iput p2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 347
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 348
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 349
    .local v1, "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_4

    .line 350
    const-string v3, "MultiWindow"

    const-string/jumbo v4, "setWindowType matched,and remove!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 355
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_3
    new-instance v2, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-direct {v2, p0, p1, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;-><init>(Lcom/mediatek/multiwindow/MultiWindowProxy;Landroid/os/IBinder;Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V

    .line 356
    .local v2, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 358
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v3, :cond_0

    .line 360
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v3

    goto :goto_0

    .line 347
    .end local v2    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    .restart local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "index":I
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public showRestoreButton(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->showRestoreButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stickWindow(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSticky"    # Z

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->stickWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskAdded(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskRemoved(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method
