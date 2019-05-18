.class Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$wakefulness:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$1;->val$wakefulness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$1;->val$wakefulness:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    .line 390
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mOppoSysStateManagerInternal:Lcom/android/server/coloros/OppoSysStateManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Lcom/android/server/coloros/OppoSysStateManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mOppoSysStateManagerInternal:Lcom/android/server/coloros/OppoSysStateManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Lcom/android/server/coloros/OppoSysStateManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$1;->val$wakefulness:I

    invoke-virtual {v0, v1}, Lcom/android/server/coloros/OppoSysStateManagerInternal;->onWakefulnessChanged(I)V

    .line 394
    :cond_0
    return-void
.end method
