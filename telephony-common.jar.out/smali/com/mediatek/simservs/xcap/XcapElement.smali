.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field protected static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field protected static final COMMON_POLICY_ALIAS:Ljava/lang/String; = "cp"

.field protected static final COMMON_POLICY_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final TAG:Ljava/lang/String; = "XcapElement"

.field public static final TRUE:Ljava/lang/String; = "true"

.field protected static final XCAP_ALIAS:Ljava/lang/String; = "ss"

.field protected static final XCAP_NAMESPACE:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# instance fields
.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field public mCredentials:Lorg/apache/http/auth/Credentials;

.field public mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

.field protected mEtag:Ljava/lang/String;

.field public mIntendedId:Ljava/lang/String;

.field protected mIsSupportEtag:Z

.field protected mNetwork:Landroid/net/Network;

.field protected mNodeUri:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 70
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIsSupportEtag:Z

    .line 75
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 90
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 91
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 94
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 172
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 173
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 570
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v2, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .locals 11
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_4

    .line 318
    new-instance v5, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v5, v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 323
    .local v5, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v4, 0x0

    .line 324
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 327
    .local v3, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 328
    const/4 v6, 0x2

    new-array v3, v6, [Lorg/apache/http/Header;

    .line 329
    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "X-3GPP-Intended-Identity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 330
    const/4 v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "If-Match"

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 335
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v5, v6}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 338
    if-eqz v4, :cond_3

    .line 339
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_6

    .line 340
    const-string v6, "ETag"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 341
    .local v1, "etagHeader":Lorg/apache/http/Header;
    const/4 v2, 0x0

    .line 343
    .local v2, "etagValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 344
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 347
    :cond_1
    if-eqz v2, :cond_2

    .line 348
    iput-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 351
    :cond_2
    const-string v6, "info"

    const-string v7, "document deleted in xcap server..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v1    # "etagHeader":Lorg/apache/http/Header;
    .end local v2    # "etagValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 366
    :goto_2
    return-void

    .line 320
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_4
    new-instance v5, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v5}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v5    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 331
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 332
    const/4 v6, 0x1

    new-array v3, v6, [Lorg/apache/http/Header;

    .line 333
    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "X-3GPP-Intended-Identity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    :try_start_3
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v6, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v6

    .line 361
    :catch_2
    move-exception v0

    .line 362
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 364
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 553
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 554
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 555
    .local v0, "buffer":Ljava/io/StringWriter;
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 558
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_4

    .line 188
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 193
    .local v8, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v6, 0x0

    .line 194
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 196
    .local v7, "ret":Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 200
    const/4 v9, 0x2

    new-array v4, v9, [Lorg/apache/http/Header;

    .line 201
    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v4, v9

    .line 202
    const/4 v9, 0x1

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "If-None-Match"

    iget-object v12, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v4, v9

    .line 207
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 209
    if-eqz v6, :cond_3

    .line 210
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6

    .line 211
    const-string v9, "ETag"

    invoke-interface {v6, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 212
    .local v2, "etagHeader":Lorg/apache/http/Header;
    const/4 v3, 0x0

    .line 214
    .local v3, "etagValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 215
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 218
    :cond_1
    if-eqz v3, :cond_2

    .line 219
    iput-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 222
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 223
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 225
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v5}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 239
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "etagHeader":Lorg/apache/http/Header;
    .end local v3    # "etagValue":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 241
    :goto_2
    return-object v7

    .line 190
    .end local v4    # "headers":[Lorg/apache/http/Header;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "ret":Ljava/lang/String;
    .end local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_4
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v8}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 203
    .restart local v4    # "headers":[Lorg/apache/http/Header;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "ret":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 204
    const/4 v9, 0x1

    new-array v4, v9, [Lorg/apache/http/Header;

    .line 205
    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v4, v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2

    .line 227
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    const/4 v7, 0x0

    .line 228
    :try_start_3
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v9, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v9

    .line 236
    :catch_2
    move-exception v0

    .line 237
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 155
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 156
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v0, "pathUri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 12
    .param p1, "xmlErrorTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1f4

    .line 610
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 611
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 612
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 613
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 614
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v8, Ljava/io/StringReader;

    invoke-virtual {p0, p2}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 616
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 618
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 620
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_0

    .line 621
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 622
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, "textContent":Ljava/lang/String;
    const-string v8, "XcapElement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse409ErrorMessage:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 637
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v7    # "textContent":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 626
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v4

    .line 627
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 628
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 629
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 630
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 631
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 632
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 633
    .local v4, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 634
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 637
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "is":Lorg/xml/sax/InputSource;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string v5, ""

    .line 584
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 585
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 586
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 589
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buf":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 590
    const-string v6, "XcapElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 593
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":Ljava/lang/String;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 594
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 597
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    return-object v5
.end method

.method protected saveContent(Ljava/lang/String;)V
    .locals 24
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 390
    const/16 v17, 0x0

    .line 391
    .local v17, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v14, 0x0

    .line 392
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/4 v8, 0x0

    .line 395
    .local v8, "headers":[Lorg/apache/http/Header;
    :try_start_0
    new-instance v15, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 397
    .local v15, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 398
    new-instance v13, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 399
    .local v13, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .local v3, "arr$":[Ljava/net/InetAddress;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    if-ge v9, v11, :cond_1

    aget-object v2, v3, v9

    .line 400
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v19

    const/16 v20, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 402
    const-string v19, "XcapElement"

    const-string v20, "saveContent(): requestRouteToHostAddress() failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    new-instance v18, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v19, v0

    instance-of v0, v2, Ljava/net/Inet6Address;

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V

    .end local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v18, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v17, v18

    .line 408
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_1
    if-nez v17, :cond_4

    .line 409
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v20, 0x1f4

    invoke-direct/range {v19 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v19
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v3    # "arr$":[Ljava/net/InetAddress;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .end local v15    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v4

    .line 479
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v17, :cond_2

    .line 485
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    :cond_2
    throw v19

    .line 412
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_3
    :try_start_2
    new-instance v18, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v18 .. v18}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .end local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v17, v18

    .line 415
    .end local v18    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v17    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_4
    const-string v19, "info"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "etag="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 417
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [Lorg/apache/http/Header;

    .line 418
    const/16 v19, 0x0

    new-instance v20, Lorg/apache/http/message/BasicHeader;

    const-string v21, "X-3GPP-Intended-Identity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v20, v8, v19

    .line 419
    const/16 v19, 0x1

    new-instance v20, Lorg/apache/http/message/BasicHeader;

    const-string v21, "If-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v20, v8, v19

    .line 424
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservSetting()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "NoReplyTimer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 428
    const-string v19, "/data/simservs.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/xcap/XcapElement;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 430
    .local v16, "xMl":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 431
    move-object/from16 p1, v16

    .line 435
    .end local v16    # "xMl":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    .line 437
    .local v12, "putElementMime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v12

    .line 445
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v12, v1, v8}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 447
    if-eqz v14, :cond_a

    .line 448
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 450
    :cond_7
    const-string v19, "ETag"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 451
    .local v6, "etagHeader":Lorg/apache/http/Header;
    const/4 v7, 0x0

    .line 453
    .local v7, "etagValue":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 454
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 457
    :cond_8
    if-eqz v7, :cond_9

    .line 458
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 460
    :cond_9
    const-string v19, "info"

    const-string v20, "document created in xcap server..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v6    # "etagHeader":Lorg/apache/http/Header;
    .end local v7    # "etagValue":Ljava/lang/String;
    :cond_a
    if-eqz v17, :cond_b

    .line 485
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 488
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    :cond_b
    :goto_2
    return-void

    .line 420
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 421
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v8, v0, [Lorg/apache/http/Header;

    .line 422
    const/16 v19, 0x0

    new-instance v20, Lorg/apache/http/message/BasicHeader;

    const-string v21, "X-3GPP-Intended-Identity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v20, v8, v19
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 481
    .end local v15    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v4

    .line 482
    .local v4, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    if-eqz v17, :cond_b

    .line 485
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2

    .line 441
    .end local v4    # "e":Ljava/net/URISyntaxException;
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/net/URI;
    :cond_d
    :try_start_5
    const-string v19, "xcap.putelcontenttype"

    const-string v20, "application/xcap-el+xml"

    invoke-static/range {v19 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 461
    :cond_e
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0x199

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 462
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 463
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 465
    .local v10, "is":Ljava/io/InputStream;
    if-eqz v10, :cond_10

    .line 466
    const-string v19, "true"

    const-string v20, "xcap.handl409"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 467
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v20, 0x199

    const-string v21, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/mediatek/simservs/xcap/XcapElement;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v19

    .line 469
    :cond_f
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v20, 0x199

    invoke-direct/range {v19 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v19

    .line 472
    :cond_10
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v20, 0x199

    invoke-direct/range {v19 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v19

    .line 475
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_11
    new-instance v19, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v19
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_5

    .line 256
    new-instance v5, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v5, v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 261
    .local v5, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v4, 0x0

    .line 262
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 265
    .local v3, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 266
    const/4 v6, 0x2

    new-array v3, v6, [Lorg/apache/http/Header;

    .line 267
    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "X-3GPP-Intended-Identity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 268
    const/4 v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "If-Match"

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 273
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v5, v6}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    const-string v7, "application/xcap-att+xml"

    invoke-virtual {v5, v6, v7, p2, v3}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 277
    if-eqz v4, :cond_4

    .line 278
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc9

    if-ne v6, v7, :cond_7

    .line 280
    :cond_1
    const-string v6, "ETag"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 281
    .local v1, "etagHeader":Lorg/apache/http/Header;
    const/4 v2, 0x0

    .line 283
    .local v2, "etagValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 284
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 287
    :cond_2
    if-eqz v2, :cond_3

    .line 288
    iput-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 290
    :cond_3
    const-string v6, "info"

    const-string v7, "document created in xcap server..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v1    # "etagHeader":Lorg/apache/http/Header;
    .end local v2    # "etagValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 305
    :goto_2
    return-void

    .line 258
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_5
    new-instance v5, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v5}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v5    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_0

    .line 269
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 270
    const/4 v6, 0x1

    new-array v3, v6, [Lorg/apache/http/Header;

    .line 271
    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "X-3GPP-Intended-Identity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2

    .line 292
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7
    :try_start_3
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v6, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v6

    .line 300
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    invoke-virtual {v5}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_2
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->saveContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mContext:Landroid/content/Context;

    .line 121
    :cond_0
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string v1, "XcapElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XCAP dedicated network netid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    .line 105
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    if-eqz v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    check-cast v0, Lcom/mediatek/gba/GbaCredentials;

    .line 107
    .local v0, "credentials":Lcom/mediatek/gba/GbaCredentials;
    invoke-virtual {v0, p1}, Lcom/mediatek/gba/GbaCredentials;->setNetwork(Landroid/net/Network;)V

    .line 110
    .end local v0    # "credentials":Lcom/mediatek/gba/GbaCredentials;
    :cond_0
    return-void
.end method
