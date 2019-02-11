.class Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;
.super Ljava/lang/Object;
.source "ColorBottomMenuAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateListener"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuAnimator;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;I)V
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 172
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->mTag:Ljava/lang/String;

    .line 174
    iput p3, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->mIndex:I

    .line 175
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;->mIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollPosition(IF)V

    .line 182
    :cond_0
    return-void
.end method
