.class Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
.super Lcom/oppo/RomUpdateHelper$UpdateInfo;
.source "LuckyMoneyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/LuckyMoneyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuckyMoneyUpdateInfo"
.end annotation


# static fields
.field static final DELAYTIMEOUT:Ljava/lang/String; = "delayTimeout"

.field static final KEYDNSINFO:Ljava/lang/String; = "keyDNSinfo"

.field static final KEYURLINFO:Ljava/lang/String; = "keyURLinfo"

.field static final QMSG:Ljava/lang/String; = "Qmsg"

.field static final QTAG:Ljava/lang/String; = "Qtag"


# instance fields
.field delayTimeout:I

.field keyDNSInfo:Ljava/lang/String;

.field keyURLInfo:Ljava/lang/String;

.field qmsgInfo:Ljava/lang/String;

.field qtagInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/LuckyMoneyHelper;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object p1, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    invoke-direct {p0, p1}, Lcom/oppo/RomUpdateHelper$UpdateInfo;-><init>(Lcom/oppo/RomUpdateHelper;)V

    .line 46
    iput-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyDNSInfo:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyURLInfo:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qtagInfo:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qmsgInfo:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->delayTimeout:I

    .line 54
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v1, "---Lucky money info---"

    invoke-virtual {v0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->delayTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyURLInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyURLInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyDNSInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyDNSInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v1, "----------------------"

    invoke-virtual {v0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getDelayTimeout()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->delayTimeout:I

    return v0
.end method

.method public getKeyURLInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyURLInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLuckyMoneyInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 148
    const-string v0, ""

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyURLInfo:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyDNSInfo:Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qtagInfo:Ljava/lang/String;

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qmsgInfo:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getkeyDNSInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyDNSInfo:Ljava/lang/String;

    return-object v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v6, 0x0

    .line 60
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 63
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 64
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .end local v3    # "strReader":Ljava/io/StringReader;
    .local v4, "strReader":Ljava/io/StringReader;
    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 67
    .local v1, "eventType":I
    :goto_1
    const/4 v7, 0x1

    if-eq v1, v7, :cond_b

    .line 68
    packed-switch v1, :pswitch_data_0

    .line 96
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 72
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "tmp":Ljava/lang/String;
    const-string v7, "keyURLinfo"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 74
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 75
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyURLInfo:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 98
    .end local v1    # "eventType":I
    .end local v5    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 99
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "strReader":Ljava/io/StringReader;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    :goto_3
    :try_start_2
    iget-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v8, "Got execption parsing permissions."

    invoke-virtual {v7, v8, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    if-eqz v6, :cond_3

    .line 105
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 107
    :cond_3
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v8, "Got execption close permReader."

    invoke-virtual {v7, v8, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "strReader":Ljava/io/StringReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    .restart local v5    # "tmp":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v7, "keyDNSinfo"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 77
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 78
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->keyDNSInfo:Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 100
    .end local v1    # "eventType":I
    .end local v5    # "tmp":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v3, v4

    .line 101
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    :goto_4
    :try_start_5
    iget-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v8, "Got execption parsing permissions."

    invoke-virtual {v7, v8, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    if-eqz v6, :cond_5

    .line 105
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 107
    :cond_5
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 110
    :catch_3
    move-exception v0

    .line 111
    iget-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v8, "Got execption close permReader."

    invoke-virtual {v7, v8, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "strReader":Ljava/io/StringReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    .restart local v5    # "tmp":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v7, "delayTimeout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 80
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    .line 82
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->delayTimeout:I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 83
    :catch_4
    move-exception v7

    goto/16 :goto_2

    .line 85
    :cond_7
    :try_start_9
    const-string v7, "Qtag"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 86
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 87
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qtagInfo:Ljava/lang/String;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 103
    .end local v1    # "eventType":I
    .end local v5    # "tmp":Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 104
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    :goto_5
    if-eqz v6, :cond_8

    .line 105
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 107
    :cond_8
    if-eqz v3, :cond_9

    .line 108
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 112
    :cond_9
    :goto_6
    throw v7

    .line 88
    .end local v3    # "strReader":Ljava/io/StringReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    .restart local v5    # "tmp":Ljava/lang/String;
    :cond_a
    :try_start_b
    const-string v7, "Qmsg"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 90
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->qmsgInfo:Ljava/lang/String;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 104
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 105
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 107
    :cond_c
    if-eqz v4, :cond_d

    .line 108
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_d
    move-object v3, v4

    .line 112
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_0

    .line 110
    .end local v3    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catch_5
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v8, "Got execption close permReader."

    invoke-virtual {v7, v8, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v4

    .line 113
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->this$0:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    const-string v9, "Got execption close permReader."

    invoke-virtual {v8, v9, v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 100
    :catch_7
    move-exception v0

    goto/16 :goto_4

    .line 98
    :catch_8
    move-exception v0

    goto/16 :goto_3

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
