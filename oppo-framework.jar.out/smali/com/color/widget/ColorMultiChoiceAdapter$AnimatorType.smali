.class public final enum Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;
.super Ljava/lang/Enum;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

.field public static final enum LEFT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

.field public static final enum LEFT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

.field public static final enum RIGHT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

.field public static final enum RIGHT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 929
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    const-string v1, "LEFT_IN"

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->LEFT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    .line 930
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    const-string v1, "LEFT_OUT"

    invoke-direct {v0, v1, v3}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->LEFT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    .line 931
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    const-string v1, "RIGHT_IN"

    invoke-direct {v0, v1, v4}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->RIGHT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    .line 932
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    const-string v1, "RIGHT_OUT"

    invoke-direct {v0, v1, v5}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->RIGHT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    .line 928
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    sget-object v1, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->LEFT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->LEFT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->RIGHT_IN:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->RIGHT_OUT:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->$VALUES:[Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

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
    .line 928
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 928
    const-class v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    return-object v0
.end method

.method public static values()[Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;
    .locals 1

    .prologue
    .line 928
    sget-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->$VALUES:[Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    invoke-virtual {v0}, [Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    return-object v0
.end method
