.class Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;
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
    name = "EpdgSimReceiver"
.end annotation


# static fields
.field private static final EAUTH_CMD:Ljava/lang/String; = "eauth="


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnector;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgConnector;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method private sendSimFailureCmd()V
    .locals 5

    .prologue
    .line 315
    const-string v1, "EAUTH:%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x98

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x62

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "cmdStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v1, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V

    .line 317
    return-void
.end method


# virtual methods
.method protected handleSimInput(Ljava/lang/String;)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v6, "EpdgConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process input: RCV <-("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eauth="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    :try_start_0
    const-string v6, "eauth="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "data":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "parsed":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "apn":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 300
    .local v5, "rand":[B
    const/4 v1, 0x0

    .line 302
    .local v1, "autn":[B
    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 303
    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 306
    :cond_0
    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifySimAction(Ljava/lang/String;[B[B)V
    invoke-static {v6, v0, v5, v1}, Lcom/mediatek/epdg/EpdgConnector;->access$500(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "autn":[B
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "parsed":[Ljava/lang/String;
    .end local v5    # "rand":[B
    :cond_1
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v3

    .line 308
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->sendSimFailureCmd()V

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 189
    const/4 v9, 0x0

    .line 190
    .local v9, "retryCount":I
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 193
    .local v7, "flag":Landroid/net/LocalSocketAddress$Namespace;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$002(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 197
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$002(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 198
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v10, "wod_sim"

    invoke-direct {v0, v10, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 200
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    const/4 v9, 0x0

    .line 232
    const-string v10, "EpdgConnector"

    const-string v11, "[SIM]Connect successfully"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_1
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 237
    .local v8, "inputStream":Ljava/io/InputStream;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :try_start_2
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 239
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    const/16 v10, 0x1000

    :try_start_3
    new-array v1, v10, [B

    .line 244
    .local v1, "buffer":[B
    :cond_1
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x1000

    invoke-virtual {v8, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 246
    .local v2, "count":I
    if-gez v2, :cond_6

    .line 248
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hit EOS while reading message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 264
    :try_start_4
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v10

    if-eqz v10, :cond_2

    .line 266
    :try_start_5
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 272
    :goto_2
    :try_start_6
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 274
    :cond_2
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 277
    :try_start_7
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 278
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v6

    .line 281
    .local v6, "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 202
    .restart local v6    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    :try_start_8
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 206
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 214
    :cond_3
    :goto_3
    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    .line 215
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 216
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SIM]Error: can\'t connect native daemon:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    const-wide/16 v10, 0x1388

    :try_start_9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 226
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 227
    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v5

    .line 223
    .local v5, "er":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 239
    .end local v5    # "er":Ljava/lang/InterruptedException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 260
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 261
    .local v3, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 263
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 264
    :try_start_d
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v10

    if-eqz v10, :cond_5

    .line 266
    :try_start_e
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 272
    :goto_5
    :try_start_f
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 274
    :cond_5
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 277
    :try_start_10
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 278
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 280
    :catch_4
    move-exception v6

    .line 281
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :cond_6
    if-lez v2, :cond_1

    .line 254
    :try_start_11
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v10}, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->handleSimInput(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 255
    :catch_5
    move-exception v4

    .line 256
    .local v4, "ee":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 263
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v4    # "ee":Ljava/lang/Exception;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 264
    :try_start_13
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-result-object v12

    if-eqz v12, :cond_7

    .line 266
    :try_start_14
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "closing stream for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 272
    :goto_6
    :try_start_15
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v13, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v12, v13}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 274
    :cond_7
    monitor-exit v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 277
    :try_start_16
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 278
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 282
    :cond_8
    :goto_7
    throw v10

    .line 268
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    .line 269
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_17
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    throw v10

    .line 268
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 269
    :try_start_18
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 274
    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    throw v10

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 269
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_19
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed closing output stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v10

    .line 280
    :catch_9
    move-exception v6

    .line 281
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v11, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing socket: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 208
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_a
    move-exception v10

    goto/16 :goto_3
.end method
