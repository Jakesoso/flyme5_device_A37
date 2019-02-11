.class Lcom/android/server/wifi/WifiStateMachine$15;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->checkInternetAccess(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$checkSequence:I

.field final synthetic val$driverRoaming:Z


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0

    .prologue
    .line 13270
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput p2, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$checkSequence:I

    iput-boolean p3, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$driverRoaming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 13273
    const/4 v4, 0x0

    .line 13275
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v5, "http"

    const-string v6, "conn1.oppomobile.com"

    const-string v7, "/generate_204"

    invoke-direct {v3, v5, v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13276
    .local v3, "url":Ljava/net/URL;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkInternetAccess Checking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13278
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 13279
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13280
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 13281
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 13282
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 13287
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 13292
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 13293
    .local v2, "rspCode":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13294
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkInternetAccess: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " headers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13298
    :cond_0
    const/16 v5, 0xcc

    if-ne v2, v5, :cond_1

    .line 13300
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkInternetAccess has internet access, seq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$checkSequence:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13301
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHasInternetAccess:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$40002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13319
    :cond_1
    if-eqz v4, :cond_2

    .line 13320
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13323
    .end local v2    # "rspCode":I
    .end local v3    # "url":Ljava/net/URL;
    :cond_2
    :goto_0
    return-void

    .line 13303
    :catch_0
    move-exception v1

    .line 13304
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkInternetAccess no internet access: exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " driverRoaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$driverRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " checkSequence="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$checkSequence:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current seq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCheckInetAccessSeq:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13308
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHasInternetAccess:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$40000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$driverRoaming:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$40100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$checkSequence:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCheckInetAccessSeq:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 13311
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkInternetAccess driver roamed and no internet access: exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13312
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$19302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13313
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v6, 0x20091

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 13315
    :cond_3
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->val$checkSequence:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCheckInetAccessSeq:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 13316
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$15;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHasInternetAccess:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$40002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13319
    :cond_4
    if-eqz v4, :cond_2

    .line 13320
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 13319
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    .line 13320
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v5
.end method
