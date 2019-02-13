.class Lcom/color/widget/ColorViewPager$2;
.super Ljava/lang/Object;
.source "ColorViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorViewPager;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorViewPager;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/color/widget/ColorViewPager$2;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$2;->this$0:Lcom/color/widget/ColorViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/color/widget/ColorViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorViewPager;->access$000(Lcom/color/widget/ColorViewPager;I)V

    .line 236
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$2;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 237
    return-void
.end method
