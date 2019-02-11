.class Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;
.super Ljava/lang/Object;
.source "EpdgConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnector;


# direct methods
.method protected constructor <init>(Lcom/mediatek/epdg/EpdgConnector;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method


# virtual methods
.method protected handleEpdgCommand(Ljava/lang/String;)V
    .locals 21
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "process epdg RCV <- {:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "woattach"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wohol"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wohow"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 338
    :cond_0
    :try_start_0
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 339
    .local v15, "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 340
    .local v12, "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 342
    .local v16, "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ge v2, v0, :cond_1

    .line 343
    const-string v2, "EpdgConnector"

    const-string v19, "Wrong response"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :goto_0
    return-void

    .line 345
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 349
    .local v14, "failCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v14    # "failCause":I
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 391
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 355
    .restart local v14    # "failCause":I
    const/4 v2, 0x2

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 356
    .local v17, "subFailCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V

    goto :goto_0

    .line 360
    .end local v3    # "apn":Ljava/lang/String;
    .end local v14    # "failCause":I
    .end local v17    # "subFailCause":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 362
    .local v4, "statusCode":I
    const-string v5, ""

    .line 363
    .local v5, "nwInterface":Ljava/lang/String;
    const-string v7, ""

    .line 364
    .local v7, "addrV6":Ljava/lang/String;
    const-string v9, ""

    .line 365
    .local v9, "pcscfV6":Ljava/lang/String;
    const-string v11, ""

    .line 366
    .local v11, "dnsV6":Ljava/lang/String;
    const-string v6, ""

    .line 367
    .local v6, "addrV4":Ljava/lang/String;
    const-string v8, ""

    .line 368
    .local v8, "pcscfV4":Ljava/lang/String;
    const-string v10, ""

    .line 370
    .local v10, "dnsV4":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x6

    move/from16 v0, v19

    if-lt v2, v0, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x2

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x3

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x4

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x5

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 377
    :cond_4
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parsed.length:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v2, v0, :cond_5

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x6

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x7

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x8

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 383
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addrV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pcscfV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dnsV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgAttach(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v11}, Lcom/mediatek/epdg/EpdgConnector;->access$700(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 393
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "nwInterface":Ljava/lang/String;
    .end local v6    # "addrV4":Ljava/lang/String;
    .end local v7    # "addrV6":Ljava/lang/String;
    .end local v8    # "pcscfV4":Ljava/lang/String;
    .end local v9    # "pcscfV6":Ljava/lang/String;
    .end local v10    # "dnsV4":Ljava/lang/String;
    .end local v11    # "dnsV6":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wodetach"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 395
    :try_start_2
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 396
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 397
    .restart local v12    # "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 399
    .restart local v16    # "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ge v2, v0, :cond_7

    .line 400
    const-string v2, "EpdgConnector"

    const-string v19, "Wrong response"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 411
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 412
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 404
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 406
    .restart local v4    # "statusCode":I
    const/16 v18, 0x0

    .line 407
    .local v18, "subStatueCode":I
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v2, v0, :cond_8

    .line 408
    const/4 v2, 0x2

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 414
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    .end local v18    # "subStatueCode":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wodisconnect"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 416
    :try_start_4
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 417
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 418
    .restart local v12    # "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .restart local v3    # "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 420
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    :catch_2
    move-exception v13

    .line 421
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 424
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a
    const-string v2, "EpdgConnector"

    const-string v19, "No handle"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 430
    const/4 v11, 0x0

    .line 431
    .local v11, "retryCount":I
    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 434
    .local v9, "flag":Landroid/net/LocalSocketAddress$Namespace;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v14, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 438
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 439
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v13, "wod_action"

    invoke-direct {v2, v13, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 441
    .local v2, "address":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    const/4 v11, 0x0

    .line 473
    const-string v13, "EpdgConnector"

    const-string v14, "Connect successfully"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 478
    .local v10, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v15}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13, v15}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 480
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    const/16 v13, 0x1000

    :try_start_3
    new-array v3, v13, [B

    .line 483
    .local v3, "buffer":[B
    const/4 v12, 0x0

    .line 486
    .local v12, "start":I
    :cond_1
    :goto_1
    const/16 v13, 0x1000

    invoke-virtual {v10, v3, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 488
    .local v4, "count":I
    if-gez v4, :cond_6

    .line 490
    const-string v13, "EpdgConnector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " reading with start = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const-string v14, "*"

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 505
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v13

    if-eqz v13, :cond_2

    .line 507
    :try_start_5
    const-string v13, "EpdgConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "closing stream for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    move-object/from16 v16, v0

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 513
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v15, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13, v15}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 515
    :cond_2
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 518
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v8

    .line 522
    .local v8, "ex":Ljava/io/IOException;
    const-string v13, "EpdgConnector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed closing socket: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "start":I
    :catch_1
    move-exception v8

    .line 443
    .restart local v8    # "ex":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 446
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 455
    :cond_3
    :goto_3
    const/16 v13, 0xa

    if-ne v11, v13, :cond_4

    .line 456
    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 457
    const-string v13, "EpdgConnector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fatal error: can\'t connect native daemon:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    const-wide/16 v14, 0x1388

    :try_start_9
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 467
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 468
    goto/16 :goto_0

    .line 463
    :catch_2
    move-exception v7

    .line 464
    .local v7, "er":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 480
    .end local v7    # "er":Ljava/lang/InterruptedException;
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v13

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 501
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 502
    .local v5, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 505
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v13

    if-eqz v13, :cond_5

    .line 507
    :try_start_e
    const-string v13, "EpdgConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "closing stream for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    move-object/from16 v16, v0

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 513
    :goto_5
    :try_start_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v15, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v13, v15}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 515
    :cond_5
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 518
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 521
    :catch_4
    move-exception v8

    .line 522
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v13, "EpdgConnector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed closing socket: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "start":I
    :cond_6
    if-lez v4, :cond_1

    .line 495
    :try_start_11
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v14, v4}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->handleEpdgCommand(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 496
    :catch_5
    move-exception v6

    .line 497
    .local v6, "ee":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 504
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v6    # "ee":Ljava/lang/Exception;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "start":I
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 505
    :try_start_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v15}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-result-object v15

    if-eqz v15, :cond_7

    .line 507
    :try_start_14
    const-string v15, "EpdgConnector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closing stream for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v15}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 513
    :goto_6
    :try_start_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v16, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static/range {v15 .. v16}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 515
    :cond_7
    monitor-exit v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 518
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 523
    :cond_8
    :goto_7
    throw v13

    .line 509
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "start":I
    :catch_6
    move-exception v5

    .line 510
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_17
    const-string v13, "EpdgConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing output stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 515
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v13

    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    throw v13

    .line 509
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "start":I
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 510
    :try_start_18
    const-string v13, "EpdgConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing output stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 515
    :catchall_3
    move-exception v13

    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    throw v13

    .line 509
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 510
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_19
    const-string v15, "EpdgConnector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing output stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 515
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v13

    monitor-exit v14
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v13

    .line 521
    :catch_9
    move-exception v8

    .line 522
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v14, "EpdgConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 449
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    :catch_a
    move-exception v13

    goto/16 :goto_3
.end method
