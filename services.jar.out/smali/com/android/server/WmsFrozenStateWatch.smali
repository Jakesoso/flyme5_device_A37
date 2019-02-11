.class public Lcom/android/server/WmsFrozenStateWatch;
.super Lcom/android/server/StateWatch;
.source "WmsFrozenStateWatch.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WmsFrozenStateWatch"


# instance fields
.field mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/StateWatch;-><init>()V

    return-void
.end method


# virtual methods
.method dealAction()V
    .locals 6

    .prologue
    .line 53
    const-string v3, "WmsFrozenStateWatch"

    const-string v4, "WmsFrozenValueWatch dealAction"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd HH:mm:ss "

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 58
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "strNow":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wms,Frozen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/CheckBlockedException;->WriteLastExceptionMsgToProc(Ljava/lang/String;)V

    .line 61
    const-string v3, "WmsFrozenStateWatch"

    const-string v4, "WmsFrozenValueWatch kill systemserver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    invoke-static {}, Lcom/android/server/CheckBlockedException;->rebootSystemServer()V

    .line 63
    return-void
.end method

.method getCheckCount()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x258

    return v0
.end method

.method getCheckInterval()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x64

    return v0
.end method

.method isCheckEnable()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/WmsFrozenStateWatch;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStateOk()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/android/server/WmsFrozenStateWatch;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->GetDisplayFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 41
    .local v0, "bRet":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/WmsFrozenStateWatch;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->GetDisplayFrozen()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "bRet":Z
    :cond_0
    move v0, v2

    .line 39
    goto :goto_0

    .restart local v0    # "bRet":Z
    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method public setWmsInstance(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/WmsFrozenStateWatch;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 31
    return-void
.end method
