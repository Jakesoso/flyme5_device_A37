.class public Loppo/content/res/OppoFontUtils;
.super Ljava/lang/Object;
.source "OppoFontUtils.java"


# static fields
.field private static final ColorOS_FONT_DIRECTORY:Ljava/lang/String; = "/data/system/font/"

.field private static final ColorOS_FONT_FAMILY_NAME:Ljava/lang/String; = "coloros"

.field private static final ColorOS_FONT_NAME:Ljava/lang/String; = "ColorOS-Regular.ttf"

.field private static final DEBUG:Z = false

.field private static DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field private static DEFAULT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final INVALID_FLIP_FONT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoFontUtils"

.field public static isFlipFontUsed:Z

.field private static sCurrentTypefaces:[Landroid/graphics/Typeface;

.field private static sFlipFont:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    move-object v0, v1

    .line 55
    nop

    nop

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoFontUtils;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    .line 56
    nop

    nop

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoFontUtils;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 58
    const/4 v0, -0x1

    sput v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    .line 59
    invoke-static {}, Loppo/content/res/OppoFontUtils;->initFont()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetFlipFont(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    sget v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    iget-object v1, p0, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    iget v1, v1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v0, v1, :cond_1

    .line 64
    :cond_0
    invoke-static {}, Loppo/content/res/OppoFontUtils;->freeCaches()V

    .line 65
    invoke-static {}, Loppo/content/res/OppoFontUtils;->initFont()V

    .line 66
    iget-object v0, p0, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    iget v0, v0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    sput v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    .line 68
    :cond_1
    return-void
.end method

.method public static flipTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 71
    move-object v1, p0

    .line 74
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz p0, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Loppo/content/res/OppoFontUtils;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Loppo/content/res/OppoFontUtils;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    if-nez p0, :cond_2

    const/4 v0, 0x0

    .line 78
    .local v0, "style":I
    :goto_0
    sget-object v2, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v1, v2, v0

    .line 80
    .end local v0    # "style":I
    :cond_1
    return-object v1

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0
.end method

.method private static freeCaches()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 117
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 118
    return-void
.end method

.method private static initFont()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_0

    .line 85
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Typeface;

    sput-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 87
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/font/ColorOS-Regular.ttf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 91
    .local v2, "tf":Landroid/graphics/Typeface;
    const/4 v3, 0x1

    sput-boolean v3, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    .line 94
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 95
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 96
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 97
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :goto_0
    sget-boolean v3, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    if-nez v3, :cond_1

    .line 108
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v6

    .line 109
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v7

    .line 110
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v8

    .line 111
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v9

    .line 113
    :cond_1
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "OppoFontUtils"

    const-string/jumbo v4, "initFont() createFromFile fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sput-boolean v6, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    sput-boolean v6, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    goto :goto_0
.end method
