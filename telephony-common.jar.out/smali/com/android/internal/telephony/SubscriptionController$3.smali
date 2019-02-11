.class Lcom/android/internal/telephony/SubscriptionController$3;
.super Landroid/telephony/PhoneStateListener;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;

.field final synthetic val$slotId:I

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;III)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 2957
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iput p3, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$subId:I

    iput p4, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener:onServiceStateChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$subId:I

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->isRadioSwitchComplete(IILandroid/telephony/ServiceState;)Z
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->access$100(Lcom/android/internal/telephony/SubscriptionController;IILandroid/telephony/ServiceState;)Z

    .line 2965
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$subId:I

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionController$3;->val$slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->getRadioStateForSlotId(I)Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 2967
    return-void

    .line 2965
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
