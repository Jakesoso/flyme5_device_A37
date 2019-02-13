.class Lcom/color/widget/ColorGridView$3$2;
.super Ljava/lang/Object;
.source "ColorGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorGridView$3;->onLongPress(Landroid/view/MotionEvent;)V
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
    .line 344
    iput-object p1, p0, Lcom/color/widget/ColorGridView$3$2;->this$1:Lcom/color/widget/ColorGridView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3$2;->this$1:Lcom/color/widget/ColorGridView$3;

    iget-object v0, v0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0}, Lcom/color/widget/ColorGridView;->access$300(Lcom/color/widget/ColorGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :cond_0
    return-void
.end method
