.class public Landroid/widget/OppoCursorController$FloatPanelViewController;
.super Ljava/lang/Object;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatPanelViewController"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mContainerOffsetY:I

.field private mContainerOffsetYDown:I

.field private mContainerOffsetYUp:I

.field private mContent:Landroid/widget/OppoFloatPanelView;

.field private mController:Landroid/widget/OppoCursorController;

.field private mDisplay:Landroid/view/Display;

.field private mHandleOffsetY:I

.field private mPos:[I

.field private mStatusBarHeight:I

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoCursorController;II)V
    .locals 5
    .param p2, "controller"    # Landroid/widget/OppoCursorController;
    .param p3, "layoutId"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 1472
    iput-object p1, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->this$0:Landroid/widget/OppoCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYUp:I

    .line 1469
    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYDown:I

    .line 1470
    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetY:I

    .line 1473
    iput-object p2, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mController:Landroid/widget/OppoCursorController;

    .line 1474
    iput p4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mHandleOffsetY:I

    .line 1475
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    .line 1476
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    const v2, 0x10102c8

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    .line 1478
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 1479
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1480
    iget-object v0, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/OppoFloatPanelView;

    check-cast v0, Landroid/widget/OppoFloatPanelView;

    iput-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    .line 1481
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1482
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1484
    iget-object v0, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mStatusBarHeight:I

    .line 1486
    iget-object v0, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05048b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYUp:I

    .line 1488
    iget-object v0, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05049a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYDown:I

    .line 1490
    iget-object v0, p1, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mDisplay:Landroid/view/Display;

    .line 1492
    return-void
.end method

.method static synthetic access$500(Landroid/widget/OppoCursorController$FloatPanelViewController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoCursorController$FloatPanelViewController;

    .prologue
    .line 1459
    invoke-direct {p0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->updatePosition()V

    return-void
.end method

.method private updatePosition()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1495
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mController:Landroid/widget/OppoCursorController;

    iget-object v5, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    invoke-virtual {v4, v5}, Landroid/widget/OppoCursorController;->computePanelPosition([I)V

    .line 1497
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    aget v4, v4, v6

    iget-object v5, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v5}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 1498
    .local v2, "x":I
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v5}, Landroid/widget/OppoFloatPanelView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mHandleOffsetY:I

    sub-int v3, v4, v5

    .line 1499
    .local v3, "y":I
    iget v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mStatusBarHeight:I

    if-ge v3, v4, :cond_1

    .line 1500
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4, v7}, Landroid/widget/OppoFloatPanelView;->setArrowUp(Z)V

    .line 1501
    iget v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYUp:I

    iput v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetY:I

    .line 1502
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mController:Landroid/widget/OppoCursorController;

    invoke-virtual {v4}, Landroid/widget/OppoCursorController;->computePanelPositionOnBottom()I

    move-result v3

    .line 1507
    :goto_0
    iget v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetY:I

    add-int/2addr v3, v4

    .line 1508
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1509
    .local v1, "width":I
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 1511
    .local v0, "arrowPos":I
    if-ltz v2, :cond_2

    .line 1512
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v1, :cond_0

    .line 1513
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 1520
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4, v0}, Landroid/widget/OppoFloatPanelView;->setArrowPos(I)V

    .line 1521
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v5}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v6}, Landroid/widget/OppoFloatPanelView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1522
    return-void

    .line 1504
    .end local v0    # "arrowPos":I
    .end local v1    # "width":I
    :cond_1
    iget-object v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v4, v6}, Landroid/widget/OppoFloatPanelView;->setArrowUp(Z)V

    .line 1505
    iget v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetYDown:I

    iput v4, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetY:I

    goto :goto_0

    .line 1516
    .restart local v0    # "arrowPos":I
    .restart local v1    # "width":I
    :cond_2
    add-int/2addr v0, v2

    .line 1517
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getElement(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1530
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "onclickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1545
    iget-object v1, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1537
    iget-object v2, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mController:Landroid/widget/OppoCursorController;

    iget-object v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    invoke-virtual {v2, v3}, Landroid/widget/OppoCursorController;->computePanelPosition([I)V

    .line 1538
    iget-object v2, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v3}, Landroid/widget/OppoFloatPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1539
    .local v0, "x":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v3}, Landroid/widget/OppoFloatPanelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mHandleOffsetY:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainerOffsetY:I

    add-int v1, v2, v3

    .line 1540
    .local v1, "y":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->this$0:Landroid/widget/OppoCursorController;

    iget-object v3, v3, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1541
    invoke-direct {p0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->updatePosition()V

    .line 1542
    return-void
.end method

.method public showAndUpdatePositionAsync()V
    .locals 2

    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1553
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->show()V

    .line 1555
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->this$0:Landroid/widget/OppoCursorController;

    iget-object v0, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/OppoCursorController$FloatPanelViewController$1;

    invoke-direct {v1, p0}, Landroid/widget/OppoCursorController$FloatPanelViewController$1;-><init>(Landroid/widget/OppoCursorController$FloatPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1562
    return-void
.end method

.method public showElement(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1565
    iget-object v1, p0, Landroid/widget/OppoCursorController$FloatPanelViewController;->mContent:Landroid/widget/OppoFloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1566
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1567
    if-eqz p2, :cond_1

    .line 1568
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideButtons([I[ILjava/util/ArrayList;)V
    .locals 8
    .param p1, "id"    # [I
    .param p2, "button"    # [I
    .param p3, "arraylist"    # Ljava/util/ArrayList;

    .prologue
    const/4 v7, 0x0

    .line 1576
    aget v6, p1, v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v6, v5}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 1578
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1579
    const/4 v1, 0x1

    .line 1583
    .local v1, "flag":Z
    :goto_0
    const/4 v2, 0x1

    .line 1584
    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 1585
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1586
    .local v0, "buttonBboolean":Ljava/lang/Boolean;
    aget v5, p1, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 1587
    add-int/lit8 v5, v2, -0x1

    aget v3, p2, v5

    .line 1589
    .local v3, "j":I
    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1590
    const/4 v4, 0x1

    .line 1594
    .local v4, "tmpFlag":Z
    :goto_2
    invoke-virtual {p0, v3, v4}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 1596
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1597
    const/4 v1, 0x0

    .line 1599
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1600
    goto :goto_1

    .line 1581
    .end local v0    # "buttonBboolean":Ljava/lang/Boolean;
    .end local v1    # "flag":Z
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "tmpFlag":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "flag":Z
    goto :goto_0

    .line 1592
    .restart local v0    # "buttonBboolean":Ljava/lang/Boolean;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "tmpFlag":Z
    goto :goto_2

    .line 1601
    .end local v0    # "buttonBboolean":Ljava/lang/Boolean;
    .end local v3    # "j":I
    .end local v4    # "tmpFlag":Z
    :cond_3
    return-void
.end method
