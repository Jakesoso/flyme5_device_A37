.class Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8354
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 8355
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 8356
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 8357
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->initDir()V

    .line 8358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->readConfigFile()V

    .line 8359
    return-void
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 8362
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/config/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8363
    .local v1, "statusbarTintDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/config/sys_statusbar_tint_list.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8365
    .local v2, "statusbarTintFilePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8366
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8368
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8369
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8374
    :cond_1
    :goto_0
    return-void

    .line 8371
    :catch_0
    move-exception v0

    .line 8372
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "WindowManager"

    const-string v4, "init statusbarTintFilePath Dir failed!!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readConfigFile()V
    .locals 10

    .prologue
    .line 8387
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/config/sys_statusbar_tint_list.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8388
    .local v4, "xmlFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 8428
    :cond_0
    :goto_0
    return-void

    .line 8391
    :cond_1
    const/4 v5, 0x0

    .line 8392
    .local v5, "xmlReader":Ljava/io/FileReader;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 8393
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 8396
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 8397
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8398
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .local v6, "xmlReader":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 8399
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 8400
    .local v1, "eventType":I
    :goto_1
    const/4 v7, 0x1

    if-eq v1, v7, :cond_5

    .line 8401
    packed-switch v1, :pswitch_data_0

    .line 8410
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 8403
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pkg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8404
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 8405
    const/4 v7, 0x0

    const-string v8, "value"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8406
    .local v3, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 8412
    .end local v1    # "eventType":I
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 8413
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_2
    const-string v7, "WindowManager"

    const-string v8, "readConfigFile got execption"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8416
    if-eqz v5, :cond_4

    .line 8417
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 8422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 8423
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "fm.xiami.main"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8424
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "com.handsgo.jiakao.android"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8425
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "com.android36kr.app"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8416
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_5
    if-eqz v6, :cond_6

    .line 8417
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 8422
    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 8423
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "fm.xiami.main"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8424
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "com.handsgo.jiakao.android"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8425
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v8, "com.android36kr.app"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8419
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 8420
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "readConfigFile got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 8419
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 8420
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "readConfigFile got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 8415
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 8416
    :goto_6
    if-eqz v5, :cond_7

    .line 8417
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 8422
    :cond_7
    :goto_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 8423
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v9, "fm.xiami.main"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8424
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v9, "com.handsgo.jiakao.android"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8425
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarTintList:Ljava/util/List;

    const-string v9, "com.android36kr.app"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    throw v7

    .line 8419
    :catch_3
    move-exception v0

    .line 8420
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "WindowManager"

    const-string v9, "readConfigFile got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 8415
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto :goto_6

    .line 8412
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_9
    move-object v5, v6

    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8401
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8378
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",focusPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8379
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 8380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/sys_statusbar_tint_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FileObserverPolicy;->readConfigFile()V

    .line 8384
    :cond_0
    return-void
.end method
