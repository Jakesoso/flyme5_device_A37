.class public Lcom/oppo/theme/OppoApkChangedInfo;
.super Ljava/lang/Object;
.source "OppoApkChangedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/theme/OppoApkChangedInfo$IconXmlHandler;
    }
.end annotation


# static fields
.field public static final APK_CHANGED:Ljava/lang/String; = "ApkChanged.xml"

.field private static mAllPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentTag:Ljava/lang/String;

.field private static mParseError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oppo/theme/OppoApkChangedInfo;->mParseError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/oppo/theme/OppoApkChangedInfo;->mCurrentTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getApksNumbers()I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static parseIconXml()Z
    .locals 5

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "input":Ljava/io/InputStream;
    sget-object v4, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/theme/ApkChanged.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v2, v3

    .line 79
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {v2}, Lcom/oppo/theme/OppoApkChangedInfo;->parseXml(Ljava/io/InputStream;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 81
    const/4 v4, 0x1

    .line 85
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    return v4

    .line 75
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    .line 76
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/system/media/theme/default/ApkChanged.xml"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 82
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static parseXml(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 62
    .local v1, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 63
    .local v0, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/oppo/theme/OppoApkChangedInfo$IconXmlHandler;

    invoke-direct {v2}, Lcom/oppo/theme/OppoApkChangedInfo$IconXmlHandler;-><init>()V

    invoke-virtual {v0, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 65
    return-void
.end method

.method public static themeChangeEnable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static themeChangeEnable(ZLjava/lang/String;)Z
    .locals 3
    .param p0, "hasValue"    # Z
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-eqz p1, :cond_1

    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    if-eqz p0, :cond_2

    sget-boolean v2, Lcom/oppo/theme/OppoApkChangedInfo;->mParseError:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {}, Lcom/oppo/theme/OppoApkChangedInfo;->getApksNumbers()I

    move-result v2

    if-gtz v2, :cond_4

    .line 104
    invoke-static {}, Lcom/oppo/theme/OppoApkChangedInfo;->parseIconXml()Z

    move-result v2

    if-nez v2, :cond_4

    .line 105
    sput-boolean v0, Lcom/oppo/theme/OppoApkChangedInfo;->mParseError:Z

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_4
    sget-object v2, Lcom/oppo/theme/OppoApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 112
    goto :goto_0
.end method
