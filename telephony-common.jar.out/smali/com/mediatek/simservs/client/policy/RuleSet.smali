.class public Lcom/mediatek/simservs/client/policy/RuleSet;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "RuleSet.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:ruleset"

.field public static final NODE_NAME_WITH_NAMESPACE:Ljava/lang/String; = "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 64
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/RuleSet;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 65
    return-void
.end method

.method private unfoldRules(Lcom/mediatek/simservs/client/policy/Rule;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 11
    .param p1, "aRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "media"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 227
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 229
    .local v0, "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_0

    .line 230
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 232
    :cond_0
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 235
    :cond_1
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 238
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 239
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 240
    if-eqz p3, :cond_3

    .line 241
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 244
    :cond_3
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v0    # "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 247
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 249
    .local v1, "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_5

    .line 250
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 252
    :cond_5
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_6

    .line 253
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 255
    :cond_6
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 256
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 258
    :cond_7
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 259
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 260
    if-eqz p3, :cond_8

    .line 261
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v1    # "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 267
    new-instance v2, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 269
    .local v2, "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_a

    .line 270
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 272
    :cond_a
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_b

    .line 273
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 275
    :cond_b
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 276
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 278
    :cond_c
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 279
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 280
    if-eqz p3, :cond_d

    .line 281
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 284
    :cond_d
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v2    # "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_e
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 287
    new-instance v3, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 289
    .local v3, "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_f

    .line 290
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 292
    :cond_f
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_10

    .line 293
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 295
    :cond_10
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 296
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 298
    :cond_11
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 299
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 300
    if-eqz p3, :cond_12

    .line 301
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 304
    :cond_12
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v3    # "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_13
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 308
    new-instance v4, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 310
    .local v4, "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_14

    .line 311
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 313
    :cond_14
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_15

    .line 314
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 316
    :cond_15
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_16

    .line 317
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 319
    :cond_16
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 320
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 321
    if-eqz p3, :cond_17

    .line 322
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 325
    :cond_17
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v4    # "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_18
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 328
    new-instance v5, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 330
    .local v5, "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_19

    .line 331
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 333
    :cond_19
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1a

    .line 334
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 336
    :cond_1a
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_1b

    .line 337
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 339
    :cond_1b
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 340
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 341
    if-eqz p3, :cond_1c

    .line 342
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 345
    :cond_1c
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v5    # "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1d
    return-void
.end method


# virtual methods
.method public clearRules()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    return-void
.end method

.method public createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 363
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 364
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 373
    :cond_3
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 75
    move-object v6, p1

    check-cast v6, Lorg/w3c/dom/Element;

    .line 76
    .local v6, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "rule"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 77
    .local v7, "domNodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 78
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 79
    const-string v1, "RuleSet"

    const-string v2, "Got rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 81
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 82
    .local v5, "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 84
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_3
    const-string v1, "urn:ietf:params:xml:ns:common-policy"

    const-string v2, "rule"

    invoke-interface {v6, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 101
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_7

    .line 102
    const-string v1, "RuleSet"

    const-string v2, "Got rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 104
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 105
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 107
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 119
    :cond_6
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_7
    const-string v1, "cp:rule"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 123
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_b

    .line 124
    const-string v1, "RuleSet"

    const-string v2, "Got cp:rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 126
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 127
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 129
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_8

    .line 130
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 133
    :cond_8
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    .line 134
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 137
    :cond_9
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 138
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 141
    :cond_a
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 146
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_b
    const-string v1, "RuleSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rules size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 5
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    .line 432
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 433
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    const-string v2, "RuleSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", set etag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_0
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->setNetwork(Landroid/net/Network;)V

    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 448
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    const-string v2, "RuleSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", netid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 452
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_0
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 394
    const/4 v6, 0x0

    .line 395
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .line 396
    .local v9, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 398
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 399
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 400
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v10, "cp:ruleset"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 401
    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 404
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 405
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 406
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/simservs/client/policy/Rule;

    .line 407
    .local v7, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 408
    .local v8, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 412
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v8    # "ruleElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .line 414
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 420
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-object v9

    .line 411
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/policy/RuleSet;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    goto :goto_1

    .line 415
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v2

    .line 416
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v2

    .line 418
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_1
.end method
