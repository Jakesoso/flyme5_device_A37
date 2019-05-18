.class public Lcom/android/server/oppo/HypnusService;
.super Lcom/android/internal/app/IHypnusService$Stub;
.source "HypnusService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HypnusService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHyp:Lcom/oppo/hypnus/Hypnus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/app/IHypnusService$Stub;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/oppo/HypnusService;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v0}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    .line 28
    return-void
.end method


# virtual methods
.method public hypnusSetAction(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/hypnus/Hypnus;->hypnusSetAction(II)V

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "HypnusService"

    const-string v1, "mHyp is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hypnusSetBurst(III)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "type"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/hypnus/Hypnus;->hypnusSetBurst(III)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "HypnusService"

    const-string v1, "mHyp is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hypnusSetScene(ILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/hypnus/Hypnus;->hypnusSetScene(ILjava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v0, "HypnusService"

    const-string v1, "mHyp is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isHypnusOK()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/server/oppo/HypnusService;->mHyp:Lcom/oppo/hypnus/Hypnus;

    invoke-virtual {v0}, Lcom/oppo/hypnus/Hypnus;->isHypnusOK()Z

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_0
    const-string v0, "HypnusService"

    const-string v1, "mHyp is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method
