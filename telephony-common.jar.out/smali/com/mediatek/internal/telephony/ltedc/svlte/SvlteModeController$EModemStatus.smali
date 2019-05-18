.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;
.super Ljava/lang/Object;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EModemStatus"
.end annotation


# instance fields
.field private mCalcRemoteSimProtocol:I

.field private mLastRemoteSimProtocol:I

.field private mModemStatus:I

.field private mRemoteSimProtocol:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "remoteSimProtocol"    # I
    .param p2, "modemStatus"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EModemStatus: init: remoteSimProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modemStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 194
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    .line 195
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mCalcRemoteSimProtocol:I

    .line 196
    iput p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mLastRemoteSimProtocol:I

    .line 198
    return-void
.end method


# virtual methods
.method public adjustCardTypes([I)[I
    .locals 4
    .param p1, "cardTypes"    # [I

    .prologue
    .line 412
    array-length v2, p1

    new-array v1, v2, [I

    .line 413
    .local v1, "tempCardTypes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 414
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, p1, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 416
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 420
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempCardTypes ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    aget v2, p1, v0

    aput v2, v1, v0

    goto :goto_1

    .line 422
    :cond_1
    return-object v1
.end method

.method public calculateEModemStatus([IZ)V
    .locals 11
    .param p1, "cardTypes"    # [I
    .param p2, "isResetMDCheck"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 239
    const-string v7, "persist.radio.simswitch"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 241
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 242
    .local v2, "cardType2":I
    array-length v7, p1

    if-ne v7, v9, :cond_2

    .line 243
    aget v1, p1, v10

    .line 248
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateEModemStatus cardType1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cardType2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", capability="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isResetMDCheck="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x2

    .line 252
    .local v4, "modemStatus":I
    const/4 v5, 0x1

    .line 255
    .local v5, "remoteSimProtocol":I
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09SpecA()Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$100()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 256
    const-string v7, "calculateEModemStatus: OP09 A"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 257
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 259
    const-string v7, "calculateEModemStatus: no card"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 260
    const/4 v4, 0x1

    .line 261
    const/4 v5, 0x1

    .line 403
    :cond_1
    :goto_1
    if-eqz p2, :cond_20

    .line 404
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mCalcRemoteSimProtocol:I

    .line 408
    :goto_2
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    .line 409
    return-void

    .line 244
    .end local v4    # "modemStatus":I
    .end local v5    # "remoteSimProtocol":I
    :cond_2
    array-length v7, p1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 245
    aget v1, p1, v10

    .line 246
    aget v2, p1, v9

    goto :goto_0

    .line 262
    .restart local v4    # "modemStatus":I
    .restart local v5    # "remoteSimProtocol":I
    :cond_3
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const-string v7, "calculateEModemStatus: GSM only"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x0

    .line 266
    const/4 v5, 0x1

    goto :goto_1

    .line 267
    :cond_4
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 269
    const-string v7, "calculateEModemStatus: CT 3G"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x1

    .line 271
    const/4 v5, 0x1

    goto :goto_1

    .line 272
    :cond_5
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 273
    const-string v7, "calculateEModemStatus: CT 4G"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v7

    if-nez v7, :cond_6

    .line 276
    const/4 v4, 0x1

    .line 280
    :goto_3
    const/4 v5, 0x1

    goto :goto_1

    .line 278
    :cond_6
    const/4 v4, 0x2

    goto :goto_3

    .line 283
    :cond_7
    const-string v7, "calculateEModemStatus: other case, may not happen!"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_8
    const-string v7, "calculateEModemStatus: OM/CT C"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 289
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-nez v7, :cond_9

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_9
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-nez v7, :cond_a

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 292
    :cond_a
    const/4 v5, 0x1

    .line 293
    if-ne v0, v9, :cond_c

    .line 294
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 295
    const/4 v4, 0x2

    .line 306
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v7

    if-nez v7, :cond_1

    .line 307
    const/4 v4, 0x1

    goto :goto_1

    .line 297
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 300
    :cond_c
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 301
    const/4 v4, 0x2

    goto :goto_4

    .line 303
    :cond_d
    const/4 v4, 0x1

    goto :goto_4

    .line 313
    :cond_e
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-eqz v7, :cond_12

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-nez v7, :cond_f

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 315
    :cond_f
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v7

    if-nez v7, :cond_10

    .line 316
    const/4 v4, 0x1

    .line 321
    :goto_5
    if-ne v0, v9, :cond_11

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 318
    :cond_10
    const/4 v4, 0x2

    goto :goto_5

    .line 324
    :cond_11
    const/4 v5, 0x2

    .line 327
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 328
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 332
    :cond_12
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v7

    if-eqz v7, :cond_15

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-nez v7, :cond_13

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 335
    :cond_13
    const/4 v4, 0x1

    .line 336
    if-ne v0, v9, :cond_14

    .line 337
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 339
    :cond_14
    const/4 v5, 0x2

    .line 341
    goto/16 :goto_1

    .line 345
    :cond_15
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-nez v7, :cond_16

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 346
    :cond_16
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 348
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v7

    if-nez v7, :cond_17

    .line 349
    const/4 v4, 0x1

    .line 353
    :goto_6
    if-ne v0, v9, :cond_18

    .line 354
    const/4 v5, 0x2

    .line 357
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 351
    :cond_17
    const/4 v4, 0x2

    goto :goto_6

    .line 361
    :cond_18
    const/4 v5, 0x1

    .line 363
    goto/16 :goto_1

    .line 364
    :cond_19
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 366
    const/4 v4, 0x1

    .line 367
    if-ne v0, v9, :cond_1a

    .line 368
    const/4 v5, 0x2

    goto/16 :goto_1

    .line 370
    :cond_1a
    const/4 v5, 0x1

    .line 372
    goto/16 :goto_1

    .line 377
    :cond_1b
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v6

    .line 378
    .local v6, "svlteSlotId":I
    const/4 v7, -0x1

    if-le v6, v7, :cond_1c

    move v3, v6

    .line 379
    .local v3, "cdmaSocketSlotId":I
    :goto_7
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 381
    const/4 v4, 0x0

    .line 382
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(I)I

    move-result v5

    .line 383
    goto/16 :goto_1

    .line 378
    .end local v3    # "cdmaSocketSlotId":I
    :cond_1c
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v3

    goto :goto_7

    .line 384
    .restart local v3    # "cdmaSocketSlotId":I
    :cond_1d
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 386
    const/4 v4, 0x1

    .line 387
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(I)I

    move-result v5

    .line 388
    goto/16 :goto_1

    .line 389
    :cond_1e
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 391
    const/4 v4, 0x1

    .line 392
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(I)I

    move-result v5

    .line 393
    goto/16 :goto_1

    .line 394
    :cond_1f
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 396
    const/4 v4, 0x1

    .line 397
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(I)I

    move-result v5

    .line 398
    goto/16 :goto_1

    .line 406
    .end local v3    # "cdmaSocketSlotId":I
    .end local v6    # "svlteSlotId":I
    :cond_20
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    goto/16 :goto_2
.end method

.method public dump()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EModemStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.emdstatus.init"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.emdstatus.init"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EModemStatus: mRemoteSimProtocol= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCalcRemoteSimProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mCalcRemoteSimProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModemStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastRemoteSimProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mLastRemoteSimProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public getModemStatus()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    return v0
.end method

.method public getRemoteSimProtocol()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    return v0
.end method

.method public isRemoteSimProtocolChanged()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mLastRemoteSimProtocol:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mLastRemoteSimProtocol:I

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mCalcRemoteSimProtocol:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetEModemStatusInitFlag()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "gsm.emdstatus.init"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetEModemStatusInitFlag: reset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.emdstatus.init"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 222
    const-string v0, "gsm.emdstatus.init"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetEModemStatusInitFlag: already reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.emdstatus.init"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLastRemoteSimProtocol(I)V
    .locals 2
    .param p1, "remoteSimProtocol"    # I

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastRemoteSimProtocol: remoteSimProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 210
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mLastRemoteSimProtocol:I

    .line 211
    return-void
.end method
