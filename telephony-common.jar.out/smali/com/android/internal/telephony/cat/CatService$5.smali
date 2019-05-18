.class Lcom/android/internal/telephony/cat/CatService$5;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2610
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2611
    .local v5, "action":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CatServiceReceiver action: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2613
    const-string v18, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2614
    const-string v18, "remove event list because of ipo shutdown"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$702(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2652
    :cond_0
    :goto_0
    const-string v18, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2653
    const-string v18, "slot"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2654
    .local v7, "id":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SIM state change, id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", simId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const-string v19, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$902(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static {v0, v7}, Lcom/android/internal/telephony/cat/CatService;->access$1002(Lcom/android/internal/telephony/cat/CatService;I)I

    .line 2658
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "simIdfromIntent["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$1000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "],simState["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$900(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2659
    const-string v18, "ABSENT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$900(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2660
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2661
    const-string v18, "Igonre absent sim state"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2717
    .end local v7    # "id":I
    :cond_1
    :goto_1
    return-void

    .line 2617
    :cond_2
    const-string v18, "mediatek.intent.action.IVSR_NOTIFY"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    const-string v19, "slot"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 2622
    const-string v18, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2623
    .local v8, "ivsrAction":Ljava/lang/String;
    const-string v18, "start"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2624
    const-string v18, "[IVSR set IVSR flag"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$802(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const-wide/32 v20, 0xea60

    invoke-virtual/range {v18 .. v21}, Lcom/android/internal/telephony/cat/CatService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2628
    .end local v8    # "ivsrAction":Ljava/lang/String;
    :cond_3
    const-string v18, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2632
    :cond_4
    const-string v18, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2633
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[Set SIM Recovery flag, sim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isDisplayTextDisabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2647
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v18 .. v21}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$602(Lcom/android/internal/telephony/cat/CatService;Z)Z

    goto/16 :goto_0

    .line 2633
    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 2635
    :cond_7
    const-string v18, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2636
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[World phone flag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isDisplayTextDisabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 2638
    :cond_9
    const-string v18, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2639
    const-string v18, "worldModeState"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2641
    .local v15, "state":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[World mode change status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mSlotId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isDisplayTextDisabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2643
    if-eqz v15, :cond_5

    goto/16 :goto_1

    .line 2641
    :cond_a
    const/16 v18, 0x0

    goto :goto_5

    .line 2664
    .end local v15    # "state":I
    .restart local v7    # "id":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V
    invoke-static {v0, v7}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    # invokes: Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$1100(Lcom/android/internal/telephony/cat/CatService;I)V

    goto/16 :goto_1

    .line 2671
    .end local v7    # "id":I
    :cond_c
    const-string v18, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2672
    const-string v18, "slot"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2673
    .local v4, "SIMID":I
    const-string v18, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2674
    .local v10, "newType":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GSM/CDMA changes, instant sim id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", sim id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", new type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    const-string v18, "CDMA"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    goto/16 :goto_1

    .line 2679
    .end local v4    # "SIMID":I
    .end local v10    # "newType":Ljava/lang/String;
    :cond_d
    const-string v18, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2681
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IR_STATE_CHANGED:  simId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2682
    const-string v18, "subscription"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2684
    .local v16, "subId":I
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 2685
    const-string v18, "Ignore switch roaming mode intent."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2688
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v17

    .line 2689
    .local v17, "sub_Id":[I
    const/16 v18, 0x0

    aget v18, v17, v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    .line 2690
    .local v12, "phoneId":I
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 2691
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v11, :cond_f

    .line 2692
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "phone is null.subId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v17, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", phoneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2695
    :cond_f
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v6

    .line 2696
    .local v6, "cardType":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cardType: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", phoneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2697
    const-string v18, "RUIM"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    const-string v18, "CSIM"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2698
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 2699
    .local v9, "lLteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    if-nez v9, :cond_11

    .line 2700
    const-string v18, "lLteDcPhoneProxy is null."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2703
    :cond_11
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v13

    .line 2704
    .local v13, "sLteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/4 v14, 0x0

    .line 2705
    .local v14, "sRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    if-eqz v13, :cond_12

    .line 2706
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v14

    .line 2708
    :cond_12
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sRoamingMode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2710
    sget-object v18, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-object/from16 v0, v18

    if-ne v0, v14, :cond_13

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->queryStkSetUpMenuFromMD()V

    goto/16 :goto_1

    .line 2713
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/16 v20, 0x0

    # invokes: Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/cat/CatService;->access$1200(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1
.end method
