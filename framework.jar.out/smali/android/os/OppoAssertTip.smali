.class public Landroid/os/OppoAssertTip;
.super Ljava/lang/Object;
.source "OppoAssertTip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAssertTip"

.field private static mOppoAssertTipInstance:Landroid/os/OppoAssertTip;


# instance fields
.field private mAssertTipEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    .line 49
    const-string/jumbo v1, "persist.sys.assert.enabletip"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    .line 50
    return-void
.end method

.method public static getInstance()Landroid/os/OppoAssertTip;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/OppoAssertTip;

    invoke-direct {v0}, Landroid/os/OppoAssertTip;-><init>()V

    sput-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    .line 57
    :cond_0
    sget-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    return-object v0
.end method

.method private native setTipTextPaintAttr(II)I
.end method


# virtual methods
.method public native getAssertMessageState()I
.end method

.method public native hideAssertMessage()I
.end method

.method public isAssertTipEnable()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    return v0
.end method

.method public isAssertTipShowed()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    iget-boolean v3, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    if-nez v3, :cond_1

    .line 100
    const-string v2, "OppoAssertTip"

    const-string/jumbo v3, "isAssertTipShowed:assert tip disable!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/os/OppoAssertTip;->getAssertMessageState()I

    move-result v0

    .line 105
    .local v0, "state":I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public requestSetTipTextPaintAttr(I)I
    .locals 6
    .param p1, "textSize"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 80
    iget-boolean v4, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    if-nez v4, :cond_0

    .line 81
    const-string v3, "OppoAssertTip"

    const-string/jumbo v4, "requestSetTipTextPaintAttr:assert tip disable, ignore!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, -0x2

    .line 93
    :goto_0
    return v3

    .line 85
    :cond_0
    const/16 v4, 0xa

    if-ge p1, v4, :cond_1

    .line 86
    const-string v4, "OppoAssertTip"

    const-string/jumbo v5, "size is too small! set larger than 10."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_1
    new-array v1, v5, [C

    const/16 v4, 0x57

    aput-char v4, v1, v3

    .line 90
    .local v1, "str":[C
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .local v2, "testPaint":Landroid/graphics/Paint;
    int-to-float v4, p1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    invoke-virtual {v2, v1, v3, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 93
    .local v0, "charWidth":F
    float-to-int v3, v0

    invoke-direct {p0, p1, v3}, Landroid/os/OppoAssertTip;->setTipTextPaintAttr(II)I

    move-result v3

    goto :goto_0
.end method

.method public requestShowAssertMessage(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/os/OppoAssertTip;->mAssertTipEnable:Z

    if-nez v0, :cond_0

    .line 67
    const-string v0, "OppoAssertTip"

    const-string/jumbo v1, "requestShowAssertMessage:assert tip disable, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, -0x2

    .line 75
    :goto_0
    return v0

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 72
    :cond_1
    const-string v0, "OppoAssertTip"

    const-string/jumbo v1, "requestShowAssertMessage:message is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, -0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/OppoAssertTip;->showAssertMessage(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public native showAssertMessage(Ljava/lang/String;)I
.end method

.method public native testAddFunction(II)I
.end method
