.class Lcom/color/widget/ColorSlideView$2;
.super Ljava/lang/Object;
.source "ColorSlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSlideView;->shrink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSlideView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/color/widget/ColorSlideView$2;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/color/widget/ColorSlideView$2;->this$0:Lcom/color/widget/ColorSlideView;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/color/widget/ColorSlideView;->access$102(Lcom/color/widget/ColorSlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 364
    iget-object v0, p0, Lcom/color/widget/ColorSlideView$2;->this$0:Lcom/color/widget/ColorSlideView;

    # getter for: Lcom/color/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;
    invoke-static {v0}, Lcom/color/widget/ColorSlideView;->access$200(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/color/widget/ColorSlideView$2;->this$0:Lcom/color/widget/ColorSlideView;

    # getter for: Lcom/color/widget/ColorSlideView;->mOnSmoothScrollListener:Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;
    invoke-static {v0}, Lcom/color/widget/ColorSlideView;->access$200(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorSlideView$2;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-interface {v0, v1}, Lcom/color/widget/ColorSlideView$OnSmoothScrollListener;->onSmoothScroll(Landroid/view/View;)V

    .line 367
    :cond_0
    return-void
.end method
