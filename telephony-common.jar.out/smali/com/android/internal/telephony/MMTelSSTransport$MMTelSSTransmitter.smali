.class Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 583
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 584
    return-void
.end method


# virtual methods
.method public containSpecificMedia(Ljava/util/List;I)Z
    .locals 6
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 598
    if-nez p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v2

    .line 599
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 604
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 605
    .local v1, "mediaType":Ljava/lang/String;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 608
    :cond_2
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x200

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 603
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 612
    .end local v1    # "mediaType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public convertToLocalTime(Ljava/lang/String;)[J
    .locals 9
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 4710
    const/4 v5, 0x0

    .line 4711
    .local v5, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 4712
    const-string v6, ","

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 4713
    .local v4, "timeArray":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v8, :cond_0

    .line 4714
    new-array v5, v8, [J

    .line 4715
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4716
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4717
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4719
    :try_start_0
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 4720
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4715
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4721
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 4722
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 4723
    const/4 v6, 0x0

    .line 4728
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "timeArray":[Ljava/lang/String;
    :goto_1
    return-object v6

    :cond_0
    move-object v6, v5

    goto :goto_1
.end method

.method public convertToSeverTime([J)Ljava/lang/String;
    .locals 6
    .param p1, "timeSlot"    # [J

    .prologue
    .line 4732
    const/4 v3, 0x0

    .line 4733
    .local v3, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 4734
    :cond_0
    const/4 v4, 0x0

    .line 4746
    :goto_0
    return-object v4

    .line 4736
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 4737
    new-instance v0, Ljava/util/Date;

    aget-wide v4, p1, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4738
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4739
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4740
    if-nez v2, :cond_2

    .line 4741
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 4736
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4743
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    move-object v4, v3

    .line 4746
    goto :goto_0
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 11
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "cfAction"    # I
    .param p4, "cfReason"    # I

    .prologue
    .line 2290
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2291
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2293
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2294
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2295
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2297
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_b

    .line 2298
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2299
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2301
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2302
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2304
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2305
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2307
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2308
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2310
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2311
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2313
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2314
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2316
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2317
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2319
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2320
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2322
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2323
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2325
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2326
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2329
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2330
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 2331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 2332
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2336
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2339
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2340
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_d

    .line 2341
    const/4 v8, 0x4

    if-ne p3, v8, :cond_c

    if-nez p4, :cond_c

    .line 2343
    const-string v8, "MMTelSS"

    const-string v9, "No need to append the original numebr in Erasure."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const-string v8, ""

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2348
    :goto_1
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2350
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2357
    :goto_2
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2358
    return-object v3

    .line 2346
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2353
    :cond_d
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No need to append the forward number, cfAction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cfReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 12
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "requestedServiceClass"    # I
    .param p4, "phoneId"    # I
    .param p5, "cfAction"    # I
    .param p6, "cfReason"    # I

    .prologue
    .line 2392
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2393
    .local v6, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 2443
    .local v5, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2446
    const/4 v4, 0x0

    .line 2531
    :goto_0
    return-object v4

    .line 2449
    :cond_0
    iget-object v9, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2450
    .local v4, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2451
    .local v3, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2453
    .local v2, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_e

    .line 2454
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2455
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2457
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2458
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2460
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2461
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2463
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2464
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2466
    :cond_4
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2467
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2469
    :cond_5
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2470
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2472
    :cond_6
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2473
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2475
    :cond_7
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2476
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2478
    :cond_8
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2479
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2481
    :cond_9
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2482
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2485
    :cond_a
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    .line 2486
    .local v8, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_c

    .line 2487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_c

    .line 2488
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2489
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2487
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2494
    .end local v1    # "i":I
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2512
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v7

    .line 2513
    .local v7, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v7, :cond_11

    .line 2514
    const/4 v9, 0x4

    move/from16 v0, p5

    if-ne v0, v9, :cond_10

    if-nez p6, :cond_10

    .line 2516
    const-string v9, "MMTelSS"

    const-string v10, "No need to append the original numebr in Erasure."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const-string v9, ""

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2521
    :goto_2
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2523
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2529
    :goto_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_0

    .line 2498
    .end local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2500
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    .restart local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "audio"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2502
    const-string v9, "video"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2503
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_d

    .line 2504
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2506
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2503
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2519
    .end local v1    # "i":I
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_10
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2526
    :cond_11
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No need to append the forward number, cfAction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cfReason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V
    .locals 7
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "allow"    # Z
    .param p4, "cfAction"    # I
    .param p5, "cfReason"    # I

    .prologue
    .line 2363
    const/4 v0, 0x0

    .line 2364
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x0

    .line 2365
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2366
    .local v3, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4

    .line 2368
    .local v4, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2369
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2372
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto :goto_0

    .line 2374
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2375
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2376
    .local v2, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2377
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2378
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    goto :goto_0

    .line 2380
    .end local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 2381
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2382
    .restart local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2383
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2384
    invoke-virtual {v0, p3}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_0
.end method

.method public getMediaType(I)Ljava/lang/String;
    .locals 1
    .param p1, "serviceClass"    # I

    .prologue
    .line 626
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 627
    const-string v0, "audio"

    .line 631
    :goto_0
    return-object v0

    .line 628
    :cond_0
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 629
    const-string v0, "video"

    goto :goto_0

    .line 631
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "setCFReason"    # I
    .param p4, "setCFAction"    # I
    .param p5, "setCFServiceClass"    # I
    .param p6, "setCFNumber"    # Ljava/lang/String;
    .param p7, "setCFTimeSeconds"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 4666
    invoke-virtual {p2, p9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 4667
    .local v2, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 4668
    .local v1, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 4669
    .local v0, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCreateNewRuleForCFInTimeSlot(): reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cfTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    const/4 v3, 0x1

    if-ne p5, v3, :cond_3

    .line 4675
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4683
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 4684
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 4694
    :cond_1
    :goto_1
    invoke-virtual {v1, p8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 4695
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4696
    const/4 v3, 0x0

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 4700
    :goto_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 4701
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 4703
    if-eqz p10, :cond_2

    .line 4704
    invoke-virtual {p1, p9}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 4706
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 4676
    :cond_3
    const/16 v3, 0x200

    if-ne p5, v3, :cond_4

    .line 4677
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4678
    :cond_4
    if-nez p5, :cond_0

    .line 4679
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4680
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4685
    :cond_5
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    .line 4686
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 4687
    :cond_6
    const/4 v3, 0x3

    if-ne p3, v3, :cond_7

    .line 4688
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 4689
    :cond_7
    const/4 v3, 0x6

    if-ne p3, v3, :cond_8

    .line 4690
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 4691
    :cond_8
    if-nez p3, :cond_1

    goto :goto_1

    .line 4698
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 15
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "facility"    # Ljava/lang/String;
    .param p5, "lockState"    # I
    .param p6, "setCBServiceClass"    # I
    .param p7, "RuleID"    # Ljava/lang/String;
    .param p8, "updateSingleRule"    # Z
    .param p9, "num_of_expansion"    # I
    .param p10, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2139
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 2140
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2141
    .local v2, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    .line 2142
    .local v5, "cbAllow":Z
    const/4 v3, 0x0

    .line 2145
    .local v3, "addRuleDeactivatedNode":Z
    const-string v12, "persist.radio.ss.xrdm"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2146
    .local v11, "sDisableRuleMode":Ljava/lang/String;
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleCreateNewRuleForExistingCB():sDisableRuleMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 2149
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    .line 2151
    const/4 v5, 0x0

    .line 2169
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 2170
    .local v7, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2171
    .local v6, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2174
    .local v4, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2176
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_9

    .line 2177
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2187
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 2188
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2191
    :cond_2
    const-string v12, "IR"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2192
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2193
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2208
    :cond_3
    :goto_2
    if-eqz p8, :cond_4

    const/4 v12, 0x1

    move/from16 v0, p9

    if-ne v12, v0, :cond_4

    .line 2209
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v12, :cond_f

    move-object/from16 v10, p1

    .line 2210
    check-cast v10, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2211
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2218
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .end local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_4
    return v12

    .line 2154
    :cond_5
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 2155
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable CB for serviceClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,not create new rule for it to put in the new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    if-eqz p8, :cond_6

    .line 2157
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCB(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 2160
    :cond_7
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 2162
    const/4 v3, 0x1

    .line 2163
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2164
    :cond_8
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 2165
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2178
    .restart local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    .line 2179
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2180
    :cond_a
    if-nez p6, :cond_1

    .line 2181
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2182
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2194
    :cond_b
    const-string v12, "AI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2196
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2197
    :cond_c
    const-string v12, "OI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2198
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2199
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2200
    :cond_d
    const-string v12, "OX"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2201
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2202
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2203
    :cond_e
    const-string v12, "AO"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2205
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2212
    :cond_f
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v12, :cond_4

    move-object/from16 v9, p1

    .line 2213
    check-cast v9, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2214
    .local v9, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z
    .locals 20
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "setCFReason"    # I
    .param p5, "setCFAction"    # I
    .param p6, "setCFServiceClass"    # I
    .param p7, "setCFNumber"    # Ljava/lang/String;
    .param p8, "setCFTimeSeconds"    # I
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .param p11, "numExpansion"    # I
    .param p12, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2008
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    .line 2009
    .local v16, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 2012
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v5, "persist.radio.ss.xrdm"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2013
    .local v19, "sDisableRuleMode":Ljava/lang/String;
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCreateNewRuleForExistingCF():sDisableRuleMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 2017
    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_d

    .line 2019
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v15

    .line 2020
    .local v15, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    .line 2021
    .local v14, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v13

    .line 2022
    .local v13, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCreateNewRuleForExistingCF():Enable CF with reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",serviceClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cfTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2026
    const/4 v5, 0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_6

    .line 2027
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2036
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_8

    .line 2037
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2049
    :cond_2
    :goto_1
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2050
    :cond_3
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object p7

    .line 2051
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setCFNumber is empty or null, so update to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_4
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2057
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2061
    :goto_2
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2062
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2063
    if-eqz p10, :cond_5

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_5

    .line 2064
    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2066
    :cond_5
    const/4 v5, 0x1

    .line 2128
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v5

    .line 2028
    .restart local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_6
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ne v0, v5, :cond_7

    .line 2029
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    :cond_7
    if-nez p6, :cond_1

    .line 2031
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2032
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2038
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 2039
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_1

    .line 2040
    :cond_9
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 2041
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_1

    .line 2042
    :cond_a
    const/4 v5, 0x6

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 2043
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_1

    .line 2044
    :cond_b
    if-nez p4, :cond_2

    goto/16 :goto_1

    .line 2059
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2069
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    if-nez p6, :cond_11

    .line 2070
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 2071
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    if-eqz p10, :cond_e

    .line 2073
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 2076
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2077
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2079
    .local v18, "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2080
    if-eqz p10, :cond_10

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_10

    .line 2081
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2083
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2085
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2086
    if-eqz p10, :cond_13

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_13

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2088
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v17

    .line 2090
    .local v17, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v17, :cond_12

    .line 2091
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2093
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2095
    .end local v17    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 2096
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<rule-deactivated> for this media types to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2099
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2102
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule for remaining media types to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2105
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    .line 2107
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2110
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 2111
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":not copy old rule to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    if-eqz p10, :cond_16

    .line 2114
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2117
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2118
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule with <rule-deactivated> to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2121
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2122
    if-eqz p10, :cond_18

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_18

    .line 2123
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2125
    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2128
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 9
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "lockState"    # I
    .param p5, "setCBServiceClass"    # I
    .param p6, "RuleID"    # Ljava/lang/String;
    .param p7, "updateSingleRule"    # Z
    .param p8, "num_of_expansion"    # I
    .param p9, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2226
    const/4 v2, 0x1

    .line 2228
    .local v2, "cbAllow":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    .line 2230
    const/4 v2, 0x0

    .line 2240
    invoke-virtual {p2, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2241
    .local v4, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2242
    .local v3, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2245
    .local v1, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2247
    const/4 v7, 0x1

    if-ne p5, v7, :cond_4

    .line 2248
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2257
    :cond_0
    :goto_0
    const-string v7, "IR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2258
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2259
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2274
    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    const/4 v7, 0x1

    move/from16 v0, p8

    if-ne v7, v0, :cond_2

    .line 2275
    instance-of v7, p1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v7, :cond_a

    move-object v6, p1

    .line 2276
    check-cast v6, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2277
    .local v6, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v6, p6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2284
    .end local v6    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .end local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v7

    .line 2235
    :cond_3
    const/4 v2, 0x1

    .line 2236
    const-string v7, "MMTelSS"

    const-string v8, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/4 v7, 0x0

    goto :goto_3

    .line 2249
    .restart local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    const/16 v7, 0x200

    if-ne p5, v7, :cond_5

    .line 2250
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2251
    :cond_5
    if-nez p5, :cond_0

    .line 2252
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2253
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2260
    :cond_6
    const-string v7, "AI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2262
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2263
    :cond_7
    const-string v7, "OI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2264
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2265
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2266
    :cond_8
    const-string v7, "OX"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2267
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2268
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2269
    :cond_9
    const-string v7, "AO"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2271
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2278
    :cond_a
    instance-of v7, p1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 2279
    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2280
    .local v5, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v5, p6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 31
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1252
    const/16 v25, -0x1

    .line 1253
    .local v25, "reqNo":I
    const/16 v28, -0x1

    .line 1254
    .local v28, "serialNo":I
    const/4 v11, -0x1

    .line 1256
    .local v11, "cbServiceClass":I
    const-string v10, ""

    .line 1257
    .local v10, "cBFacility":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 1259
    .local v17, "get_cb_response":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1262
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1263
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1264
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1265
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1266
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1267
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1268
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1534
    .end local v8    # "phoneId":I
    :catch_0
    move-exception v29

    .line 1535
    .local v29, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1542
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1543
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1544
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1622
    .end local v29    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1275
    .restart local v8    # "phoneId":I
    :cond_1
    const/16 v22, 0x0

    .line 1278
    .local v22, "num_of_comparision":I
    const/16 v2, 0x210

    if-ne v11, v2, :cond_2

    .line 1279
    const/16 v11, 0x200

    .line 1282
    :cond_2
    if-nez v11, :cond_6

    .line 1283
    const/4 v11, 0x1

    .line 1285
    const/16 v22, 0x2

    .line 1286
    :try_start_1
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_1
    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1298
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1299
    .local v14, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): mOcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOcbCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1303
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using ETAG mOcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .line 1306
    .local v23, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1307
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1337
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1338
    .local v27, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1340
    .local v26, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_b

    .line 1341
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1342
    if-nez v26, :cond_a

    .line 1343
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_3
    if-eqz v26, :cond_14

    .line 1353
    const/16 v20, 0x0

    .local v20, "it":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1354
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 1356
    const/16 v11, 0x200

    .line 1357
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_4
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 1361
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1362
    .local v24, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1363
    .local v13, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1364
    .local v9, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1366
    .local v21, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz v13, :cond_c

    .line 1368
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1374
    :goto_6
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1377
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1379
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1353
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1289
    .end local v14    # "curTime":J
    .end local v18    # "i":I
    .end local v20    # "it":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_6
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 1309
    .restart local v14    # "curTime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v14, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 1312
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using mOcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    goto/16 :goto_2

    .line 1315
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1322
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1550
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    :catch_1
    move-exception v30

    .line 1551
    .local v30, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1559
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1560
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1561
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1562
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1567
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1326
    .end local v30    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v8    # "phoneId":I
    .restart local v14    # "curTime":J
    .restart local v22    # "num_of_comparision":I
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1329
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .line 1330
    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v23

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1333
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): new mOcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1573
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :catch_2
    move-exception v16

    .line 1574
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1582
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1583
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1584
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1585
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 1586
    .local v12, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1587
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1345
    .end local v12    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v14    # "curTime":J
    .restart local v22    # "num_of_comparision":I
    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_a
    :try_start_3
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MO CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1348
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1371
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v20    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_c
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1381
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1384
    :cond_e
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1387
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1389
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1360
    :cond_f
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1391
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto :goto_9

    .line 1393
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1397
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v13, :cond_12

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1399
    :cond_12
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1401
    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1409
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v20    # "it":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MO CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1597
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_15
    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_16

    .line 1615
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1616
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1619
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1413
    .restart local v8    # "phoneId":I
    .restart local v22    # "num_of_comparision":I
    :cond_17
    :try_start_4
    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1416
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1417
    .restart local v14    # "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): mIcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIcbCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1421
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using ETAG mIcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .line 1424
    .local v19, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1425
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1455
    :goto_b
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1456
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1458
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_1f

    .line 1459
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1460
    if-nez v26, :cond_1e

    .line 1461
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :goto_c
    if-eqz v26, :cond_26

    .line 1471
    const/16 v20, 0x0

    .restart local v20    # "it":I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1472
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    const/4 v2, 0x1

    if-ne v11, v2, :cond_19

    .line 1474
    const/16 v11, 0x200

    .line 1475
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_25

    .line 1478
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1479
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1480
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1481
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1483
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-eqz v13, :cond_20

    .line 1485
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",anonymous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1491
    :goto_f
    if-eqz v13, :cond_22

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1494
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v13, :cond_21

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1496
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1477
    :cond_1a
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_e

    .line 1427
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v20    # "it":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-ltz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v14, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 1430
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using mIcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    goto/16 :goto_b

    .line 1433
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1440
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 1444
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1447
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .line 1448
    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1451
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): new mIcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1463
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1e
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MT CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1466
    :cond_1f
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1488
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v20    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_20
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1498
    :cond_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1500
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1504
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v13, :cond_23

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1506
    :cond_23
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1508
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1471
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_25
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1516
    .end local v18    # "i":I
    .end local v20    # "it":I
    :cond_26
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MT CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_a

    .line 1531
    .end local v14    # "curTime":J
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_27
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): Not support query for CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    .line 1565
    .end local v8    # "phoneId":I
    .end local v22    # "num_of_comparision":I
    .restart local v30    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_28
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_8
.end method

.method public handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 45
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1625
    const/16 v38, -0x1

    .line 1626
    .local v38, "reqNo":I
    const/16 v41, -0x1

    .line 1627
    .local v41, "serialNo":I
    const/16 v29, 0x1

    .line 1628
    .local v29, "numInfos":I
    const/16 v22, 0x0

    .line 1630
    .local v22, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v33, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/4 v15, -0x1

    .line 1633
    .local v15, "cfAction":I
    const/16 v37, -0x1

    .line 1634
    .local v37, "reason":I
    const/16 v42, -0x1

    .line 1635
    .local v42, "serviceClass":I
    const/16 v32, -0x1

    .line 1636
    .local v32, "orgServiceClass":I
    const-string v16, ""

    .line 1637
    .local v16, "cfNumber":Ljava/lang/String;
    const-string v11, ""

    .line 1638
    .local v11, "CFPhoneNum":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1639
    .local v35, "queryStatus":I
    const/16 v28, 0x14

    .line 1657
    .local v28, "noReplyTimer":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1658
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1659
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1660
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1661
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1662
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1663
    move/from16 v32, v42

    .line 1664
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1665
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1667
    .local v10, "phoneId":I
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1668
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1909
    .end local v10    # "phoneId":I
    :catch_0
    move-exception v43

    .line 1910
    .local v43, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1914
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1915
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1916
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1998
    .end local v43    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1672
    .restart local v10    # "phoneId":I
    :cond_1
    :try_start_1
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from CF parcel:req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cfAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1676
    .local v18, "curTime":J
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCdCacheLastQueried = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1680
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): using ETAG mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .line 1683
    .local v13, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 1684
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 1685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1721
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v40

    .line 1725
    .local v40, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v39, 0x0

    .line 1727
    .local v39, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v40, :cond_d

    .line 1728
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v39

    .line 1734
    :goto_2
    if-eqz v39, :cond_20

    .line 1736
    const/16 v31, 0x1

    .line 1737
    .local v31, "num_of_expansion":I
    const/4 v4, 0x5

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    .line 1740
    const/16 v31, 0x4

    .line 1747
    :cond_2
    :goto_3
    const/16 v27, 0x0

    .local v27, "n":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 1748
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_3

    .line 1749
    if-nez v27, :cond_f

    const/16 v37, 0x1

    .line 1756
    :cond_3
    :goto_5
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num_of_expansion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",with reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/16 v4, 0x210

    move/from16 v0, v32

    if-ne v0, v4, :cond_4

    .line 1760
    const/16 v42, 0x200

    .line 1765
    :cond_4
    const/16 v30, 0x0

    .line 1767
    .local v30, "num_of_comparision":I
    if-nez v32, :cond_13

    .line 1768
    const/16 v42, 0x1

    .line 1770
    const/16 v30, 0x2

    .line 1771
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_6
    const/16 v24, 0x0

    .local v24, "it":I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 1779
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_5

    .line 1781
    const/16 v42, 0x200

    .line 1782
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_5
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num_of_comparision="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v24, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",with service class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_8
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    .line 1789
    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1790
    .local v36, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v17

    .line 1791
    .local v17, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 1792
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v26, 0x0

    .line 1794
    .local v26, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_14

    .line 1795
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():busy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NoAnswer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NoReachable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NotRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v26

    .line 1802
    :goto_9
    const/4 v4, 0x2

    if-ne v15, v4, :cond_15

    if-nez v37, :cond_15

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-nez v17, :cond_15

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1809
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/16 v35, 0x1

    .line 1812
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1813
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1816
    :cond_8
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1874
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    :goto_a
    new-instance v25, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1875
    .local v25, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1876
    move/from16 v0, v37

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1877
    move/from16 v0, v42

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1878
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1879
    move-object/from16 v0, v25

    iput-object v11, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1880
    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1881
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():add one record with reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",queryStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    const/16 v35, 0x0

    .line 1886
    const-string v11, ""

    .line 1887
    const/16 v28, 0x14

    .line 1777
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7

    .line 1686
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v21    # "i":I
    .end local v24    # "it":I
    .end local v25    # "item":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v27    # "n":I
    .end local v30    # "num_of_comparision":I
    .end local v31    # "num_of_expansion":I
    .end local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-ltz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    sub-long v4, v18, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 1689
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): using mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 1692
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1699
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): XcapRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1922
    .end local v10    # "phoneId":I
    .end local v18    # "curTime":J
    :catch_1
    move-exception v44

    .line 1923
    .local v44, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1928
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1929
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1930
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1931
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): xcapException.isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1936
    :goto_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1703
    .end local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "phoneId":I
    .restart local v18    # "curTime":J
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1706
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .line 1707
    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1710
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): new mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1942
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    :catch_2
    move-exception v20

    .line 1943
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1948
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 1952
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1953
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v14

    .line 1954
    .local v14, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1955
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1730
    .end local v14    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v10    # "phoneId":I
    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v18    # "curTime":J
    .restart local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_d
    :try_start_3
    const-string v4, "MMTelSS"

    const-string v5, "No CF related rules in remote server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1741
    .restart local v31    # "num_of_expansion":I
    :cond_e
    const/4 v4, 0x4

    move/from16 v0, v37

    if-ne v0, v4, :cond_2

    .line 1744
    const/16 v31, 0x5

    goto/16 :goto_3

    .line 1750
    .restart local v27    # "n":I
    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    const/16 v37, 0x2

    goto/16 :goto_5

    .line 1751
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_11

    const/16 v37, 0x3

    goto/16 :goto_5

    .line 1752
    :cond_11
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    const/16 v37, 0x6

    goto/16 :goto_5

    .line 1753
    :cond_12
    const/4 v4, 0x4

    move/from16 v0, v27

    if-ne v0, v4, :cond_3

    const/16 v37, 0x0

    goto/16 :goto_5

    .line 1774
    .restart local v30    # "num_of_comparision":I
    :cond_13
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 1798
    .restart local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v21    # "i":I
    .restart local v24    # "it":I
    .restart local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1819
    :cond_15
    const/4 v4, 0x2

    if-ne v15, v4, :cond_17

    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_17

    if-eqz v17, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1822
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFB is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/16 v35, 0x1

    .line 1825
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1826
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1828
    :cond_16
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1829
    goto/16 :goto_a

    .line 1831
    :cond_17
    const/4 v4, 0x2

    if-ne v15, v4, :cond_19

    const/4 v4, 0x2

    move/from16 v0, v37

    if-ne v0, v4, :cond_19

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1834
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/16 v35, 0x1

    .line 1837
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1838
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1840
    :cond_18
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1841
    goto/16 :goto_a

    .line 1843
    :cond_19
    const/4 v4, 0x2

    if-ne v15, v4, :cond_1b

    const/4 v4, 0x3

    move/from16 v0, v37

    if-ne v0, v4, :cond_1b

    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1846
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/16 v35, 0x1

    .line 1849
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1850
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1852
    :cond_1a
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1853
    goto/16 :goto_a

    .line 1855
    :cond_1b
    const/4 v4, 0x2

    if-ne v15, v4, :cond_1d

    const/4 v4, 0x6

    move/from16 v0, v37

    if-ne v0, v4, :cond_1d

    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1858
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/16 v35, 0x1

    .line 1861
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 1862
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1864
    :cond_1c
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1865
    goto/16 :goto_a

    .line 1869
    :cond_1d
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 1747
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "i":I
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1e
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4

    .line 1895
    .end local v24    # "it":I
    .end local v30    # "num_of_comparision":I
    :cond_1f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1897
    .local v34, "queriedSize":I
    move/from16 v0, v34

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0

    .line 1898
    const/16 v23, 0x0

    .local v23, "inx":I
    :goto_c
    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_21

    .line 1899
    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v22, v23

    .line 1898
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 1904
    .end local v23    # "inx":I
    .end local v27    # "n":I
    .end local v31    # "num_of_expansion":I
    .end local v34    # "queriedSize":I
    :cond_20
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1906
    const/16 v35, 0x0

    .line 1980
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    .end local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_22

    .line 1991
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1992
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1995
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1934
    .restart local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_23
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_b
.end method

.method public handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 41
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 4127
    const/16 v33, -0x1

    .line 4128
    .local v33, "reqNo":I
    const/16 v36, -0x1

    .line 4129
    .local v36, "serialNo":I
    const/16 v20, 0x0

    .line 4130
    .local v20, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4133
    .local v28, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfoEx;>;"
    const/16 v32, -0x1

    .line 4134
    .local v32, "reason":I
    const/16 v37, -0x1

    .line 4135
    .local v37, "serviceClass":I
    const/16 v27, -0x1

    .line 4136
    .local v27, "orgServiceClass":I
    const-string v14, ""

    .line 4137
    .local v14, "cfPhoneNum":Ljava/lang/String;
    const/16 v30, 0x0

    .line 4138
    .local v30, "queryStatus":I
    const/16 v25, 0x14

    .line 4139
    .local v25, "noReplyTimer":I
    const/16 v38, 0x0

    .line 4140
    .local v38, "timeSlot":[J
    const/4 v10, 0x0

    .line 4143
    .local v10, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4144
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 4145
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 4146
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 4147
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 4148
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4149
    move/from16 v27, v37

    .line 4151
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from CF parcel: req = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4155
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4328
    :catch_0
    move-exception v39

    .line 4329
    .local v39, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4333
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4334
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4335
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4387
    .end local v39    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 4160
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 4161
    .local v16, "curTime":J
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCdCacheLastQueried = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4165
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 4168
    .local v12, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4169
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4199
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v35

    .line 4204
    .local v35, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4206
    .local v34, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v35, :cond_b

    .line 4207
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v34

    .line 4214
    :goto_2
    if-eqz v34, :cond_10

    .line 4216
    const/16 v4, 0x210

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 4218
    const/16 v37, 0x200

    .line 4221
    :cond_2
    const/16 v26, 0x0

    .line 4223
    .local v26, "numOfComparision":I
    if-nez v27, :cond_c

    .line 4224
    const/16 v37, 0x1

    .line 4227
    const/16 v26, 0x2

    .line 4228
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    :goto_3
    const/16 v22, 0x0

    .local v22, "it":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 4237
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_3

    .line 4239
    const/16 v37, 0x200

    .line 4240
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    :cond_3
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numOfComparision = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v22, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", with service class = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 4250
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4251
    .local v31, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v15

    .line 4252
    .local v15, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v11

    .line 4253
    .local v11, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v24, 0x0

    .line 4255
    .local v24, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_d

    .line 4256
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): busy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NoAnswer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NoReachable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NotRegistered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v24

    .line 4267
    :goto_6
    if-nez v32, :cond_e

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v15, :cond_e

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4274
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    const/16 v30, 0x1

    .line 4278
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4279
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v14

    .line 4283
    :cond_6
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 4284
    if-eqz v15, :cond_7

    .line 4285
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v38

    .line 4293
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    new-instance v23, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 4294
    .local v23, "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 4295
    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 4296
    move/from16 v0, v37

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 4297
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 4298
    move-object/from16 v0, v23

    iput-object v14, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 4299
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 4300
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 4301
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): add one record with reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", queryStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4309
    const/16 v30, 0x0

    .line 4310
    const-string v14, ""

    .line 4311
    const/16 v25, 0x14

    .line 4312
    const/16 v38, 0x0

    .line 4236
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 4171
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v19    # "i":I
    .end local v22    # "it":I
    .end local v23    # "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v26    # "numOfComparision":I
    .end local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    cmp-long v4, v16, v4

    if-ltz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 4174
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): using mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 4177
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4184
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): XcapRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4341
    .end local v16    # "curTime":J
    :catch_1
    move-exception v40

    .line 4342
    .local v40, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4347
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4348
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4349
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4350
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4355
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4188
    .end local v40    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v16    # "curTime":J
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4191
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 4192
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4195
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): new mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 4361
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    :catch_2
    move-exception v18

    .line 4362
    .local v18, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4367
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 4368
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4369
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v13

    .line 4371
    .local v13, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4372
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4209
    .end local v13    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v16    # "curTime":J
    .restart local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_b
    :try_start_3
    const-string v4, "MMTelSS"

    const-string v5, "No CF related rules in remote server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4233
    .restart local v26    # "numOfComparision":I
    :cond_c
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 4263
    .restart local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v19    # "i":I
    .restart local v22    # "it":I
    .restart local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): Empty cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4289
    :cond_e
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot()from xcap: Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 4316
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "i":I
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 4318
    .local v29, "queriedSize":I
    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0

    .line 4319
    const/16 v21, 0x0

    .local v21, "inx":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 4320
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfoEx;

    aput-object v4, v20, v21

    .line 4319
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 4324
    .end local v21    # "inx":I
    .end local v22    # "it":I
    .end local v26    # "numOfComparision":I
    .end local v29    # "queriedSize":I
    :cond_10
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4326
    const/16 v30, 0x0

    .line 4380
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    .end local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_12

    .line 4381
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4382
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4384
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4353
    .restart local v40    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_7
.end method

.method public handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 16
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 802
    const/4 v13, -0x1

    .line 803
    .local v13, "reqNo":I
    const/4 v14, -0x1

    .line 804
    .local v14, "serialNo":I
    const/4 v11, 0x0

    .line 805
    .local v11, "get_clip_result":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 806
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 807
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 808
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 809
    .local v7, "phoneId":I
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP() reqNo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serialNo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): !isPreferXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 816
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 817
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP(): XcapRoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 830
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 831
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 849
    :catch_0
    move-exception v15

    .line 850
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 852
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 853
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 854
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 859
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 836
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 840
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v12

    .line 842
    .local v12, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP():active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    .line 844
    const/4 v11, 0x1

    .line 880
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 881
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 882
    .local v10, "get_clip_response":[I
    const/4 v1, 0x0

    aput v11, v10, v1

    .line 883
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 884
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 887
    .end local v10    # "get_clip_response":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 846
    .restart local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 857
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .restart local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1

    .line 865
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 866
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 869
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 870
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 871
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 21
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 665
    const/16 v16, 0x1

    .line 666
    .local v16, "presentation_mode":I
    const/4 v14, 0x0

    .line 667
    .local v14, "get_clir_result":I
    const/16 v17, -0x1

    .line 668
    .local v17, "reqNo":I
    const/16 v19, -0x1

    .line 670
    .local v19, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 671
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 672
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 673
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 674
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR() reqNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serialNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 678
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 680
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 681
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 690
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOirCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .line 697
    .local v15, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 698
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 731
    :goto_1
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 732
    .local v18, "restricted":Z
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 734
    const/16 v16, 0x3

    .line 735
    const/4 v14, 0x1

    .line 787
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v18    # "restricted":Z
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 788
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 789
    .local v13, "get_clir_response":[I
    const/4 v2, 0x0

    aput v14, v13, v2

    .line 790
    const/4 v2, 0x1

    aput v16, v13, v2

    .line 791
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 792
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 795
    .end local v13    # "get_clir_response":[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 700
    .restart local v10    # "curTime":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 703
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): using mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    goto/16 :goto_1

    .line 706
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 713
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 714
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 742
    .end local v10    # "curTime":J
    :catch_0
    move-exception v20

    .line 743
    .local v20, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 748
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 749
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 750
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 751
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 756
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 719
    .end local v20    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .line 724
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 727
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): new mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 762
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v12

    .line 764
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 769
    const/16 v16, 0x2

    .line 770
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 772
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 773
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 774
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 738
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v18    # "restricted":Z
    :cond_7
    const/16 v16, 0x4

    .line 739
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 754
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v18    # "restricted":Z
    .restart local v20    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_3
.end method

.method public handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 898
    const/4 v10, -0x1

    .line 899
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 900
    .local v11, "serialNo":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 901
    .local v9, "get_colp_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 902
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 903
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 904
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 905
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP() reqNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serialNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 912
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 926
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v13

    .line 948
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 950
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 951
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 952
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 957
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 931
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 935
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 937
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0

    .line 941
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 981
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 982
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 943
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aput v1, v9, v0

    .line 944
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v9, v0
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 963
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v8

    .line 964
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 966
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 967
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 968
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 969
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 955
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 993
    const/4 v10, -0x1

    .line 994
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 995
    .local v11, "serialNo":I
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 996
    .local v9, "get_colr_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 997
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 998
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 999
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1000
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR() reqNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serialNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1007
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1021
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v13

    .line 1042
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1044
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1045
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1046
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1051
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1026
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1030
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 1032
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1072
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1075
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1076
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1079
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1038
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aput v1, v9, v0
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1057
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v8

    .line 1058
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1060
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1061
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 1062
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1063
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1049
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 20
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1086
    const/16 v16, -0x1

    .line 1087
    .local v16, "reqNo":I
    const/16 v17, -0x1

    .line 1088
    .local v17, "serialNo":I
    const/4 v13, -0x1

    .line 1089
    .local v13, "cwServiceClass":I
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 1090
    .local v15, "get_cw_response":[I
    const/4 v8, 0x0

    .line 1096
    .local v8, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1097
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1098
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1099
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1101
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CW serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1104
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1160
    :catch_0
    move-exception v18

    .line 1161
    .local v18, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1166
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1167
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1249
    .end local v18    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    const/16 v2, 0x210

    if-ne v13, v2, :cond_2

    .line 1110
    const/16 v13, 0x200

    .line 1114
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1115
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCwCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1119
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): using ETAG mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 1122
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 1123
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1152
    :goto_1
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1153
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v15, v2

    .line 1158
    :goto_2
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): isActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1214
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 1217
    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1227
    if-nez v13, :cond_c

    .line 1230
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    .line 1231
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit16 v3, v3, 0x200

    aput v3, v15, v2

    .line 1240
    :cond_4
    :goto_3
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1243
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1125
    .restart local v10    # "curTime":J
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 1128
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): using mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto/16 :goto_1

    .line 1131
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1138
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1173
    .end local v10    # "curTime":J
    :catch_1
    move-exception v19

    .line 1174
    .local v19, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1179
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1180
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1181
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1182
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1187
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1142
    .end local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1144
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 1145
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1148
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): new mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1193
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_2
    move-exception v14

    .line 1194
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1199
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1201
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 1202
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1203
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1156
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    aput v3, v15, v2
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1185
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_4

    .line 1233
    .end local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/2addr v3, v13

    aput v3, v15, v2

    .line 1234
    const/16 v2, 0x200

    if-ne v13, v2, :cond_4

    .line 1237
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    goto/16 :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x19c

    .line 4753
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v9

    check-cast v7, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4754
    .local v7, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    const/4 v5, 0x0

    .line 4756
    .local v5, "req":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4927
    :cond_0
    :goto_0
    return-void

    .line 4763
    :pswitch_0
    const/4 v1, 0x0

    .line 4764
    .local v1, "alreadySubtracted":Z
    const/4 v6, -0x1

    .line 4765
    .local v6, "reqNo":I
    const/4 v8, -0x1

    .line 4767
    .local v8, "serialNo":I
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): EVENT_SEND:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4772
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4773
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4775
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4776
    const/4 v1, 0x1

    .line 4781
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4784
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v11}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    iget v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_1

    .line 4854
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized MMTelSS Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4860
    :catch_0
    move-exception v3

    .line 4861
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4862
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v5

    .line 4865
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): RuntimeException:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    if-nez v5, :cond_1

    if-nez v1, :cond_2

    .line 4869
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 4870
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4876
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    .line 4880
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    :goto_1
    if-nez v1, :cond_3

    .line 4881
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): !alreadySubtracted:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4889
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v9, :cond_4

    .line 4890
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 4891
    iput-object v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 4894
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 4895
    :cond_5
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): ERROR wakeLock:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4773
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4876
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    throw v9

    .line 4788
    :pswitch_1
    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4789
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCLIR() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4876
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    goto/16 :goto_1

    .line 4794
    :pswitch_2
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4797
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4800
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4803
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4806
    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4807
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCW() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4812
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4815
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4816
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCB() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4821
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4824
    :pswitch_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4825
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCF() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4830
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4833
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4836
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4839
    :pswitch_e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4843
    :pswitch_f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4844
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCFInTimeSlot() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4850
    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 4905
    .end local v1    # "alreadySubtracted":Z
    .end local v6    # "reqNo":I
    .end local v8    # "serialNo":I
    :pswitch_11
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 4906
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4908
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4909
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4910
    .local v2, "count":I
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v13, v13, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 4915
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v0

    .line 4916
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4920
    :cond_7
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4922
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4924
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_8
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v9

    .line 4920
    :catchall_3
    move-exception v9

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 4786
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 87
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3462
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3463
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3464
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 3465
    .local v85, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3466
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v82, v13

    .line 3467
    .local v82, "original_facility":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3468
    .local v14, "lockState":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3469
    .local v15, "setCBServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3471
    .local v8, "phoneId":I
    const/16 v63, 0x0

    .line 3472
    .local v63, "AddRuleForBAOCWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3473
    .local v64, "AddRuleForBAOICWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3474
    .local v65, "AddRuleForBAOICxHWithAllMediaType":Z
    const/16 v61, 0x0

    .line 3475
    .local v61, "AddRuleForBAICWithAllMediaType":Z
    const/16 v62, 0x0

    .line 3477
    .local v62, "AddRuleForBAICrWithAllMediaType":Z
    const-string v34, "AO"

    .line 3478
    .local v34, "BAOC_RuleID":Ljava/lang/String;
    const-string v16, "OI"

    .line 3479
    .local v16, "BAOIC_RuleID":Ljava/lang/String;
    const-string v26, "OX"

    .line 3480
    .local v26, "BAOICExHC_RuleID":Ljava/lang/String;
    const-string v57, "AI"

    .line 3481
    .local v57, "BAIC_RuleID":Ljava/lang/String;
    const-string v49, "IR"

    .line 3483
    .local v49, "BAICR_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from CB parcel:req="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v83 .. v83}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState(enabled)="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    const/16 v2, 0x210

    if-ne v15, v2, :cond_0

    .line 3487
    const/16 v15, 0x200

    .line 3490
    :cond_0
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3491
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 3493
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3494
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3496
    :cond_1
    const/4 v2, 0x0

    .line 4122
    :goto_0
    return v2

    .line 3512
    :cond_2
    const/16 v18, 0x1

    .line 3513
    .local v18, "num_of_expansion":I
    :try_start_0
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v14, :cond_5

    .line 3514
    const/16 v18, 0x5

    .line 3521
    :cond_3
    :goto_1
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "AG"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "AC"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3522
    :cond_4
    if-eqz v14, :cond_7

    .line 3524
    const-string v2, "MMTelSS"

    const-string v3, "Not allow lockState=1 for AB(330)/AG(333)/AC(353)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_7

    .line 3529
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 3530
    .local v68, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3531
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3532
    const/4 v2, 0x0

    goto :goto_0

    .line 3515
    .end local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_5
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v14, :cond_6

    .line 3516
    const/16 v18, 0x3

    goto :goto_1

    .line 3517
    :cond_6
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v14, :cond_3

    .line 3518
    const/16 v18, 0x2

    goto :goto_1

    .line 3537
    :cond_7
    const/4 v10, 0x0

    .line 3538
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    const/16 v75, 0x0

    .line 3539
    .local v75, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 3540
    .local v70, "curTime":J
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3544
    :cond_8
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): mOcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mOcbCacheLastQueried = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", facility = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", phoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3552
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): OCB XcapRoot = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_9

    .line 3554
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3556
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3558
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3560
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3566
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using ETAG mOcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3569
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 3570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3587
    :cond_b
    :goto_2
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3590
    :cond_c
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): mIcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mIcbCacheLastQueried = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", facility = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", phoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3600
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): ICB XcapRoot = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d

    .line 3602
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3604
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3606
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3571
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v70, v2

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v70, v2

    const-wide/32 v6, 0x1d4c0

    cmp-long v2, v2, v6

    if-gez v2, :cond_f

    .line 3574
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using mOcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 4057
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_0
    move-exception v86

    .line 4058
    .local v86, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4064
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_5d

    .line 4065
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3578
    .end local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v70    # "curTime":J
    .restart local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_f
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 3580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3582
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): new mOcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 4083
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_1
    move-exception v72

    .line 4087
    .local v72, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4095
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Exception;->printStackTrace()V

    .line 4100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4101
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 4102
    .restart local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4103
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 4105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4107
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3608
    .end local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v72    # "e":Ljava/lang/Exception;
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v70    # "curTime":J
    .restart local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3614
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using ETAG mIcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3617
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3635
    :cond_12
    :goto_3
    const/16 v76, 0x0

    .local v76, "it":I
    :goto_4
    move/from16 v0, v76

    move/from16 v1, v18

    if-ge v0, v1, :cond_60

    .line 3636
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_13

    .line 3637
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3638
    if-nez v76, :cond_1a

    const-string v13, "OI"

    .line 3655
    :cond_13
    :goto_5
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():num_of_expansion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", round="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v76

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",for facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",with lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3660
    :cond_14
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v80

    .line 3661
    .local v80, "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3662
    .local v84, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3663
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3665
    .local v67, "addedNewRule":Z
    if-eqz v80, :cond_23

    .line 3666
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3672
    :goto_6
    if-eqz v84, :cond_33

    .line 3673
    const/16 v73, 0x0

    .local v73, "i":I
    :goto_7
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_33

    .line 3674
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3675
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3676
    .local v69, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3677
    .local v66, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3679
    .local v77, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_26

    .line 3680
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",international="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",internationalExHC="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3682
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3683
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3684
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    :cond_15
    :goto_8
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v69, :cond_2a

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3714
    if-nez v15, :cond_16

    if-nez v15, :cond_29

    if-nez v64, :cond_29

    .line 3715
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v17

    move-object/from16 v9, p0

    move/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3719
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():OI-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    if-eqz v15, :cond_28

    .line 3722
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3725
    .local v78, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3726
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3673
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_17
    :goto_9
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_7

    .line 3619
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v67    # "addedNewRule":Z
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v76    # "it":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v70, v2

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v70, v2

    const-wide/32 v6, 0x1d4c0

    cmp-long v2, v2, v6

    if-gez v2, :cond_19

    .line 3622
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using mIcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_3

    .line 3626
    :cond_19
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v75

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 3628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3630
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): new mIcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3639
    .restart local v76    # "it":I
    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_1b

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3640
    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3642
    :cond_1c
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3643
    if-nez v76, :cond_1d

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3644
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3646
    :cond_1e
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3647
    if-nez v76, :cond_1f

    const-string v13, "OI"

    goto/16 :goto_5

    .line 3648
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_20

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3649
    :cond_20
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_21

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3650
    :cond_21
    const/4 v2, 0x3

    move/from16 v0, v76

    if-ne v0, v2, :cond_22

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3651
    :cond_22
    const/4 v2, 0x4

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3668
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_23
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3685
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3686
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3687
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOICExHC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3689
    :cond_25
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3690
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3694
    :cond_26
    if-nez v69, :cond_27

    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3695
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():cond=null but AO case!MO-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    const/16 v77, 0x0

    .line 3697
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3698
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3699
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3702
    :cond_27
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3704
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3705
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3729
    :cond_28
    const/16 v64, 0x1

    goto/16 :goto_9

    .line 3731
    :cond_29
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_17

    .line 3732
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3735
    :cond_2a
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v69, :cond_2e

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3739
    if-nez v15, :cond_2b

    if-nez v15, :cond_2d

    if-nez v65, :cond_2d

    .line 3740
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v27

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v28, v18

    move/from16 v29, v8

    invoke-virtual/range {v19 .. v29}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3744
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():OX-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    if-eqz v15, :cond_2c

    .line 3747
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3750
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3751
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3755
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2c
    const/16 v65, 0x1

    goto/16 :goto_9

    .line 3757
    :cond_2d
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_17

    .line 3758
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3761
    :cond_2e
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3764
    if-nez v15, :cond_2f

    if-nez v15, :cond_31

    if-nez v63, :cond_31

    .line 3765
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v35

    move-object/from16 v27, p0

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    move/from16 v36, v18

    move/from16 v37, v8

    invoke-virtual/range {v27 .. v37}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3769
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():AO-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    if-eqz v15, :cond_30

    .line 3772
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3775
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3776
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3779
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_30
    const/16 v63, 0x1

    goto/16 :goto_9

    .line 3781
    :cond_31
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v63

    if-ne v0, v2, :cond_17

    .line 3782
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3787
    :cond_32
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_9

    .line 3797
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    if-nez v67, :cond_35

    .line 3801
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO add new rule for this time\'s request-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const-string v41, ""

    .line 3804
    .local v41, "newRuleID":Ljava/lang/String;
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3805
    move-object/from16 v41, v34

    .line 3811
    :cond_34
    :goto_a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO add new rule with id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v42

    move-object/from16 v35, p0

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v43, v18

    move/from16 v44, v8

    invoke-virtual/range {v35 .. v44}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3819
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_35
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 3820
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MO SetCB  XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3826
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3635
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_36
    :goto_c
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_4

    .line 3806
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v41    # "newRuleID":Ljava/lang/String;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_37
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3807
    move-object/from16 v41, v16

    goto :goto_a

    .line 3808
    :cond_38
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3809
    move-object/from16 v41, v26

    goto :goto_a

    .line 3822
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_39
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3828
    :cond_3a
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3829
    const/16 v79, 0x0

    .line 3830
    .local v79, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3831
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3832
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3833
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3831
    add-int/lit8 v73, v73, 0x1

    goto :goto_d

    .line 3837
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_3b
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3840
    :cond_3c
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v74

    .line 3841
    .local v74, "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3842
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3843
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3845
    .restart local v67    # "addedNewRule":Z
    if-eqz v74, :cond_40

    .line 3846
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3852
    :goto_e
    if-eqz v84, :cond_4a

    .line 3853
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_f
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_4a

    .line 3854
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3855
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3856
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3857
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3859
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_42

    .line 3860
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",international="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",roaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3862
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3863
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 3864
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAICR_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    :cond_3d
    :goto_10
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    if-eqz v69, :cond_45

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 3881
    if-nez v15, :cond_3e

    if-nez v15, :cond_44

    if-nez v62, :cond_44

    .line 3883
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v50

    move-object/from16 v42, p0

    move-object/from16 v43, v75

    move-object/from16 v44, v11

    move-object/from16 v45, v12

    move-object/from16 v46, v13

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v51, v18

    move/from16 v52, v8

    invoke-virtual/range {v42 .. v52}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3887
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():IR-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    if-eqz v15, :cond_43

    .line 3890
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3893
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_3f

    .line 3894
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3853
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3f
    :goto_11
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_f

    .line 3848
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3866
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3867
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3870
    :cond_42
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    const-string v2, "AI"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3872
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3873
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3897
    :cond_43
    const/16 v62, 0x1

    goto :goto_11

    .line 3899
    :cond_44
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v62

    if-ne v0, v2, :cond_3f

    .line 3900
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3903
    :cond_45
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3907
    if-nez v15, :cond_46

    if-nez v15, :cond_48

    if-nez v61, :cond_48

    .line 3908
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v58

    move-object/from16 v50, p0

    move-object/from16 v51, v75

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object/from16 v54, v13

    move/from16 v55, v14

    move/from16 v56, v15

    move/from16 v59, v18

    move/from16 v60, v8

    invoke-virtual/range {v50 .. v60}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3912
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():AI-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    if-eqz v15, :cond_47

    .line 3915
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3918
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_3f

    .line 3919
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3922
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_47
    const/16 v61, 0x1

    goto/16 :goto_11

    .line 3924
    :cond_48
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v61

    if-ne v0, v2, :cond_3f

    .line 3925
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3930
    :cond_49
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_11

    .line 3938
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4a
    if-nez v67, :cond_4c

    .line 3942
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT add new rule for this time\'s request-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    const-string v41, ""

    .line 3945
    .restart local v41    # "newRuleID":Ljava/lang/String;
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3946
    move-object/from16 v41, v57

    .line 3950
    :cond_4b
    :goto_12
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT add new rule with id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v42

    move-object/from16 v35, p0

    move-object/from16 v36, v75

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v43, v18

    move/from16 v44, v8

    invoke-virtual/range {v35 .. v44}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3958
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4c
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 3959
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MT SetCB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 3965
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 3947
    .restart local v41    # "newRuleID":Ljava/lang/String;
    :cond_4d
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3948
    move-object/from16 v41, v49

    goto :goto_12

    .line 3961
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4e
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3967
    :cond_4f
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3968
    const/16 v79, 0x0

    .line 3969
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3970
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_14
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3971
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3972
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3970
    add-int/lit8 v73, v73, 0x1

    goto :goto_14

    .line 3976
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v73    # "i":I
    .end local v74    # "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_50
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    if-nez v14, :cond_5c

    .line 3978
    const/16 v21, 0x0

    .line 3979
    .local v21, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v4, 0x0

    .line 3980
    .local v4, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v81, 0x0

    .line 3981
    .local v81, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3985
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 3986
    if-eqz v81, :cond_51

    .line 3987
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3992
    :goto_15
    if-eqz v84, :cond_56

    .line 3993
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 3994
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_16
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_52

    .line 3995
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3996
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 3994
    add-int/lit8 v73, v73, 0x1

    goto :goto_16

    .line 3989
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "i":I
    :cond_51
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3999
    .restart local v73    # "i":I
    :cond_52
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 4000
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MO Disable All CB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 4005
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 4018
    .end local v73    # "i":I
    :cond_53
    :goto_18
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 4019
    if-eqz v81, :cond_57

    .line 4020
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 4025
    :goto_19
    if-eqz v84, :cond_5b

    .line 4026
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v21

    .line 4027
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_1a
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_58

    .line 4028
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4029
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v22, 0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4027
    add-int/lit8 v73, v73, 0x1

    goto :goto_1a

    .line 4002
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_54
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 4007
    :cond_55
    const/16 v79, 0x0

    .line 4008
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 4009
    const/16 v73, 0x0

    :goto_1b
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_53

    .line 4010
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4011
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4009
    add-int/lit8 v73, v73, 0x1

    goto :goto_1b

    .line 4015
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_56
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 4022
    :cond_57
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 4032
    .restart local v73    # "i":I
    :cond_58
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 4033
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MT Disable All CB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 4038
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 4035
    :cond_59
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4040
    :cond_5a
    const/16 v79, 0x0

    .line 4041
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 4042
    const/16 v73, 0x0

    :goto_1d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 4043
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4044
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4042
    add-int/lit8 v73, v73, 0x1

    goto :goto_1d

    .line 4048
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5b
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4053
    .end local v4    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v21    # "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v81    # "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized SET_CB facility= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and its parameters"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4068
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v76    # "it":I
    .restart local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_5d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4070
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4071
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4072
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4077
    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 4079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4081
    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4075
    :cond_5f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v86

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1e

    .line 4113
    .end local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_60
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_61

    .line 4114
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4115
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4118
    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 4119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4122
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 90
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3045
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3046
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3047
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 3049
    .local v87, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3050
    .local v14, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 3051
    .local v13, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3052
    .local v15, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3053
    .local v16, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3054
    .local v17, "setCFTimeSeconds":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3055
    .local v8, "phoneId":I
    const/16 v82, 0x0

    .line 3057
    .local v82, "reportFlag":I
    const/16 v68, 0x0

    .line 3058
    .local v68, "AddRuleForCFUWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3059
    .local v64, "AddRuleForCFBWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3060
    .local v65, "AddRuleForCFNoAnswerWithAllMediaType":Z
    const/16 v66, 0x0

    .line 3061
    .local v66, "AddRuleForCFNotReachableWithAllMediaType":Z
    const/16 v67, 0x0

    .line 3063
    .local v67, "AddRuleForCFNotRegisteredWithAllMediaType":Z
    const-string v60, "CFU"

    .line 3064
    .local v60, "CFU_RuleID":Ljava/lang/String;
    const-string v18, "CFB"

    .line 3065
    .local v18, "CFB_RuleID":Ljava/lang/String;
    const-string v30, "CFNoAnswer"

    .line 3066
    .local v30, "CFNoAnswer_RuleID":Ljava/lang/String;
    const-string v40, "CFNotReachable"

    .line 3067
    .local v40, "CFNotReachable_RuleID":Ljava/lang/String;
    const-string v50, "CFNotReachable"

    .line 3069
    .local v50, "CFNotRegistered_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel:req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v83 .. v83}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",timeSec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 3072
    .local v69, "XcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3073
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():get call forwarding num from EM setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 3075
    .local v88, "ss_mode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():ss_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v88

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v88

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3077
    move-object/from16 v16, v69

    .line 3082
    .end local v88    # "ss_mode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v15, v2, :cond_2

    .line 3083
    const/16 v15, 0x200

    .line 3086
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3087
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 3089
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3090
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    :cond_3
    const/4 v2, 0x0

    .line 3458
    :goto_0
    return v2

    .line 3097
    :cond_4
    const/16 v20, 0x1

    .line 3099
    .local v20, "num_of_expansion":I
    const/4 v2, 0x5

    if-ne v13, v2, :cond_7

    .line 3101
    const/16 v20, 0x4

    .line 3108
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v74

    .line 3109
    .local v74, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v74

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCdCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3117
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 3119
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3120
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3122
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3102
    .end local v74    # "curTime":J
    :cond_7
    const/4 v2, 0x4

    if-ne v13, v2, :cond_5

    .line 3104
    const/16 v20, 0x5

    goto/16 :goto_1

    .line 3124
    .restart local v74    # "curTime":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3129
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): using ETAG mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3131
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 3132
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 3133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3149
    :goto_2
    const/16 v78, 0x0

    .local v78, "it":I
    :goto_3
    move/from16 v0, v78

    move/from16 v1, v20

    if-ge v0, v1, :cond_40

    .line 3150
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    .line 3151
    if-nez v78, :cond_11

    const/4 v13, 0x1

    .line 3159
    :cond_9
    :goto_4
    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v78

    if-ne v0, v2, :cond_a

    .line 3160
    const/16 v82, 0x1

    .line 3163
    :cond_a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():it="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v78

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num_of_expansion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v86

    .line 3166
    .local v86, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v85, 0x0

    .line 3167
    .local v85, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3168
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v71, 0x0

    .line 3171
    .local v71, "addedNewRule":Z
    if-eqz v86, :cond_15

    .line 3172
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v85

    .line 3178
    :goto_5
    if-eqz v85, :cond_2e

    .line 3180
    const/16 v77, 0x0

    .local v77, "i":I
    :goto_6
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_2e

    .line 3181
    move-object/from16 v0, v85

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3182
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3183
    .local v73, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3184
    .local v70, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v79, 0x0

    .line 3186
    .local v79, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v73, :cond_1a

    .line 3187
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v79

    .line 3188
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():busy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoAnswer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoReachable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NotRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3190
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3191
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFB_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_b
    :goto_7
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1c

    if-eqz v73, :cond_1c

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3219
    if-nez v15, :cond_c

    if-nez v15, :cond_1b

    if-nez v64, :cond_1b

    .line 3220
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    move/from16 v21, v8

    invoke-virtual/range {v9 .. v21}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3224
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFB-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    if-nez v15, :cond_d

    .line 3226
    const/16 v64, 0x1

    .line 3180
    :cond_d
    :goto_8
    add-int/lit8 v77, v77, 0x1

    goto/16 :goto_6

    .line 3134
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v71    # "addedNewRule":Z
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v77    # "i":I
    .end local v78    # "it":I
    .end local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v74, v2

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v74, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 3137
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): using mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3139
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 3404
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_0
    move-exception v89

    .line 3405
    .local v89, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3409
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_3d

    .line 3410
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3141
    .end local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v74    # "curTime":J
    :cond_f
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3142
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3145
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): new mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v74

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3428
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_1
    move-exception v76

    .line 3431
    .local v76, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3436
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Exception;->printStackTrace()V

    .line 3437
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_40

    .line 3438
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v72

    .line 3439
    .local v72, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3440
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3444
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3152
    .end local v72    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v76    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v74    # "curTime":J
    .restart local v78    # "it":I
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v78

    if-ne v0, v2, :cond_12

    const/4 v13, 0x2

    goto/16 :goto_4

    .line 3153
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v78

    if-ne v0, v2, :cond_13

    const/4 v13, 0x3

    goto/16 :goto_4

    .line 3154
    :cond_13
    const/4 v2, 0x3

    move/from16 v0, v78

    if-ne v0, v2, :cond_14

    const/4 v13, 0x6

    goto/16 :goto_4

    .line 3155
    :cond_14
    const/4 v2, 0x4

    move/from16 v0, v78

    if-ne v0, v2, :cond_9

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3174
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v71    # "addedNewRule":Z
    .restart local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_15
    :try_start_2
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3192
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v77    # "i":I
    .restart local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3193
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 3194
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNoAnswer_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3195
    :cond_17
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3196
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 3197
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotReachable_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3198
    :cond_18
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3199
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 3200
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotRegistered_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3202
    :cond_19
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3203
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3206
    :cond_1a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    const-string v2, "CFU"

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3209
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3210
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3228
    :cond_1b
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_d

    .line 3229
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3232
    :cond_1c
    const/4 v2, 0x2

    if-ne v13, v2, :cond_22

    if-eqz v73, :cond_22

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3236
    if-nez v15, :cond_1d

    if-nez v15, :cond_21

    if-nez v65, :cond_21

    .line 3237
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v31

    move-object/from16 v21, p0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v29, v17

    move/from16 v32, v20

    move/from16 v33, v8

    invoke-virtual/range {v21 .. v33}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3241
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoAnswer-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_1f

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1e

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1f

    .line 3245
    :cond_1e
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C1]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    if-lez v17, :cond_20

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_20

    .line 3247
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3254
    :cond_1f
    :goto_9
    if-nez v15, :cond_d

    .line 3255
    const/16 v65, 0x1

    goto/16 :goto_8

    .line 3249
    :cond_20
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to append setCFTimeSeconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3257
    :cond_21
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_d

    .line 3258
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3261
    :cond_22
    const/4 v2, 0x3

    if-ne v13, v2, :cond_25

    if-eqz v73, :cond_25

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3265
    if-nez v15, :cond_23

    if-nez v15, :cond_24

    if-nez v66, :cond_24

    .line 3266
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v41

    move-object/from16 v31, p0

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 v38, v16

    move/from16 v39, v17

    move/from16 v42, v20

    move/from16 v43, v8

    invoke-virtual/range {v31 .. v43}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3270
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoReachable-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    if-nez v15, :cond_d

    .line 3272
    const/16 v66, 0x1

    goto/16 :goto_8

    .line 3274
    :cond_24
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v66

    if-ne v0, v2, :cond_d

    .line 3275
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3278
    :cond_25
    const/4 v2, 0x6

    if-ne v13, v2, :cond_28

    if-eqz v73, :cond_28

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3282
    if-nez v15, :cond_26

    if-nez v15, :cond_27

    if-nez v67, :cond_27

    .line 3283
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v51

    move-object/from16 v41, p0

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    move/from16 v45, v13

    move/from16 v46, v14

    move/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    move/from16 v52, v20

    move/from16 v53, v8

    invoke-virtual/range {v41 .. v53}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3287
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoRegistered-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    if-nez v15, :cond_d

    .line 3289
    const/16 v67, 0x1

    goto/16 :goto_8

    .line 3291
    :cond_27
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v67

    if-ne v0, v2, :cond_d

    .line 3292
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3294
    :cond_28
    if-nez v13, :cond_2d

    if-eqz v73, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    if-nez v73, :cond_2d

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3301
    if-nez v15, :cond_2b

    if-nez v15, :cond_2c

    if-nez v68, :cond_2c

    .line 3302
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v61

    move-object/from16 v51, p0

    move-object/from16 v52, v10

    move-object/from16 v53, v11

    move-object/from16 v54, v12

    move/from16 v55, v13

    move/from16 v56, v14

    move/from16 v57, v15

    move-object/from16 v58, v16

    move/from16 v59, v17

    move/from16 v62, v20

    move/from16 v63, v8

    invoke-virtual/range {v51 .. v63}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3306
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFU-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    if-nez v15, :cond_d

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3310
    const/16 v68, 0x1

    goto/16 :goto_8

    .line 3312
    :cond_2c
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v68

    if-ne v0, v2, :cond_d

    .line 3313
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3318
    :cond_2d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14, v13}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_8

    .line 3327
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v77    # "i":I
    .end local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    if-nez v71, :cond_32

    const/4 v2, 0x1

    if-eq v14, v2, :cond_2f

    const/4 v2, 0x3

    if-ne v14, v2, :cond_32

    .line 3328
    :cond_2f
    const/16 v71, 0x1

    .line 3329
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v84

    .line 3330
    .local v84, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3331
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3332
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3333
    const/4 v2, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 3337
    :goto_a
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 3338
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 3340
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Add rule for this time\'s enable reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const/4 v2, 0x1

    if-ne v13, v2, :cond_35

    .line 3343
    move-object/from16 v0, v84

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3344
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 3366
    :cond_30
    :goto_b
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 3368
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3a

    .line 3369
    const-string v2, "audio"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 3376
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_32

    .line 3377
    move-object/from16 v0, v84

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 3383
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_32
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 3384
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3390
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 3149
    :cond_33
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_3

    .line 3335
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_34
    const/4 v2, 0x1

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 3345
    :cond_35
    const/4 v2, 0x2

    if-ne v13, v2, :cond_37

    .line 3347
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C2]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    if-lez v17, :cond_36

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_36

    .line 3349
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3354
    :goto_e
    move-object/from16 v0, v84

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3355
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_b

    .line 3351
    :cond_36
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to append setCFTimeSeconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3356
    :cond_37
    const/4 v2, 0x3

    if-ne v13, v2, :cond_38

    .line 3357
    move-object/from16 v0, v84

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3358
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_b

    .line 3359
    :cond_38
    const/4 v2, 0x6

    if-ne v13, v2, :cond_39

    .line 3360
    move-object/from16 v0, v84

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3361
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_b

    .line 3362
    :cond_39
    if-nez v13, :cond_30

    .line 3363
    move-object/from16 v0, v84

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3370
    :cond_3a
    const/16 v2, 0x200

    if-ne v15, v2, :cond_31

    .line 3372
    const-string v2, "video"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3386
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3b
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3392
    :cond_3c
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_33

    .line 3393
    const/16 v81, 0x0

    .line 3394
    .local v81, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v81

    .line 3395
    const/16 v77, 0x0

    .restart local v77    # "i":I
    :goto_f
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_33

    .line 3396
    move-object/from16 v0, v81

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3397
    .local v80, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v80

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3395
    add-int/lit8 v77, v77, 0x1

    goto :goto_f

    .line 3413
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v71    # "addedNewRule":Z
    .end local v74    # "curTime":J
    .end local v77    # "i":I
    .end local v78    # "it":I
    .end local v80    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v81    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3415
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    .line 3416
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3417
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3422
    :goto_10
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 3424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3426
    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3420
    :cond_3f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v89

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_10

    .line 3449
    .end local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_40
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_41

    .line 3450
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3451
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3454
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 3455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3458
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 50
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 4390
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4391
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 4392
    .local v42, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 4394
    .local v45, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4395
    .local v13, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4396
    .local v12, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4397
    .local v14, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4398
    .local v15, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4399
    .local v16, "setCFTimeSeconds":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v47, v0

    .line 4401
    .local v47, "timeSlot":[J
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4405
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v17

    .line 4406
    .local v17, "timeSlotString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4408
    .local v8, "phoneId":I
    const/16 v33, 0x0

    .line 4409
    .local v33, "addRuleForCFUWithAllMediaType":Z
    const-string v18, "CFU"

    .line 4411
    .local v18, "cfuRuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel: req = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cfAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeSec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timsSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 4418
    .local v48, "xcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4421
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): get call forwarding num from EM setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 4424
    .local v46, "ssMode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): ssMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4426
    move-object/from16 v15, v48

    .line 4431
    .end local v46    # "ssMode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v14, v2, :cond_2

    .line 4433
    const/16 v14, 0x200

    .line 4436
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4437
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 4439
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4440
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4442
    :cond_3
    const/4 v2, 0x0

    .line 4658
    :goto_1
    return v2

    .line 4402
    .end local v8    # "phoneId":I
    .end local v17    # "timeSlotString":Ljava/lang/String;
    .end local v18    # "cfuRuleID":Ljava/lang/String;
    .end local v33    # "addRuleForCFUWithAllMediaType":Z
    .end local v48    # "xcapCFNum":Ljava/lang/String;
    :catch_0
    move-exception v37

    .line 4403
    .local v37, "e":Ljava/lang/Exception;
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 4447
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v17    # "timeSlotString":Ljava/lang/String;
    .restart local v18    # "cfuRuleID":Ljava/lang/String;
    .restart local v33    # "addRuleForCFUWithAllMediaType":Z
    .restart local v48    # "xcapCFNum":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 4448
    .local v38, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v38

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCdCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4457
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 4459
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4460
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4462
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4464
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4470
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4472
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4473
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4490
    :goto_2
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v44

    .line 4491
    .local v44, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v43, 0x0

    .line 4492
    .local v43, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 4493
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4495
    .local v34, "addedNewRule":Z
    if-eqz v44, :cond_10

    .line 4496
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v43

    .line 4503
    :goto_3
    if-eqz v43, :cond_19

    .line 4505
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_4
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_19

    .line 4506
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4507
    .local v22, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v36

    .line 4508
    .local v36, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v32

    .line 4509
    .local v32, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v41, 0x0

    .line 4511
    .local v41, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v36, :cond_15

    .line 4512
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v41

    .line 4513
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): busy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoAnswer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoReachable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4519
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_7
    :goto_5
    if-nez v12, :cond_18

    if-eqz v36, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    if-nez v36, :cond_18

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4547
    if-nez v14, :cond_a

    if-nez v14, :cond_17

    if-nez v33, :cond_17

    .line 4550
    :cond_a
    const/4 v2, 0x1

    if-eq v13, v2, :cond_b

    const/4 v2, 0x3

    if-ne v13, v2, :cond_16

    .line 4552
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v34

    .line 4562
    :goto_6
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): CFU-addedNewRule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    if-nez v14, :cond_c

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4566
    const/16 v33, 0x1

    .line 4505
    :cond_c
    :goto_7
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4

    .line 4475
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v34    # "addedNewRule":Z
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v40    # "i":I
    .end local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v38, v2

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v38, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    .line 4478
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): using mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4480
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 4604
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_1
    move-exception v49

    .line 4605
    .local v49, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4609
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_20

    .line 4610
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    const/16 v2, 0x19c

    goto/16 :goto_1

    .line 4482
    .end local v49    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v38    # "curTime":J
    :cond_e
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4483
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4486
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): new mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v38

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 4628
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_2
    move-exception v37

    .line 4631
    .restart local v37    # "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4636
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 4637
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4638
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v35

    .line 4640
    .local v35, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4641
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4645
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4498
    .end local v35    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "addedNewRule":Z
    .restart local v38    # "curTime":J
    .restart local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_10
    :try_start_3
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4520
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v40    # "i":I
    .restart local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4521
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNoAnswer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4522
    :cond_12
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4523
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotReachable"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4524
    :cond_13
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4525
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotRegistered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4527
    :cond_14
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4528
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4531
    :cond_15
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): Empty cond (cond==null) for this rule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    const-string v2, "CFU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4535
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4536
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4557
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v27, v16

    move-object/from16 v28, v18

    move/from16 v31, v8

    invoke-virtual/range {v19 .. v31}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v34

    goto/16 :goto_6

    .line 4568
    :cond_17
    if-nez v14, :cond_c

    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_c

    .line 4570
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4574
    :cond_18
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v13, v12}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_7

    .line 4583
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v40    # "i":I
    .end local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    if-nez v34, :cond_1b

    const/4 v2, 0x1

    if-eq v13, v2, :cond_1a

    const/4 v2, 0x3

    if-ne v13, v2, :cond_1b

    .line 4586
    :cond_1a
    const/16 v34, 0x1

    .line 4587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4595
    :cond_1b
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4596
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4602
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4650
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v38    # "curTime":J
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1d

    .line 4651
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4652
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4654
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 4655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4658
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4598
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "addedNewRule":Z
    .restart local v38    # "curTime":J
    .restart local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1f
    :try_start_4
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 4613
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v38    # "curTime":J
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v49    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_20
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4615
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4616
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4617
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4622
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 4624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4626
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4620
    :cond_22
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_9
.end method

.method public handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2663
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2664
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2665
    .local v11, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2667
    .local v12, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2668
    .local v8, "clipEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2669
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIP parcel:clipMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2672
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2675
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2745
    :cond_0
    :goto_0
    return-void

    .line 2681
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2685
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2686
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCLIP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2689
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2705
    :catch_0
    move-exception v13

    .line 2706
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2708
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2709
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2710
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2715
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2716
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2694
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2696
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2698
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v10

    .line 2700
    .local v10, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2701
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2738
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2739
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2740
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2742
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2703
    .restart local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2721
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2724
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2726
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2727
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2728
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2729
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2730
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2713
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 18
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2536
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2537
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2538
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2540
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2541
    .local v10, "clirMode":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2542
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CLIR parcel:clirMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2545
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2547
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2548
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2550
    :cond_0
    const/4 v2, 0x0

    .line 2659
    :goto_0
    return v2

    .line 2555
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2556
    .local v12, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOirCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2563
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2565
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2566
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2568
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2570
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2576
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2578
    .local v14, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 2579
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 2580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2596
    :goto_1
    const/4 v2, 0x1

    if-ne v10, v2, :cond_a

    .line 2597
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2651
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 2652
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2653
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2655
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2659
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2581
    .restart local v12    # "curTime":J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 2584
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): using mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2586
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2603
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_0
    move-exception v17

    .line 2604
    .local v17, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2608
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_c

    .line 2609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2612
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2588
    .end local v17    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v12    # "curTime":J
    :cond_8
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2589
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v14}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2592
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): new mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2630
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v11

    .line 2633
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2638
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2639
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2640
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 2641
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2642
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2646
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2598
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "curTime":J
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_a
    const/4 v2, 0x2

    if-ne v10, v2, :cond_b

    .line 2599
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto/16 :goto_2

    .line 2601
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2615
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v17    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2617
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2618
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2619
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2624
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2628
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2622
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_3
.end method

.method public handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2836
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2837
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2838
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2840
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2841
    .local v8, "colpEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2842
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLP parcel:colpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2845
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2848
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2918
    :cond_0
    :goto_0
    return-void

    .line 2854
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2855
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2858
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2859
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCOLP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2862
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2878
    :catch_0
    move-exception v13

    .line 2879
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2881
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2882
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2883
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2888
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2889
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2867
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2871
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 2873
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2874
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2911
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2912
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2913
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2915
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2916
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2876
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2894
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2897
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2899
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2900
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2901
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2902
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2903
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2886
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2749
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2750
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2751
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2753
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2754
    .local v8, "colrMode":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2755
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2758
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2761
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2833
    :cond_0
    :goto_0
    return-void

    .line 2767
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2768
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2769
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2771
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2772
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCOLR(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2774
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2775
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2793
    :catch_0
    move-exception v13

    .line 2794
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2796
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2797
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2798
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2803
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2804
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2780
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2782
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2784
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 2786
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2787
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2826
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2827
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2828
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2830
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2788
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 2789
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2809
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v9

    .line 2812
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2814
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2815
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2816
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2817
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2818
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2791
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2801
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 19
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2923
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2924
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2925
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2926
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2927
    .local v14, "enabled":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2928
    .local v17, "serviceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2930
    .local v8, "phoneId":I
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2931
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2933
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2934
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2936
    :cond_0
    const/4 v2, 0x0

    .line 3041
    :goto_0
    return v2

    .line 2941
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2942
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCwCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2950
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2952
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2953
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2955
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2957
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2962
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): using ETAG mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2964
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 2965
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2981
    :goto_1
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    const/4 v2, 0x1

    if-ne v14, v2, :cond_a

    .line 2983
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3032
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 3033
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3034
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3037
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3041
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2967
    .restart local v10    # "curTime":J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 2970
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): using mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2972
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2987
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v18

    .line 2988
    .local v18, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2992
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_b

    .line 2993
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2974
    .end local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_8
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2975
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2978
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): new mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 3011
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_1
    move-exception v13

    .line 3014
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3019
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 3020
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 3021
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 3022
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3023
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3027
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2985
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_a
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2996
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2998
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2999
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3000
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3005
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3009
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3003
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_3
.end method

.method public hasExtraMedia(Ljava/util/List;I)Z
    .locals 3
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "found":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 621
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 649
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 636
    if-nez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method
