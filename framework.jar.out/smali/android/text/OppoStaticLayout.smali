.class public Landroid/text/OppoStaticLayout;
.super Landroid/text/StaticLayout;
.source "OppoStaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/OppoStaticLayout$Injector;
    }
.end annotation


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:[C

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "OppoStaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private currentline:Ljava/lang/String;

.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I

.field private nextline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/OppoStaticLayout;->ELLIPSIS_NORMAL:[C

    .line 39
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/OppoStaticLayout;->ELLIPSIS_TWO_DOTS:[C

    .line 113
    const-string/jumbo v0, "thwsplit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 1079
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 1101
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 227
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 228
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 229
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 231
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 148
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 170
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 160
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 184
    invoke-direct/range {p0 .. p13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 1079
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 1101
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 195
    if-eqz p11, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 198
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 199
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 200
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 201
    move/from16 v0, p12

    iput v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    .line 203
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 209
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_0
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 210
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 211
    move/from16 v0, p13

    iput v0, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 213
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 216
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/OppoStaticLayout;->oppoGenerate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 220
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 222
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 206
    move/from16 v0, p5

    iput v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 128
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 139
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 141
    return-void
.end method

.method private static CharacterIsThai(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 1219
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1220
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->THAI:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    .line 1221
    const/4 v1, 0x1

    .line 1223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static GetBreakPos(Ljava/lang/String;)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1227
    invoke-static {p0}, Landroid/text/OppoStaticLayout;->IsStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1228
    const/4 v4, 0x0

    .line 1240
    :cond_0
    return v4

    .line 1230
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1231
    .local v1, "ch":[C
    array-length v3, v1

    .line 1232
    .local v3, "length":I
    const/4 v4, 0x0

    .line 1233
    .local v4, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1234
    aget-char v0, v1, v2

    .line 1235
    .local v0, "c":C
    const/16 v5, 0x20

    if-lt v0, v5, :cond_2

    const/16 v5, 0x40

    if-le v0, v5, :cond_4

    :cond_2
    const/16 v5, 0x5b

    if-lt v0, v5, :cond_3

    const/16 v5, 0x5f

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x7b

    if-lt v0, v5, :cond_5

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_5

    .line 1237
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 1233
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static IsStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const/4 v0, 0x1

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsThaiLang(Ljava/lang/String;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1203
    invoke-static {p0}, Landroid/text/OppoStaticLayout;->IsStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v4

    .line 1207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1208
    .local v1, "ch":[C
    array-length v3, v1

    .line 1209
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1210
    aget-char v0, v1, v2

    .line 1211
    .local v0, "c":C
    const/16 v5, 0xe00

    if-lt v0, v5, :cond_2

    const/16 v5, 0xe5f

    if-gt v0, v5, :cond_2

    .line 1212
    const/4 v4, 0x1

    goto :goto_0

    .line 1209
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 21
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 835
    cmpg-float v18, p8, p5

    if-gtz v18, :cond_0

    if-nez p10, :cond_0

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 949
    :goto_0
    return-void

    .line 842
    :cond_0
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    sget-object v18, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 845
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 846
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 847
    .local v4, "ellipsisCount":I
    sub-int v11, p2, p1

    .line 850
    .local v11, "len":I
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 852
    const/16 v16, 0x0

    .line 855
    .local v16, "sum":F
    move v7, v11

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 856
    add-int/lit8 v18, v7, -0x1

    add-int v18, v18, p1

    sub-int v18, v18, p4

    aget v17, p3, v18

    .line 858
    .local v17, "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-lez v18, :cond_4

    .line 865
    .end local v17    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 866
    move v4, v7

    .line 947
    .end local v7    # "i":I
    .end local v16    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x3

    aput v5, v18, v19

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v19, v0

    mul-int v19, v19, p7

    add-int/lit8 v19, v19, 0x4

    aput v4, v18, v19

    goto :goto_0

    .line 842
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v11    # "len":I
    :cond_3
    sget-object v18, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 862
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v11    # "len":I
    .restart local v16    # "sum":F
    .restart local v17    # "w":F
    :cond_4
    add-float v16, v16, v17

    .line 855
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 868
    .end local v7    # "i":I
    .end local v16    # "sum":F
    .end local v17    # "w":F
    :cond_5
    const-string v18, "OppoStaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 869
    const-string v18, "OppoStaticLayout"

    const-string v19, "Start Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 872
    :cond_6
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 874
    :cond_7
    const/16 v16, 0x0

    .line 877
    .restart local v16    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v11, :cond_8

    .line 879
    add-int v18, v7, p1

    sub-int v8, v18, p4

    .line 880
    .local v8, "idx":I
    if-gez v8, :cond_9

    .line 892
    .end local v8    # "idx":I
    :cond_8
    move v5, v7

    .line 893
    sub-int v4, v11, v7

    .line 894
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v11, :cond_2

    .line 895
    add-int/lit8 v5, v11, -0x1

    .line 896
    const/4 v4, 0x1

    goto :goto_3

    .line 883
    .restart local v8    # "idx":I
    :cond_9
    aget v17, p3, v8

    .line 885
    .restart local v17    # "w":F
    add-float v18, v17, v16

    add-float v18, v18, v6

    cmpl-float v18, v18, p5

    if-gtz v18, :cond_8

    .line 889
    add-float v16, v16, v17

    .line 877
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 900
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v16    # "sum":F
    .end local v17    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 901
    const/4 v12, 0x0

    .local v12, "lsum":F
    const/4 v15, 0x0

    .line 902
    .local v15, "rsum":F
    const/4 v10, 0x0

    .local v10, "left":I
    move v14, v11

    .line 904
    .local v14, "right":I
    sub-float v18, p5, v6

    const/high16 v19, 0x40000000    # 2.0f

    div-float v13, v18, v19

    .line 905
    .local v13, "ravail":F
    move v14, v11

    :goto_5
    if-lez v14, :cond_b

    .line 907
    add-int/lit8 v18, v14, -0x1

    add-int v18, v18, p1

    sub-int v8, v18, p4

    .line 908
    .restart local v8    # "idx":I
    if-gez v8, :cond_d

    .line 921
    .end local v8    # "idx":I
    :cond_b
    sub-float v18, p5, v6

    sub-float v9, v18, v15

    .line 922
    .local v9, "lavail":F
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v14, :cond_c

    .line 924
    add-int v18, v10, p1

    sub-int v8, v18, p4

    .line 925
    .restart local v8    # "idx":I
    if-gez v8, :cond_e

    .line 938
    .end local v8    # "idx":I
    :cond_c
    move v5, v10

    .line 939
    sub-int v4, v14, v10

    .line 940
    goto/16 :goto_3

    .line 912
    .end local v9    # "lavail":F
    .restart local v8    # "idx":I
    :cond_d
    aget v17, p3, v8

    .line 914
    .restart local v17    # "w":F
    add-float v18, v17, v15

    cmpl-float v18, v18, v13

    if-gtz v18, :cond_b

    .line 918
    add-float v15, v15, v17

    .line 905
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 929
    .end local v17    # "w":F
    .restart local v9    # "lavail":F
    :cond_e
    aget v17, p3, v8

    .line 931
    .restart local v17    # "w":F
    add-float v18, v17, v12

    cmpl-float v18, v18, v9

    if-gtz v18, :cond_c

    .line 935
    add-float v12, v12, v17

    .line 922
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 941
    .end local v8    # "idx":I
    .end local v9    # "lavail":F
    .end local v10    # "left":I
    .end local v12    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rsum":F
    .end local v17    # "w":F
    :cond_f
    const-string v18, "OppoStaticLayout"

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 942
    const-string v18, "OppoStaticLayout"

    const-string v19, "Middle Ellipsis only supported with one line"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method static callIsIdeographic(CZ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v0

    return v0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1107
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1110
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 1113
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 1114
    if-nez p1, :cond_0

    .line 1115
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1132
    goto :goto_0

    .line 1137
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 1157
    goto :goto_0

    .line 1162
    :cond_3
    const/16 v1, 0x3400

    if-lt p0, v1, :cond_4

    const/16 v1, 0x4db5

    if-le p0, v1, :cond_0

    .line 1165
    :cond_4
    const/16 v1, 0x4e00

    if-lt p0, v1, :cond_5

    const v1, 0x9fbb

    if-le p0, v1, :cond_0

    .line 1168
    :cond_5
    const v1, 0xf900

    if-lt p0, v1, :cond_6

    const v1, 0xfad9

    if-le p0, v1, :cond_0

    .line 1171
    :cond_6
    const v1, 0xa000

    if-lt p0, v1, :cond_7

    const v1, 0xa48f

    if-le p0, v1, :cond_0

    .line 1174
    :cond_7
    const v1, 0xa490

    if-lt p0, v1, :cond_8

    const v1, 0xa4cf

    if-le p0, v1, :cond_0

    .line 1177
    :cond_8
    const v1, 0xfe62

    if-lt p0, v1, :cond_9

    const v1, 0xfe66

    if-le p0, v1, :cond_0

    .line 1180
    :cond_9
    const v1, 0xff10

    if-lt p0, v1, :cond_a

    const v1, 0xff19

    if-le p0, v1, :cond_0

    .line 1184
    :cond_a
    invoke-static {p0, p1}, Landroid/text/OppoStaticLayout$Injector;->isIdeographic(CZ)Z

    move-result v0

    goto :goto_0

    .line 1115
    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 1139
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 703
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 704
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 705
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 707
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 708
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 710
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 714
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 715
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 716
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 717
    move-object/from16 v25, v19

    .line 720
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 721
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 722
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 723
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 724
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 726
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 727
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 728
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 726
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 732
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 736
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 737
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 738
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 739
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 742
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_10

    const/16 v18, 0x1

    .line 743
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    .line 744
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v13, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_12

    :cond_4
    const/16 v23, 0x1

    .line 746
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    .line 747
    if-eqz p21, :cond_5

    .line 748
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mTopPadding:I

    .line 751
    :cond_5
    if-eqz p20, :cond_6

    .line 752
    move/from16 p4, p6

    .line 758
    :cond_6
    if-eqz v23, :cond_8

    .line 759
    if-eqz p21, :cond_7

    .line 760
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mBottomPadding:I

    .line 763
    :cond_7
    if-eqz p20, :cond_8

    .line 764
    move/from16 p5, p7

    .line 774
    :cond_8
    if-eqz p15, :cond_14

    .line 776
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 777
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_13

    .line 778
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 786
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 787
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 788
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 790
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 791
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 792
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 794
    if-eqz p14, :cond_9

    .line 795
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 797
    :cond_9
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 798
    sget-object v24, Landroid/text/OppoStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 802
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_15

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 809
    :goto_6
    if-eqz p25, :cond_f

    .line 812
    if-eqz p29, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_16

    const/4 v12, 0x1

    .line 814
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_b

    :cond_a
    if-eqz v18, :cond_c

    if-nez p29, :cond_c

    :cond_b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v18, :cond_17

    if-nez v13, :cond_d

    if-nez p29, :cond_17

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    :cond_e
    const/4 v14, 0x1

    .line 819
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_f

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 820
    invoke-direct/range {v2 .. v12}, Landroid/text/OppoStaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 826
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 827
    return p8

    .line 742
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 743
    .restart local v18    # "firstLine":Z
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 744
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 780
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_13
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 783
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 805
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_6

    .line 812
    :cond_16
    const/4 v12, 0x0

    goto :goto_7

    .line 814
    .restart local v12    # "forceEllipsis":Z
    :cond_17
    const/4 v14, 0x0

    goto :goto_8
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1055
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 241
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Landroid/text/OppoStaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1028
    iget v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1037
    iget v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1038
    const/4 v0, 0x0

    .line 1041
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1046
    iget v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 993
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 994
    .local v0, "descent":I
    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 996
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_0
    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 957
    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 958
    .local v1, "high":I
    const/4 v3, -0x1

    .line 960
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 961
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 962
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 963
    .local v0, "guess":I
    iget v4, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 964
    move v1, v0

    goto :goto_0

    .line 966
    :cond_0
    move v3, v0

    goto :goto_0

    .line 969
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 970
    const/4 v3, 0x0

    .line 972
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 983
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 984
    .local v0, "top":I
    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 986
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_0
    return v0
.end method

.method public getOppoHookLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1018
    iget v0, p0, Landroid/text/OppoStaticLayout;->mTopPadding:I

    return v0
.end method

.method public native getcurrentsplitnum(Ljava/lang/String;)I
.end method

.method public native getnextsplitnum(Ljava/lang/String;I)I
.end method

.method oppoGenerate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 147
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 249
    const/16 v92, 0x0

    .line 250
    .local v92, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v117

    .line 252
    .local v117, "localeLanguageTag":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 254
    const/4 v13, 0x0

    .line 255
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 257
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 258
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 260
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v118, v0

    .line 262
    .local v118, "measured":Landroid/text/MeasuredText;
    const/16 v140, 0x0

    .line 263
    .local v140, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v140, p1

    .line 264
    check-cast v140, Landroid/text/Spanned;

    .line 267
    :cond_1
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_39

    .line 268
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v36

    .line 269
    .local v36, "paraEnd":I
    if-gez v36, :cond_4

    .line 270
    move/from16 v36, p3

    .line 274
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v98, v5, 0x1

    .line 275
    .local v98, "firstWidthLineLimit":I
    move/from16 v97, p5

    .line 276
    .local v97, "firstWidth":I
    move/from16 v135, p5

    .line 278
    .local v135, "restWidth":I
    const/16 v16, 0x0

    .line 280
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v140, :cond_9

    .line 281
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v140

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v136

    check-cast v136, [Landroid/text/style/LeadingMarginSpan;

    .line 283
    .local v136, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v108, 0x0

    .local v108, "i":I
    :goto_3
    move-object/from16 v0, v136

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_5

    .line 284
    aget-object v114, v136, v108

    .line 285
    .local v114, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v136, v108

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v97, v97, v5

    .line 286
    aget-object v5, v136, v108

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v135, v135, v5

    .line 290
    move-object/from16 v0, v114

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v115, v114

    .line 291
    check-cast v115, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 292
    .local v115, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v140

    move-object/from16 v1, v115

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/OppoStaticLayout;->getLineForOffset(I)I

    move-result v116

    .line 293
    .local v116, "lmsFirstLine":I
    invoke-interface/range {v115 .. v115}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v5, v5, v116

    move/from16 v0, v98

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v98

    .line 283
    .end local v115    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v116    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v108, v108, 0x1

    goto :goto_3

    .line 255
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v36    # "paraEnd":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v108    # "i":I
    .end local v114    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v118    # "measured":Landroid/text/MeasuredText;
    .end local v135    # "restWidth":I
    .end local v136    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v140    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 272
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v36    # "paraEnd":I
    .restart local v118    # "measured":Landroid/text/MeasuredText;
    .restart local v140    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 298
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v108    # "i":I
    .restart local v135    # "restWidth":I
    .restart local v136    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v140

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 300
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 301
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 303
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v17

    .line 306
    :cond_7
    const/16 v108, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_9

    .line 307
    aget-object v5, v16, v108

    move-object/from16 v0, v140

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v124

    .line 309
    .local v124, "o":I
    move/from16 v0, v124

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 313
    move-object/from16 v0, p0

    move/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/text/OppoStaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/OppoStaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v108

    .line 306
    :goto_5
    add-int/lit8 v108, v108, 0x1

    goto :goto_4

    .line 317
    :cond_8
    aput v13, v17, v108

    goto :goto_5

    .line 323
    .end local v108    # "i":I
    .end local v124    # "o":I
    .end local v136    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v118

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 324
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 325
    .local v27, "chs":[C
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 326
    .local v28, "widths":[F
    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 327
    .local v21, "chdirs":[B
    move-object/from16 v0, v118

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 328
    .local v22, "dir":I
    move-object/from16 v0, v118

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 331
    .local v23, "easy":Z
    const/16 v93, 0x0

    .line 333
    .local v93, "breakOppIndex":I
    move/from16 v146, v97

    .line 335
    .local v146, "width":I
    const/16 v60, 0x0

    .line 337
    .local v60, "w":F
    move/from16 v7, v29

    .line 341
    .local v7, "here":I
    move/from16 v125, v29

    .line 342
    .local v125, "ok":I
    move/from16 v130, v60

    .line 343
    .local v130, "okWidth":F
    const/16 v126, 0x0

    .local v126, "okAscent":I
    const/16 v128, 0x0

    .local v128, "okDescent":I
    const/16 v129, 0x0

    .local v129, "okTop":I
    const/16 v127, 0x0

    .line 347
    .local v127, "okBottom":I
    move/from16 v99, v29

    .line 348
    .local v99, "fit":I
    move/from16 v100, v60

    .line 349
    .local v100, "fitWidth":F
    const/16 v37, 0x0

    .local v37, "fitAscent":I
    const/16 v38, 0x0

    .local v38, "fitDescent":I
    const/16 v39, 0x0

    .local v39, "fitTop":I
    const/16 v40, 0x0

    .line 351
    .local v40, "fitBottom":I
    move/from16 v101, v60

    .line 353
    .local v101, "fitWidthGraphing":F
    const/16 v19, 0x0

    .line 354
    .local v19, "hasTabOrEmoji":Z
    const/16 v107, 0x0

    .line 355
    .local v107, "hasTab":Z
    const/16 v143, 0x0

    .line 357
    .local v143, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v139, v29

    .local v139, "spanStart":I
    :goto_6
    move/from16 v0, v139

    move/from16 v1, v36

    if-ge v0, v1, :cond_36

    .line 359
    if-nez v140, :cond_1b

    .line 360
    move/from16 v137, v36

    .line 361
    .local v137, "spanEnd":I
    sub-int v138, v137, v139

    .line 362
    .local v138, "spanLen":I
    move-object/from16 v0, v118

    move-object/from16 v1, p4

    move/from16 v2, v138

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 373
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v106, v0

    .line 374
    .local v106, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v104, v0

    .line 375
    .local v104, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    .line 376
    .local v103, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v105, v0

    .line 378
    .local v105, "fmDescent":I
    move/from16 v112, v139

    .local v112, "j":I
    :goto_8
    move/from16 v0, v112

    move/from16 v1, v137

    if-ge v0, v1, :cond_2a

    .line 379
    sub-int v5, v112, v29

    aget-char v94, v27, v5

    .line 381
    .local v94, "c":C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_1c

    .line 432
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x200b

    move/from16 v0, v94

    if-ne v0, v5, :cond_24

    :cond_a
    const/16 v111, 0x1

    .line 434
    .local v111, "isSpaceOrTab":Z
    :goto_a
    move/from16 v0, v146

    int-to-float v5, v0

    cmpg-float v5, v60, v5

    if-lez v5, :cond_b

    if-eqz v111, :cond_27

    .line 435
    :cond_b
    move/from16 v100, v60

    .line 436
    if-nez v111, :cond_c

    .line 437
    move/from16 v101, v60

    .line 439
    :cond_c
    add-int/lit8 v99, v112, 0x1

    .line 441
    move/from16 v0, v106

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 442
    move/from16 v39, v106

    .line 443
    :cond_d
    move/from16 v0, v103

    move/from16 v1, v37

    if-ge v0, v1, :cond_e

    .line 444
    move/from16 v37, v103

    .line 445
    :cond_e
    move/from16 v0, v105

    move/from16 v1, v38

    if-le v0, v1, :cond_f

    .line 446
    move/from16 v38, v105

    .line 447
    :cond_f
    move/from16 v0, v104

    move/from16 v1, v40

    if-le v0, v1, :cond_10

    .line 448
    move/from16 v40, v104

    .line 461
    :cond_10
    move/from16 v0, v94

    move-object/from16 v1, v27

    move/from16 v2, v112

    move/from16 v3, v137

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/OppoStaticLayout$Injector;->validateCJKCharAsSpace(C[CIII)C

    move-result v94

    .line 462
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_13

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2e

    move/from16 v0, v94

    if-eq v0, v5, :cond_11

    const/16 v5, 0x2c

    move/from16 v0, v94

    if-eq v0, v5, :cond_11

    const/16 v5, 0x3a

    move/from16 v0, v94

    if-eq v0, v5, :cond_11

    const/16 v5, 0x3b

    move/from16 v0, v94

    if-ne v0, v5, :cond_25

    :cond_11
    add-int/lit8 v5, v112, -0x1

    if-lt v5, v7, :cond_12

    add-int/lit8 v5, v112, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_12
    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v137

    if-ge v5, v0, :cond_13

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_13
    const/16 v111, 0x1

    .line 468
    :goto_b
    if-nez v111, :cond_16

    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_15

    :cond_14
    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v137

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_26

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_26

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v137

    if-ge v5, v0, :cond_26

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_16
    const/16 v110, 0x1

    .line 476
    .local v110, "isLineBreak":Z
    :goto_c
    if-eqz v110, :cond_1a

    .line 477
    move/from16 v130, v101

    .line 478
    add-int/lit8 v125, v112, 0x1

    .line 480
    move/from16 v0, v39

    move/from16 v1, v129

    if-ge v0, v1, :cond_17

    .line 481
    move/from16 v129, v39

    .line 482
    :cond_17
    move/from16 v0, v37

    move/from16 v1, v126

    if-ge v0, v1, :cond_18

    .line 483
    move/from16 v126, v37

    .line 484
    :cond_18
    move/from16 v0, v38

    move/from16 v1, v128

    if-le v0, v1, :cond_19

    .line 485
    move/from16 v128, v38

    .line 486
    :cond_19
    move/from16 v0, v40

    move/from16 v1, v127

    if-le v0, v1, :cond_1a

    .line 487
    move/from16 v127, v40

    .line 378
    .end local v110    # "isLineBreak":Z
    :cond_1a
    add-int/lit8 v112, v112, 0x1

    goto/16 :goto_8

    .line 364
    .end local v94    # "c":C
    .end local v103    # "fmAscent":I
    .end local v104    # "fmBottom":I
    .end local v105    # "fmDescent":I
    .end local v106    # "fmTop":I
    .end local v111    # "isSpaceOrTab":Z
    .end local v112    # "j":I
    .end local v137    # "spanEnd":I
    .end local v138    # "spanLen":I
    :cond_1b
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v140

    move/from16 v1, v139

    move/from16 v2, v36

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v137

    .line 366
    .restart local v137    # "spanEnd":I
    sub-int v138, v137, v139

    .line 367
    .restart local v138    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v140

    move/from16 v1, v139

    move/from16 v2, v137

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v141

    check-cast v141, [Landroid/text/style/MetricAffectingSpan;

    .line 369
    .local v141, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v141

    move-object/from16 v1, v140

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v141

    .end local v141    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v141, [Landroid/text/style/MetricAffectingSpan;

    .line 370
    .restart local v141    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v118

    move-object/from16 v1, p4

    move-object/from16 v2, v141

    move/from16 v3, v138

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 383
    .end local v141    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v94    # "c":C
    .restart local v103    # "fmAscent":I
    .restart local v104    # "fmBottom":I
    .restart local v105    # "fmDescent":I
    .restart local v106    # "fmTop":I
    .restart local v112    # "j":I
    :cond_1c
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_1f

    .line 384
    if-nez v107, :cond_1d

    .line 385
    const/16 v107, 0x1

    .line 386
    const/16 v19, 0x1

    .line 387
    if-eqz v140, :cond_1d

    .line 389
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v140

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v141

    check-cast v141, [Landroid/text/style/TabStopSpan;

    .line 391
    .local v141, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v141

    array-length v5, v0

    if-lez v5, :cond_1d

    .line 392
    new-instance v143, Landroid/text/Layout$TabStops;

    .end local v143    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v143

    move-object/from16 v1, v141

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 396
    .end local v141    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v143    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1d
    if-eqz v143, :cond_1e

    .line 397
    move-object/from16 v0, v143

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v60

    goto/16 :goto_9

    .line 399
    :cond_1e
    const/16 v5, 0x14

    move/from16 v0, v60

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v60

    goto/16 :goto_9

    .line 401
    :cond_1f
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_23

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_23

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v137

    if-ge v5, v0, :cond_23

    .line 403
    sub-int v5, v112, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 405
    .local v95, "emoji":I
    sget v5, Landroid/text/OppoStaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_22

    sget v5, Landroid/text/OppoStaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_22

    .line 406
    sget-object v5, Landroid/text/OppoStaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v91

    .line 408
    .local v91, "bm":Landroid/graphics/Bitmap;
    if-eqz v91, :cond_21

    .line 411
    if-nez v140, :cond_20

    .line 412
    move-object/from16 v144, p4

    .line 417
    .local v144, "whichPaint":Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v91 .. v91}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v144 .. v144}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v91 .. v91}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v145, v5, v6

    .line 419
    .local v145, "wid":F
    add-float v60, v60, v145

    .line 420
    const/16 v19, 0x1

    .line 421
    add-int/lit8 v112, v112, 0x1

    .line 422
    goto/16 :goto_9

    .line 414
    .end local v144    # "whichPaint":Landroid/graphics/Paint;
    .end local v145    # "wid":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v144, v0

    .restart local v144    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_d

    .line 423
    .end local v144    # "whichPaint":Landroid/graphics/Paint;
    :cond_21
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 426
    .end local v91    # "bm":Landroid/graphics/Bitmap;
    :cond_22
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 429
    .end local v95    # "emoji":I
    :cond_23
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 432
    :cond_24
    const/16 v111, 0x0

    goto/16 :goto_a

    .line 462
    .restart local v111    # "isSpaceOrTab":Z
    :cond_25
    const/16 v111, 0x0

    goto/16 :goto_b

    .line 468
    :cond_26
    const/16 v110, 0x0

    goto/16 :goto_c

    .line 494
    :cond_27
    move/from16 v0, v125

    if-eq v0, v7, :cond_2b

    .line 495
    move/from16 v96, v125

    .line 496
    .local v96, "endPos":I
    move/from16 v9, v126

    .line 497
    .local v9, "above":I
    move/from16 v10, v128

    .line 498
    .local v10, "below":I
    move/from16 v11, v129

    .line 499
    .local v11, "top":I
    move/from16 v12, v127

    .line 500
    .local v12, "bottom":I
    move/from16 v32, v130

    .line 602
    .local v32, "currentTextWidth":F
    :goto_e
    move/from16 v8, v96

    .line 603
    .local v8, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p12

    if-ne v0, v5, :cond_28

    .line 604
    move/from16 v8, v36

    .line 606
    :cond_28
    const/16 v34, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    invoke-direct/range {v5 .. v34}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 613
    move/from16 v7, v96

    .line 614
    add-int/lit8 v112, v7, -0x1

    .line 615
    move/from16 v99, v7

    move/from16 v125, v7

    .line 616
    const/16 v60, 0x0

    .line 617
    move/from16 v101, v60

    .line 618
    const/16 v40, 0x0

    move/from16 v39, v40

    move/from16 v38, v40

    move/from16 v37, v40

    .line 619
    const/16 v127, 0x0

    move/from16 v129, v127

    move/from16 v128, v127

    move/from16 v126, v127

    .line 621
    add-int/lit8 v98, v98, -0x1

    if-gtz v98, :cond_29

    .line 622
    move/from16 v146, v135

    .line 625
    :cond_29
    move/from16 v0, v139

    if-ge v7, v0, :cond_34

    .line 628
    move-object/from16 v0, v118

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 629
    move/from16 v137, v7

    .line 357
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v94    # "c":C
    .end local v96    # "endPos":I
    .end local v111    # "isSpaceOrTab":Z
    :cond_2a
    move/from16 v139, v137

    goto/16 :goto_6

    .line 501
    .restart local v94    # "c":C
    .restart local v111    # "isSpaceOrTab":Z
    :cond_2b
    move/from16 v0, v99

    if-eq v0, v7, :cond_32

    .line 504
    if-nez v107, :cond_31

    if-nez v19, :cond_31

    if-lez p5, :cond_31

    .line 505
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x50

    if-ge v5, v6, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->IsThaiLang(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    sub-int v5, v99, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->CharacterIsThai(C)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->GetBreakPos(Ljava/lang/String;)I

    move-result v131

    .line 511
    .local v131, "pos_num":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    sub-int v6, v99, v7

    move/from16 v0, v131

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v142

    .line 512
    .local v142, "string":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/text/OppoStaticLayout;->getcurrentsplitnum(Ljava/lang/String;)I

    move-result v123

    .line 519
    .local v123, "numCut":I
    const/16 v102, 0x0

    .local v102, "fit_new":I
    const/16 v109, 0x0

    .local v109, "index":I
    const/16 v119, 0x0

    .local v119, "new_pos":I
    const/16 v120, 0x0

    .line 520
    .local v120, "new_pos1":I
    const/16 v132, 0x0

    .local v132, "remainwidth":F
    const/16 v133, 0x0

    .local v133, "remainwidth_new":F
    const/16 v134, 0x0

    .line 521
    .local v134, "remainwidth_new1":F
    if-lez v123, :cond_2c

    .line 522
    add-int v5, v7, v131

    add-int v102, v5, v123

    .line 531
    :goto_f
    move/from16 v113, v102

    .local v113, "k":I
    :goto_10
    move/from16 v0, v113

    move/from16 v1, v99

    if-ge v0, v1, :cond_2d

    .line 536
    sub-int v5, v113, v29

    aget v5, v28, v5

    sub-float v100, v100, v5

    .line 531
    add-int/lit8 v113, v113, 0x1

    goto :goto_10

    .line 524
    .end local v113    # "k":I
    :cond_2c
    move/from16 v102, v99

    goto :goto_f

    .line 538
    .restart local v113    # "k":I
    :cond_2d
    move/from16 v0, v146

    int-to-float v5, v0

    sub-float v132, v5, v100

    .line 543
    sub-int v122, v137, v102

    .line 544
    .local v122, "next_num":I
    sub-int v5, v102, v7

    move/from16 v0, v122

    if-le v0, v5, :cond_2e

    .line 545
    sub-int v122, v102, v7

    .line 546
    :cond_2e
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int v6, v102, v122

    move/from16 v0, v102

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/OppoStaticLayout;->nextline:Ljava/lang/String;

    .line 549
    const/16 v109, 0x0

    .line 550
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->nextline:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Landroid/text/OppoStaticLayout;->getnextsplitnum(Ljava/lang/String;I)I

    move-result v119

    .line 553
    if-lez v119, :cond_30

    .line 554
    move/from16 v121, v102

    .local v121, "nextCut":I
    :goto_12
    add-int v5, v102, v119

    move/from16 v0, v121

    if-ge v0, v5, :cond_2f

    .line 555
    sub-int v5, v121, v29

    aget v5, v28, v5

    add-float v133, v133, v5

    .line 554
    add-int/lit8 v121, v121, 0x1

    goto :goto_12

    .line 560
    :cond_2f
    cmpg-float v5, v133, v132

    if-gez v5, :cond_30

    .line 561
    move/from16 v120, v119

    .line 562
    move/from16 v134, v133

    .line 549
    add-int/lit8 v109, v109, 0x1

    goto :goto_11

    .line 576
    .end local v121    # "nextCut":I
    :cond_30
    add-float v100, v100, v134

    .line 577
    add-int v99, v102, v120

    .line 581
    .end local v102    # "fit_new":I
    .end local v109    # "index":I
    .end local v113    # "k":I
    .end local v119    # "new_pos":I
    .end local v120    # "new_pos1":I
    .end local v122    # "next_num":I
    .end local v123    # "numCut":I
    .end local v131    # "pos_num":I
    .end local v132    # "remainwidth":F
    .end local v133    # "remainwidth_new":F
    .end local v134    # "remainwidth_new1":F
    .end local v142    # "string":Ljava/lang/String;
    :cond_31
    move/from16 v96, v99

    .line 582
    .restart local v96    # "endPos":I
    move/from16 v9, v37

    .line 583
    .restart local v9    # "above":I
    move/from16 v10, v38

    .line 584
    .restart local v10    # "below":I
    move/from16 v11, v39

    .line 585
    .restart local v11    # "top":I
    move/from16 v12, v40

    .line 586
    .restart local v12    # "bottom":I
    move/from16 v32, v100

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_e

    .line 589
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v96    # "endPos":I
    :cond_32
    add-int/lit8 v96, v7, 0x1

    .line 592
    .restart local v96    # "endPos":I
    :goto_13
    move/from16 v0, v96

    move/from16 v1, v137

    if-ge v0, v1, :cond_33

    sub-int v5, v96, v29

    aget v5, v28, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_33

    .line 593
    add-int/lit8 v96, v96, 0x1

    goto :goto_13

    .line 595
    :cond_33
    move/from16 v9, v103

    .line 596
    .restart local v9    # "above":I
    move/from16 v10, v105

    .line 597
    .restart local v10    # "below":I
    move/from16 v11, v106

    .line 598
    .restart local v11    # "top":I
    move/from16 v12, v104

    .line 599
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_e

    .line 633
    .restart local v8    # "ellipseEnd":I
    :cond_34
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_1a

    .line 689
    .end local v7    # "here":I
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v32    # "currentTextWidth":F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v93    # "breakOppIndex":I
    .end local v94    # "c":C
    .end local v96    # "endPos":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v99    # "fit":I
    .end local v100    # "fitWidth":F
    .end local v101    # "fitWidthGraphing":F
    .end local v103    # "fmAscent":I
    .end local v104    # "fmBottom":I
    .end local v105    # "fmDescent":I
    .end local v106    # "fmTop":I
    .end local v107    # "hasTab":Z
    .end local v111    # "isSpaceOrTab":Z
    .end local v112    # "j":I
    .end local v125    # "ok":I
    .end local v126    # "okAscent":I
    .end local v127    # "okBottom":I
    .end local v128    # "okDescent":I
    .end local v129    # "okTop":I
    .end local v130    # "okWidth":F
    .end local v135    # "restWidth":I
    .end local v137    # "spanEnd":I
    .end local v138    # "spanLen":I
    .end local v139    # "spanStart":I
    .end local v143    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v146    # "width":I
    :cond_35
    :goto_14
    return-void

    .line 640
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v93    # "breakOppIndex":I
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v99    # "fit":I
    .restart local v100    # "fitWidth":F
    .restart local v101    # "fitWidthGraphing":F
    .restart local v107    # "hasTab":Z
    .restart local v125    # "ok":I
    .restart local v126    # "okAscent":I
    .restart local v127    # "okBottom":I
    .restart local v128    # "okDescent":I
    .restart local v129    # "okTop":I
    .restart local v130    # "okWidth":F
    .restart local v135    # "restWidth":I
    .restart local v139    # "spanStart":I
    .restart local v143    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v146    # "width":I
    :cond_36
    move/from16 v0, v36

    if-eq v0, v7, :cond_38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_38

    .line 641
    or-int v5, v39, v40

    or-int v5, v5, v38

    or-int v5, v5, v37

    if-nez v5, :cond_37

    .line 642
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 644
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v39, v0

    .line 645
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v40, v0

    .line 646
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v37, v0

    .line 647
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v38, v0

    .line 652
    :cond_37
    move/from16 v0, v36

    move/from16 v1, p3

    if-eq v0, v1, :cond_3b

    const/16 v62, 0x1

    :goto_15
    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move/from16 v35, v7

    move/from16 v41, v13

    move/from16 v42, p7

    move/from16 v43, p8

    move-object/from16 v44, v16

    move-object/from16 v45, v17

    move-object/from16 v46, v18

    move/from16 v47, v19

    move/from16 v48, v20

    move-object/from16 v49, v21

    move/from16 v50, v22

    move/from16 v51, v23

    move/from16 v52, p3

    move/from16 v53, p9

    move/from16 v54, p10

    move-object/from16 v55, v27

    move-object/from16 v56, v28

    move/from16 v57, v29

    move-object/from16 v58, p12

    move/from16 v59, p11

    move-object/from16 v61, p4

    invoke-direct/range {v33 .. v62}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 664
    :cond_38
    move/from16 v29, v36

    .line 666
    move/from16 v0, v36

    move/from16 v1, p3

    if-ne v0, v1, :cond_3c

    .line 670
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v93    # "breakOppIndex":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v99    # "fit":I
    .end local v100    # "fitWidth":F
    .end local v101    # "fitWidthGraphing":F
    .end local v107    # "hasTab":Z
    .end local v125    # "ok":I
    .end local v126    # "okAscent":I
    .end local v127    # "okBottom":I
    .end local v128    # "okDescent":I
    .end local v129    # "okTop":I
    .end local v130    # "okWidth":F
    .end local v135    # "restWidth":I
    .end local v139    # "spanStart":I
    .end local v143    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v146    # "width":I
    :cond_39
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3a

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_35

    :cond_3a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_35

    .line 674
    move-object/from16 v0, v118

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 676
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 678
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v65, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v66, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v68, v0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v75, 0x0

    move-object/from16 v0, v118

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v77, v0

    move-object/from16 v0, v118

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v78, v0

    move-object/from16 v0, v118

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v79, v0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    move-object/from16 v61, p0

    move-object/from16 v62, p1

    move/from16 v63, p3

    move/from16 v64, p3

    move/from16 v69, v13

    move/from16 v70, p7

    move/from16 v71, p8

    move-object/from16 v74, v18

    move/from16 v76, v20

    move/from16 v80, p3

    move/from16 v81, p9

    move/from16 v82, p10

    move/from16 v85, p2

    move-object/from16 v86, p12

    move/from16 v87, p11

    move-object/from16 v89, p4

    invoke-direct/range {v61 .. v90}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    goto/16 :goto_14

    .line 652
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v93    # "breakOppIndex":I
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v99    # "fit":I
    .restart local v100    # "fitWidth":F
    .restart local v101    # "fitWidthGraphing":F
    .restart local v107    # "hasTab":Z
    .restart local v125    # "ok":I
    .restart local v126    # "okAscent":I
    .restart local v127    # "okBottom":I
    .restart local v128    # "okDescent":I
    .restart local v129    # "okTop":I
    .restart local v130    # "okWidth":F
    .restart local v135    # "restWidth":I
    .restart local v139    # "spanStart":I
    .restart local v143    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v146    # "width":I
    :cond_3b
    const/16 v62, 0x0

    goto/16 :goto_15

    .line 267
    :cond_3c
    move/from16 v29, v36

    goto/16 :goto_1
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1050
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1051
    return-void
.end method
