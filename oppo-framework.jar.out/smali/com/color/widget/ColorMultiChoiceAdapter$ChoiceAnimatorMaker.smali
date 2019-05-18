.class abstract Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;
.super Ljava/lang/Object;
.source "ColorMultiChoiceAdapter.java"

# interfaces
.implements Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ChoiceAnimatorMaker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Lcom/color/widget/ColorMultiChoiceAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p2, "x1"    # Lcom/color/widget/ColorMultiChoiceAdapter$1;

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    return-void
.end method


# virtual methods
.method makeAnimator(Ljava/util/List;ZIILjava/lang/String;)Lcom/color/widget/ColorChoiceModeAnimator;
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "dependency"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;ZII",
            "Ljava/lang/String;",
            ")",
            "Lcom/color/widget/ColorChoiceModeAnimator;"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # getter for: Lcom/color/widget/ColorMultiChoiceAdapter;->mDurationChoice:J
    invoke-static {v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$600(Lcom/color/widget/ColorMultiChoiceAdapter;)J

    move-result-wide v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/color/widget/ColorMultiChoiceAnimator;-><init>(Ljava/util/List;ZIJILjava/lang/String;)V

    return-object v0
.end method
