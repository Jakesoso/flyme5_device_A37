.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
.super Landroid/widget/ListPopupWindow$PopupTouchInterceptor;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerPopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method private constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorSpinner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
    .param p2, "x1"    # Landroid/widget/ColorSpinner$1;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 673
    invoke-super {p0, p1, p2}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 674
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 676
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 677
    .local v3, "y":I
    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 678
    .local v0, "listView":Landroid/widget/ListView;
    if-ltz v2, :cond_0

    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # invokes: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewWidth(Landroid/view/View;)I
    invoke-static {v4, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$1700(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v4

    if-ge v2, v4, :cond_0

    if-ltz v3, :cond_0

    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    # invokes: Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I
    invoke-static {v4, v0}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->access$1800(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 679
    :cond_0
    iget-object v4, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v4}, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->dismiss()V

    .line 680
    const/4 v1, 0x1

    .line 683
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "result":Z
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    return v1
.end method
