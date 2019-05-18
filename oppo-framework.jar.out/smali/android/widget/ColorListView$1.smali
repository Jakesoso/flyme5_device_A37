.class Landroid/widget/ColorListView$1;
.super Ljava/lang/Object;
.source "ColorListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorListView;


# direct methods
.method constructor <init>(Landroid/widget/ColorListView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    # getter for: Landroid/widget/ColorListView;->mUpScroll:Z
    invoke-static {v0}, Landroid/widget/ColorListView;->access$000(Landroid/widget/ColorListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    iget-object v1, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    invoke-virtual {v1}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ColorListView;->setSelection(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    iget-object v1, p0, Landroid/widget/ColorListView$1;->this$0:Landroid/widget/ColorListView;

    invoke-virtual {v1}, Landroid/widget/ColorListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # invokes: Landroid/widget/ColorListView;->alignBottomChild(I)V
    invoke-static {v0, v1}, Landroid/widget/ColorListView;->access$100(Landroid/widget/ColorListView;I)V

    goto :goto_0
.end method
