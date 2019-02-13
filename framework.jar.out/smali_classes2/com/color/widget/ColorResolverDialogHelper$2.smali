.class Lcom/color/widget/ColorResolverDialogHelper$2;
.super Ljava/lang/Object;
.source "ColorResolverDialogHelper.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorResolverDialogHelper;->setResolveView(Lcom/color/widget/ColorResolverDialogViewPager;Lcom/color/widget/ColorDotView;Landroid/widget/CheckBox;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorResolverDialogHelper;

.field final synthetic val$mDotView:Lcom/color/widget/ColorDotView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverDialogHelper;Lcom/color/widget/ColorDotView;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper$2;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    iput-object p2, p0, Lcom/color/widget/ColorResolverDialogHelper$2;->val$mDotView:Lcom/color/widget/ColorDotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 277
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$2;->val$mDotView:Lcom/color/widget/ColorDotView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorDotView;->setHightlightDot(I)V

    .line 269
    return-void
.end method
