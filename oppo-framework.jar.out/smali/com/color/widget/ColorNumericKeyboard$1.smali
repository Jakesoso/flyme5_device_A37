.class Lcom/color/widget/ColorNumericKeyboard$1;
.super Ljava/lang/Object;
.source "ColorNumericKeyboard.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorNumericKeyboard;->initAnimator(Landroid/animation/ValueAnimator;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorNumericKeyboard;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorNumericKeyboard;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/color/widget/ColorNumericKeyboard$1;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 315
    iget-object v1, p0, Lcom/color/widget/ColorNumericKeyboard$1;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/color/widget/ColorNumericKeyboard;->changeBackagegroundAlpha(I)V
    invoke-static {v1, v0}, Lcom/color/widget/ColorNumericKeyboard;->access$000(Lcom/color/widget/ColorNumericKeyboard;I)V

    .line 317
    return-void
.end method
