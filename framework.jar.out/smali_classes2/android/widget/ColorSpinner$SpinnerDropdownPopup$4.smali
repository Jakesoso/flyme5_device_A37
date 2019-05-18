.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, v1, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {v1}, Landroid/widget/ColorSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 483
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 486
    :cond_0
    iget-object v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # invokes: Landroid/widget/ListPopupWindow;->dismiss()V
    invoke-static {v1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$701(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V

    .line 487
    return-void
.end method
