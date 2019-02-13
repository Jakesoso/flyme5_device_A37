.class public Lcom/mediatek/telecom/FormattedLog;
.super Ljava/lang/Object;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telecom/FormattedLog$1;,
        Lcom/mediatek/telecom/FormattedLog$Builder;,
        Lcom/mediatek/telecom/FormattedLog$OpType;
    }
.end annotation


# instance fields
.field private mLogString:Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/mediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;

    .line 296
    :goto_1
    return-void

    .line 291
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ife":Ljava/util/IllegalFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mediatek/telecom/FormattedLog$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Lcom/mediatek/telecom/FormattedLog$1;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telecom/FormattedLog$OpType;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mediatek/telecom/FormattedLog;->opTypeToString(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static opTypeToString(Lcom/mediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/mediatek/telecom/FormattedLog$OpType;

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/telecom/FormattedLog$1;->$SwitchMap$com$mediatek$telecom$FormattedLog$OpType:[I

    invoke-virtual {p0}, Lcom/mediatek/telecom/FormattedLog$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    const-string v0, "OP"

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v0, "Notify"

    goto :goto_0

    .line 70
    :pswitch_2
    const-string v0, "Dump"

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;

    return-object v0
.end method
