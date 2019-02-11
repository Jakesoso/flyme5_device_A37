.class Lcom/color/widget/ColorMultiChoiceAdapter$4;
.super Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$4;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter$4;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    # invokes: Lcom/color/widget/ColorMultiChoiceAdapter;->getTargetWidth(Landroid/view/View;)I
    invoke-static {v0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->access$400(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$4;->getStartValue(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 179
    return-void
.end method
