.class public Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OppoHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/OppoHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeXmlParseHandler"
.end annotation


# instance fields
.field private mDateString:Ljava/lang/String;

.field private mIsDateFlag:Z

.field private mIsTimeFlag:Z

.field private mIsTimeZoneFlag:Z

.field private mTimeString:Ljava/lang/String;

.field private mTimeZoneString:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/OppoHttpClient;


# direct methods
.method public constructor <init>(Landroid/net/OppoHttpClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 235
    iput-object p1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->this$0:Landroid/net/OppoHttpClient;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 236
    iput-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 237
    iput-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    .line 238
    iput-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 239
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 247
    iget-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    goto :goto_0

    .line 251
    :cond_2
    iget-boolean v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 259
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 277
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 283
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iput-boolean v1, p0, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    goto :goto_0
.end method
