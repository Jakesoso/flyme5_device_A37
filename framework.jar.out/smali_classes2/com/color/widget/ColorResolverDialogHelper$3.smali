.class Lcom/color/widget/ColorResolverDialogHelper$3;
.super Ljava/lang/Object;
.source "ColorResolverDialogHelper.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorResolverDialogHelper;->getResolveView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorResolverDialogHelper;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverDialogHelper;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper$3;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 313
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$3;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    # getter for: Lcom/color/widget/ColorResolverDialogHelper;->mDotView:Lcom/color/widget/ColorDotView;
    invoke-static {v0}, Lcom/color/widget/ColorResolverDialogHelper;->access$200(Lcom/color/widget/ColorResolverDialogHelper;)Lcom/color/widget/ColorDotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorDotView;->setHightlightDot(I)V

    .line 305
    return-void
.end method
