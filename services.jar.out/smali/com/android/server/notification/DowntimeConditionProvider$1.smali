.class Lcom/android/server/notification/DowntimeConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 359
    .local v8, "now":J
    const-string v7, "DowntimeConditions.enter"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "DowntimeConditions.exit"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 360
    :cond_0
    const-string v7, "time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 361
    .local v10, "schTime":J
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "DowntimeConditions"

    const-string v12, "%s scheduled for %s, fired at %s, delta=%s"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/notification/DowntimeConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/notification/DowntimeConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sub-long v16, v8, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_auto_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 366
    .local v3, "autoToggle":I
    if-nez v3, :cond_2

    .line 367
    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoToggle = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", so break!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v3    # "autoToggle":I
    .end local v10    # "schTime":J
    :goto_0
    return-void

    .line 371
    .restart local v3    # "autoToggle":I
    .restart local v10    # "schTime":J
    :cond_2
    const-string v7, "DowntimeConditions.enter"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->evaluateAutotrigger()V
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$400(Lcom/android/server/notification/DowntimeConditionProvider;)V

    .line 386
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    .line 422
    .end local v3    # "autoToggle":I
    .end local v10    # "schTime":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$900(Lcom/android/server/notification/DowntimeConditionProvider;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$1000(Lcom/android/server/notification/DowntimeConditionProvider;)V

    goto :goto_0

    .line 374
    .restart local v3    # "autoToggle":I
    .restart local v10    # "schTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z
    invoke-static {v7, v12}, Lcom/android/server/notification/DowntimeConditionProvider;->access$502(Lcom/android/server/notification/DowntimeConditionProvider;Z)Z

    .line 377
    const-string v7, "DowntimeConditions"

    const-string v12, "Exit zen: automatic condition false:"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_important_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_auto_enter_important_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$600(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v7

    const/4 v12, 0x0

    const-string v13, "downtime"

    invoke-virtual {v7, v12, v13}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_1

    .line 387
    .end local v3    # "autoToggle":I
    .end local v10    # "schTime":J
    :cond_5
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 388
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timezone changed to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$800(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/notification/DowntimeCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    goto/16 :goto_2

    .line 391
    :cond_7
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 392
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "time changed to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    goto/16 :goto_2

    .line 396
    :cond_9
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 397
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_auto_enter_important_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_c

    const/4 v5, 0x1

    .line 398
    .local v5, "hasAutoEnter":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_auto_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 399
    .local v4, "autoToggleState":I
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mCalendar = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;
    invoke-static {v13}, Lcom/android/server/notification/DowntimeConditionProvider;->access$800(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", autoToggleState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hasAutoEnter = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_a
    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    .line 401
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$800(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$800(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v6

    .line 403
    .local v6, "isInDowntime":Z
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hhy_isInDowntime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_b
    if-eqz v6, :cond_d

    if-nez v5, :cond_d

    .line 406
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_important_interruptions"

    const/4 v13, 0x1

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$600(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v7

    const/4 v12, 0x1

    const-string v13, "downtime"

    invoke-virtual {v7, v12, v13}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 397
    .end local v4    # "autoToggleState":I
    .end local v5    # "hasAutoEnter":Z
    .end local v6    # "isInDowntime":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 409
    .restart local v4    # "autoToggleState":I
    .restart local v5    # "hasAutoEnter":Z
    .restart local v6    # "isInDowntime":Z
    :cond_d
    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "systemui_important_interruptions"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v7}, Lcom/android/server/notification/DowntimeConditionProvider;->access$600(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v7

    const/4 v12, 0x0

    const-string v13, "downtime"

    invoke-virtual {v7, v12, v13}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 420
    .end local v4    # "autoToggleState":I
    .end local v5    # "hasAutoEnter":Z
    .end local v6    # "isInDowntime":Z
    :cond_e
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "DowntimeConditions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fired at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
