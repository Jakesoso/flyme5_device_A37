.class Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorViewPager;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorViewPager;)V
    .locals 0

    .prologue
    .line 2776
    iput-object p1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2828
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$200(Lcom/color/widget/ColorViewPager;)Lcom/color/widget/ColorPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$200(Lcom/color/widget/ColorViewPager;)Lcom/color/widget/ColorPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2780
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2781
    const-class v1, Lcom/color/widget/ColorViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2782
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 2783
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2784
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$200(Lcom/color/widget/ColorViewPager;)Lcom/color/widget/ColorPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2786
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$200(Lcom/color/widget/ColorViewPager;)Lcom/color/widget/ColorPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2787
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$300(Lcom/color/widget/ColorViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2788
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/color/widget/ColorViewPager;->access$300(Lcom/color/widget/ColorViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2790
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2794
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2795
    const-class v0, Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2796
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2797
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2800
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2801
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2803
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2807
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2824
    :goto_0
    return v0

    .line 2810
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2824
    goto :goto_0

    .line 2812
    :sswitch_0
    iget-object v2, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2813
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    iget-object v2, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/color/widget/ColorViewPager;->access$300(Lcom/color/widget/ColorViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2816
    goto :goto_0

    .line 2818
    :sswitch_1
    iget-object v2, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2819
    iget-object v1, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    iget-object v2, p0, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;->this$0:Lcom/color/widget/ColorViewPager;

    # getter for: Lcom/color/widget/ColorViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/color/widget/ColorViewPager;->access$300(Lcom/color/widget/ColorViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2822
    goto :goto_0

    .line 2810
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
