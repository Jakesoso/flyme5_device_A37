.class public final enum Lcom/oppo/theme/OppoConvertIcon$IconBgType;
.super Ljava/lang/Enum;
.source "OppoConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/theme/OppoConvertIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconBgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/theme/OppoConvertIcon$IconBgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/theme/OppoConvertIcon$IconBgType;

.field public static final enum COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

.field public static final enum MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

.field public static final enum SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    const-string v1, "MASK"

    invoke-direct {v0, v1, v2}, Lcom/oppo/theme/OppoConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    new-instance v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v3}, Lcom/oppo/theme/OppoConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    new-instance v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/oppo/theme/OppoConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->$VALUES:[Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/theme/OppoConvertIcon$IconBgType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgType;->$VALUES:[Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    invoke-virtual {v0}, [Lcom/oppo/theme/OppoConvertIcon$IconBgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/theme/OppoConvertIcon$IconBgType;

    return-object v0
.end method
