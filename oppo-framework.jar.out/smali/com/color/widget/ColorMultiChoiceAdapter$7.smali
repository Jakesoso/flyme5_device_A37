.class Lcom/color/widget/ColorMultiChoiceAdapter$7;
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
    .line 210
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$7;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$7;->getStartValue(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 215
    return-void
.end method
