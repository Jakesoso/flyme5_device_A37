.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 393
    # getter for: Landroid/telephony/SubscriptionManager;->DBG:Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string/jumbo v1, "handleMessage: invoke the overriden onSubscriptionsChanged()"

    # invokes: Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->access$100(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/lang/String;)V

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 397
    return-void
.end method
