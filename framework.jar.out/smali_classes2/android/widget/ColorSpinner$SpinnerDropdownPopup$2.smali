.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;-><init>(Landroid/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$this$0:Landroid/widget/ColorSpinner;


# direct methods
.method constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorSpinner;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->val$this$0:Landroid/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    iget-object v1, v1, Landroid/widget/ColorSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    iget-object v3, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v3, v3, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    iget-object v3, v3, Landroid/widget/ColorSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/widget/ColorSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 408
    :cond_0
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1}, Landroid/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 409
    .local v0, "oldPosition":I
    iget-object v3, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    if-eq v0, p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    # setter for: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z
    invoke-static {v3, v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$302(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z

    .line 410
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # getter for: Landroid/widget/ColorSpinner;->mUpdateSelectionAfterAnim:Z
    invoke-static {v1}, Landroid/widget/ColorSpinner;->access$400(Landroid/widget/ColorSpinner;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # setter for: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mItemClickPosition:I
    invoke-static {v1, p3}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$502(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;I)I

    .line 412
    if-eq v0, p3, :cond_1

    .line 413
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1, p3}, Landroid/widget/ColorSpinner;->setNextSelectedPositionInt(I)V

    .line 414
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1}, Landroid/widget/ColorSpinner;->selectionChanged()V

    .line 415
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1, v0}, Landroid/widget/ColorSpinner;->setNextSelectedPositionInt(I)V

    .line 420
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->dismiss()V

    .line 421
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # setter for: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z
    invoke-static {v1, v2}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$302(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z

    .line 422
    return-void

    :cond_2
    move v1, v2

    .line 409
    goto :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1, p3}, Landroid/widget/ColorSpinner;->setSelection(I)V

    goto :goto_1
.end method
