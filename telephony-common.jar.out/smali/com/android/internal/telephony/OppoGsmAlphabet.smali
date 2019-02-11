.class public Lcom/android/internal/telephony/OppoGsmAlphabet;
.super Ljava/lang/Object;
.source "OppoGsmAlphabet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static is0X80coding:Z

.field private static is0X81coding:Z

.field private static is0X82coding:Z

.field private static max:I

.field private static min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 49
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 50
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwsException"    # Z
    .param p2, "rfu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "charIndex":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 260
    .local v2, "sz":I
    const/4 v1, 0x0

    .line 262
    .local v1, "count":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 264
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return v1
.end method

.method public static enableToEncode0X80()Z
    .locals 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    return v0
.end method

.method public static enableToEncode0X81()Z
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    return v0
.end method

.method public static enableToEncode0X82()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return v0
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 106
    .local v3, "sz":I
    const/4 v2, 0x1

    .line 107
    .local v2, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    const/16 v4, 0x21

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v2, 0x0

    .line 116
    .end local v0    # "c":C
    :cond_1
    return v2
.end method

.method public static judge([BII)V
    .locals 6
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    const/16 v2, 0x7fff

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 124
    sput v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 125
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 129
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_3

    .line 130
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 133
    .local v1, "temp":I
    if-gez v1, :cond_1

    .line 134
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    add-int/lit16 v2, v2, 0x82

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 147
    .end local v0    # "i":I
    .end local v1    # "temp":I
    :cond_0
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int/2addr v2, v3

    const/16 v3, 0x81

    if-ge v2, v3, :cond_5

    .line 150
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 151
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 152
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 153
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 174
    :goto_1
    return-void

    .line 137
    .restart local v0    # "i":I
    .restart local v1    # "temp":I
    :cond_1
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    if-le v2, v1, :cond_2

    .line 138
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 140
    :cond_2
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    if-ge v2, v1, :cond_3

    .line 141
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 127
    .end local v1    # "temp":I
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_4
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 163
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 164
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    goto :goto_1

    .line 170
    :cond_5
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 171
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 172
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    goto :goto_1
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p0, :cond_0

    move-object v2, v5

    .line 99
    :goto_0
    return-object v2

    .line 70
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 72
    .local v3, "septets":I
    new-array v2, v3, [B

    .line 74
    .local v2, "ret":[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v2    # "ret":[B
    .end local v3    # "septets":I
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 88
    .local v4, "temp":[B
    array-length v6, v4

    div-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 89
    .restart local v2    # "ret":[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->judge([BII)V

    .line 90
    const/4 v6, 0x0

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Lcom/android/internal/telephony/OppoGsmAlphabet;->ucs2ToAlphaField([BIII[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v2    # "ret":[B
    .end local v4    # "temp":[B
    :catch_1
    move-exception v1

    .line 95
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 96
    goto :goto_0
.end method

.method public static ucs2ToAlphaField([BIII[B)[B
    .locals 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "destOff"    # I
    .param p4, "dest"    # [B

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "outOff":I
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    if-nez v3, :cond_3

    .line 183
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    if-eqz v3, :cond_1

    .line 185
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x3

    new-array p4, v3, [B

    .line 186
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 188
    const/16 v3, -0x7f

    aput-byte v3, p4, p3

    .line 190
    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v3, v3, 0x7f80

    sput v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 191
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 192
    add-int/lit8 v1, p3, 0x3

    .line 205
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 208
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    .line 209
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    .line 218
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 205
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 194
    .end local v0    # "i":I
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    if-eqz v3, :cond_0

    .line 196
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array p4, v3, [B

    .line 197
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 199
    const/16 v3, -0x7e

    aput-byte v3, p4, p3

    .line 201
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 202
    add-int/lit8 v3, p3, 0x3

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 203
    add-int/lit8 v1, p3, 0x4

    goto :goto_0

    .line 214
    .restart local v0    # "i":I
    :cond_2
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int v2, v3, v4

    .line 216
    .local v2, "temp":I
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    goto :goto_2

    .line 224
    .end local v0    # "i":I
    .end local v2    # "temp":I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    new-array p4, v3, [B

    .line 225
    const/16 v3, -0x80

    aput-byte v3, p4, p3

    .line 226
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 229
    :cond_4
    return-object p4
.end method
