.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    # invokes: Landroid/widget/ColorSpinner;->isVisibleToUser()Z
    invoke-static {v0}, Landroid/widget/ColorSpinner;->access$600(Landroid/widget/ColorSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->dismiss()V

    .line 476
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->computeContentWidth()V

    .line 474
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->show()V

    goto :goto_0
.end method
