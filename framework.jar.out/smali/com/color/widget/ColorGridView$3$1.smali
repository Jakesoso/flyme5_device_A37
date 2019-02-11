.class Lcom/color/widget/ColorGridView$3$1;
.super Ljava/lang/Object;
.source "ColorGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorGridView$3;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/widget/ColorGridView$3;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorGridView$3;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/color/widget/ColorGridView$3$1;->this$1:Lcom/color/widget/ColorGridView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3$1;->this$1:Lcom/color/widget/ColorGridView$3;

    iget-object v0, v0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorGridView$3$1;->this$1:Lcom/color/widget/ColorGridView$3;

    iget v1, v1, Lcom/color/widget/ColorGridView$3;->position:I

    const/4 v2, 0x0

    # invokes: Lcom/color/widget/ColorGridView;->click(IZ)V
    invoke-static {v0, v1, v2}, Lcom/color/widget/ColorGridView;->access$900(Lcom/color/widget/ColorGridView;IZ)V

    .line 326
    return-void
.end method
