.class public Lcom/android/internal/telephony/OppoWapPushOverSms;
.super Ljava/lang/Object;
.source "OppoWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private bundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 135
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/OppoWapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 138
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 26
    .param p1, "pdu"    # [B

    .prologue
    .line 158
    const/4 v11, 0x0

    .line 159
    .local v11, "index":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .local v12, "index":I
    aget-byte v23, p1, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 160
    .local v20, "transactionId":I
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aget-byte v23, p1, v12

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 161
    .local v16, "pduType":I
    const/4 v9, 0x0

    .line 163
    .local v9, "headerLength":I
    const/16 v23, 0x6

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    const/16 v23, 0x7

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 166
    const/16 v23, 0x1

    .line 322
    :goto_0
    return v23

    .line 169
    :cond_0
    new-instance v23, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 179
    const/16 v23, 0x2

    goto :goto_0

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int/lit8 v11, v23, 0x2

    .line 184
    move v10, v11

    .line 198
    .local v10, "headerStartIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 200
    const/16 v23, 0x2

    goto :goto_0

    .line 203
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 205
    .local v4, "binaryContentType":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 207
    new-array v8, v9, [B

    .line 208
    .local v8, "header":[B
    const/16 v23, 0x0

    array-length v0, v8

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v10, v8, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    sub-int v24, v9, v11

    add-int v24, v24, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaders(II)V

    .line 213
    if-eqz v15, :cond_5

    const-string v23, "application/vnd.wap.coc"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 214
    move-object/from16 v14, p1

    .line 227
    .local v14, "intentData":[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    add-int v24, v11, v9

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v11, v0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    .line 231
    .local v21, "wapAppId":Ljava/lang/String;
    if-nez v21, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 235
    :cond_3
    if-nez v15, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "contentType":Ljava/lang/String;
    :goto_2
    const/16 v19, 0x1

    .line 241
    .local v19, "processFurther":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 243
    .local v22, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v22, :cond_7

    .line 268
    :cond_4
    :goto_3
    if-nez v19, :cond_9

    .line 269
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 216
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v14    # "intentData":[B
    .end local v19    # "processFurther":Z
    .end local v21    # "wapAppId":Ljava/lang/String;
    .end local v22    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_5
    add-int v7, v10, v9

    .line 217
    .local v7, "dataIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move/from16 v0, v23

    new-array v14, v0, [B

    .line 218
    .restart local v14    # "intentData":[B
    const/16 v23, 0x0

    array-length v0, v14

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v7, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .end local v7    # "dataIndex":I
    .restart local v21    # "wapAppId":Ljava/lang/String;
    :cond_6
    move-object v6, v15

    .line 235
    goto :goto_2

    .line 246
    .restart local v6    # "contentType":Ljava/lang/String;
    .restart local v19    # "processFurther":Z
    .restart local v22    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v13, "intent":Landroid/content/Intent;
    const-string v23, "transactionId"

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v23, "pduType"

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const-string v23, "data"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 251
    const-string v23, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    const-string v23, "wspHeaders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 256
    const-string v23, "WAP PUSH"

    const-string v24, "put addr info into intent 1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v23, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "address"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v23, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "service_center"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6, v13}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    .line 263
    .local v18, "procRet":I
    and-int/lit8 v23, v18, 0x1

    if-lez v23, :cond_4

    const v23, 0x8000

    and-int v23, v23, v18

    if-nez v23, :cond_4

    .line 265
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 271
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "procRet":I
    .end local v22    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v23

    .line 277
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v19    # "processFurther":Z
    .end local v21    # "wapAppId":Ljava/lang/String;
    :cond_9
    if-nez v15, :cond_a

    .line 279
    const/16 v23, 0x2

    goto/16 :goto_0

    .line 284
    :cond_a
    const-string v23, "application/vnd.wap.mms-message"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 285
    const-string v23, "WAP PUSH"

    const-string v24, "[WapPush set permission for MMS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v17, "android.permission.RECEIVE_MMS"

    .line 297
    .local v17, "permission":Ljava/lang/String;
    :goto_4
    new-instance v13, Landroid/content/Intent;

    const-string v23, "android.intent.action.NEW_WAPPUSH_TO_BLACKLIST"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v23, "mimeType"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v23, "transactionId"

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v23, "pduType"

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 304
    const-string v23, "data"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 305
    const-string v23, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 306
    const-string v23, "wspHeaders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 309
    const-string v23, "WAP PUSH"

    const-string v24, "put addr info into intent 2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v23, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "address"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v23, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "service_center"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_b
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 288
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "permission":Ljava/lang/String;
    :cond_c
    const-string v17, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v17    # "permission":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public dispatchWapPdu([BLandroid/os/Bundle;)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 338
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OppoWapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
