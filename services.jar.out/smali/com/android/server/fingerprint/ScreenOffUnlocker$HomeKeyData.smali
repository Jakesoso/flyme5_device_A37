.class Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;
.super Ljava/lang/Object;
.source "ScreenOffUnlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/ScreenOffUnlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyData"
.end annotation


# instance fields
.field private mDuration:J

.field private mUpdateTime:J

.field final synthetic this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;JJ)V
    .locals 0
    .param p2, "duration"    # J
    .param p4, "updateTime"    # J

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->this$0:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-wide p2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mDuration:J

    .line 512
    iput-wide p4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mUpdateTime:J

    .line 513
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mDuration:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mUpdateTime:J

    return-wide v0
.end method

.method public isValid(J)Z
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mDuration:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeKeyData ( mUpdateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
