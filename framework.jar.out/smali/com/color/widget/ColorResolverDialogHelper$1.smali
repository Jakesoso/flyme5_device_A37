.class Lcom/color/widget/ColorResolverDialogHelper$1;
.super Ljava/lang/Object;
.source "ColorResolverDialogHelper.java"

# interfaces
.implements Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;


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


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverDialogHelper;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper$1;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$1;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    # getter for: Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorResolverDialogHelper;->access$100(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$1;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    # getter for: Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorResolverDialogHelper;->access$100(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const-wide/16 v4, -0x1

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 259
    :cond_0
    return-void
.end method

.method public OnItemLongClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$1;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    # getter for: Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorResolverDialogHelper;->access$000(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper$1;->this$0:Lcom/color/widget/ColorResolverDialogHelper;

    # getter for: Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorResolverDialogHelper;->access$000(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    const-wide/16 v4, -0x1

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 252
    :cond_0
    return-void
.end method
