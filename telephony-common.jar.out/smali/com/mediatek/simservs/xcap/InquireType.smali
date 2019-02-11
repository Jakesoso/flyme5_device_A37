.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 55
    const/16 v18, 0x0

    .line 56
    .local v18, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v15, 0x0

    .line 57
    .local v15, "response":Lorg/apache/http/HttpResponse;
    const/16 v16, 0x0

    .line 59
    .local v16, "ret":Ljava/lang/String;
    const/4 v9, 0x0

    .line 62
    .local v9, "headers":[Lorg/apache/http/Header;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v4

    .line 65
    .local v4, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 66
    const/16 v20, 0x0

    const-string v21, "simservs"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    const-string v22, "simservs"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 70
    :cond_0
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 72
    .local v17, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 73
    new-instance v14, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 74
    .local v14, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .local v3, "arr$":[Ljava/net/InetAddress;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    if-ge v10, v12, :cond_2

    aget-object v2, v3, v10

    .line 75
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/InquireType;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v20

    const/16 v21, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 77
    const-string v20, "XcapElement"

    const-string v21, "getContent(): requestRouteToHostAddress() failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    new-instance v19, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    move-object/from16 v20, v0

    instance-of v0, v2, Ljava/net/Inet6Address;

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V

    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v19, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v18, v19

    .line 83
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    if-nez v18, :cond_5

    .line 84
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x1f4

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v3    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v14    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .end local v17    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 153
    const-string v20, "User name may not be null"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 154
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 155
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x194

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v20

    if-eqz v18, :cond_3

    .line 164
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    :cond_3
    throw v20

    .line 87
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/net/URI;
    :cond_4
    :try_start_2
    new-instance v19, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v18, v19

    .line 90
    .end local v19    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 91
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [Lorg/apache/http/Header;

    .line 92
    const/16 v20, 0x0

    new-instance v21, Lorg/apache/http/message/BasicHeader;

    const-string v22, "X-3GPP-Intended-Identity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v9, v20

    .line 93
    const/16 v20, 0x1

    new-instance v21, Lorg/apache/http/message/BasicHeader;

    const-string v22, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v9, v20

    .line 98
    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setContext(Landroid/content/Context;)V

    .line 102
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 104
    if-eqz v15, :cond_a

    .line 105
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 107
    :cond_8
    const-string v20, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 108
    .local v7, "etagHeader":Lorg/apache/http/Header;
    const/4 v8, 0x0

    .line 110
    .local v8, "etagValue":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 111
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 114
    :cond_9
    if-eqz v8, :cond_d

    .line 115
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 116
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    .line 122
    :goto_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 123
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 124
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 126
    .local v11, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 163
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "etagHeader":Lorg/apache/http/Header;
    .end local v8    # "etagValue":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_a
    if-eqz v18, :cond_b

    .line 164
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 167
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v17    # "uri":Ljava/net/URI;
    :cond_b
    :goto_2
    return-object v16

    .line 94
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/net/URI;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 95
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v9, v0, [Lorg/apache/http/Header;

    .line 96
    const/16 v20, 0x0

    new-instance v21, Lorg/apache/http/message/BasicHeader;

    const-string v22, "X-3GPP-Intended-Identity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v9, v20
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 157
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v17    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v5

    .line 158
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v7    # "etagHeader":Lorg/apache/http/Header;
    .restart local v8    # "etagValue":Ljava/lang/String;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/net/URI;
    :cond_d
    const/16 v20, 0x0

    :try_start_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 119
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 160
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v7    # "etagHeader":Lorg/apache/http/Header;
    .end local v8    # "etagValue":Ljava/lang/String;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v17    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v5

    .line 161
    .local v5, "e":Ljava/net/URISyntaxException;
    :try_start_6
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    if-eqz v18, :cond_b

    .line 164
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2

    .line 128
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v13    # "nodeUri":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/net/URI;
    :cond_e
    :try_start_7
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0x199

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 129
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 130
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 132
    .restart local v11    # "is":Ljava/io/InputStream;
    if-eqz v11, :cond_10

    .line 133
    const-string v20, "true"

    const-string v21, "xcap.handl409"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 135
    const/16 v16, 0x0

    .line 136
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    const-string v22, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v20

    .line 139
    :cond_f
    const/16 v16, 0x0

    .line 140
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20

    .line 143
    :cond_10
    const/16 v16, 0x0

    .line 144
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v21, 0x199

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20

    .line 147
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_11
    const/16 v16, 0x0

    .line 148
    new-instance v20, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v20
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    .end local v4    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v13    # "nodeUri":Ljava/lang/String;
    .end local v17    # "uri":Ljava/net/URI;
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :cond_12
    if-eqz v18, :cond_b

    .line 164
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto/16 :goto_2
.end method
