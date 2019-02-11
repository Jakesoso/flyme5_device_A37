.class Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
.super Ljava/lang/Object;
.source "OppoScreenOnWakeLockCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OppoScreenOnWakeLockCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockScreenOnRecord"
.end annotation


# instance fields
.field mHold:J

.field mPkgs:[Ljava/lang/String;

.field mTag:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/power/OppoScreenOnWakeLockCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OppoScreenOnWakeLockCheck;IJLjava/lang/String;I)V
    .locals 1
    .param p2, "uid"    # I
    .param p3, "hold"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->this$0:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    .line 231
    iput-wide p3, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mHold:J

    .line 232
    iput-object p5, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mTag:Ljava/lang/String;

    .line 233
    const/4 v0, 0x6

    if-ne p6, v0, :cond_0

    .line 234
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    iput-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mType:Ljava/lang/String;

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const/16 v0, 0xa

    if-ne p6, v0, :cond_1

    .line 236
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    iput-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mType:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "FULL_WAKE_LOCK"

    iput-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mType:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->getReportString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReportString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "forgroundPkg"    # Ljava/lang/String;
    .param p3, "topAppName"    # Ljava/lang/String;
    .param p4, "layers"    # Ljava/lang/String;
    .param p5, "foregroundPackageUid"    # I

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    uid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "forgroundPkg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "foregroundPackageUid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "topAppName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "layers("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUserActivitySummary(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->this$0:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;
    invoke-static {v2}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->access$200(Lcom/android/server/power/OppoScreenOnWakeLockCheck;)Lcom/android/server/power/PowerManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getUserActivitySummary()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWakefulness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->this$0:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;
    invoke-static {v2}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->access$200(Lcom/android/server/power/OppoScreenOnWakeLockCheck;)Lcom/android/server/power/PowerManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getwakefulness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public updatePkgNameNotLocked()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->this$0:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;
    invoke-static {v0}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->access$100(Lcom/android/server/power/OppoScreenOnWakeLockCheck;)Lcom/android/server/power/CommonUtil;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/CommonUtil;->getPkgsForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    .line 244
    return-void
.end method
