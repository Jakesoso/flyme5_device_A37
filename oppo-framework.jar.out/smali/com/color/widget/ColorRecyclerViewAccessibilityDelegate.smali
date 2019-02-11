.class public Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorRecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mRecyclerView:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 79
    new-instance v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;-><init>(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 35
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    return v0
.end method

.method private shouldIgnore()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method


# virtual methods
.method getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v1, Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v1, p1, Lcom/color/widget/ColorRecyclerView;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/color/widget/ColorRecyclerView;

    .line 69
    .local v0, "rv":Lcom/color/widget/ColorRecyclerView;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .end local v0    # "rv":Lcom/color/widget/ColorRecyclerView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 57
    const-class v0, Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 61
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
