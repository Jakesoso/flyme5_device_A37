.class Lcom/color/widget/ColorGridView$2;
.super Ljava/lang/Object;
.source "ColorGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorGridView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorGridView;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    const v1, -0x2000001

    # |= operator for: Lcom/color/widget/ColorGridView;->mPrivateFlags:I
    invoke-static {v0, v1}, Lcom/color/widget/ColorGridView;->access$076(Lcom/color/widget/ColorGridView;I)I

    .line 287
    iget-object v0, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mOnclickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$200(Lcom/color/widget/ColorGridView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v0, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 289
    iget-object v0, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorGridView$2;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method
