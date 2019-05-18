.class public Landroid/widget/OppoFloatPanelView;
.super Landroid/widget/FrameLayout;
.source "OppoFloatPanelView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mArrowDownView:Landroid/view/View;

.field private mArrowUpView:Landroid/view/View;

.field private final mBottomOffset:I

.field private mIsArrowUp:Z

.field private mPanelView:Landroid/widget/LinearLayout;

.field private mPos:I

.field private final mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "OppoFloatPanelView"

    sput-object v0, Landroid/widget/OppoFloatPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    .line 36
    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowDownView:Landroid/view/View;

    .line 37
    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    .line 49
    return-void
.end method

.method private requestLayout(Z)V
    .locals 0
    .param p1, "invalidate"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/widget/OppoFloatPanelView;->requestLayout()V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    const v0, 0xc02044a

    invoke-virtual {p0, v0}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    .line 54
    const v0, 0xc02044b

    invoke-virtual {p0, v0}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowDownView:Landroid/view/View;

    .line 55
    const v0, 0xc02044c

    invoke-virtual {p0, v0}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "top":I
    const/4 v2, 0x0

    .line 65
    .local v2, "linearTop":I
    iget-boolean v4, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eqz v4, :cond_1

    .line 66
    iget-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    .line 67
    .local v0, "arrowView":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mArrowDownView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const/4 v3, 0x0

    .line 70
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    sub-int v2, v4, v5

    .line 78
    :goto_0
    iget v4, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 79
    .local v1, "left":I
    if-ltz v1, :cond_2

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, p4, v4

    if-le v1, v4, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v1, p4, v4

    .line 87
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 89
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 92
    return-void

    .line 72
    .end local v0    # "arrowView":Landroid/view/View;
    .end local v1    # "left":I
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoFloatPanelView;->mArrowDownView:Landroid/view/View;

    .line 73
    .restart local v0    # "arrowView":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mArrowUpView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mArrowDownView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v4, p0, Landroid/widget/OppoFloatPanelView;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    sub-int v3, v4, v5

    .line 76
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    .restart local v1    # "left":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setArrowPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;->setArrowPos(IZ)V

    .line 114
    return-void
.end method

.method public setArrowPos(IZ)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    .line 104
    invoke-direct {p0, p2}, Landroid/widget/OppoFloatPanelView;->requestLayout(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setArrowUp(Z)V
    .locals 1
    .param p1, "isArrowUp"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;->setArrowUp(ZZ)V

    .line 110
    return-void
.end method

.method public setArrowUp(ZZ)V
    .locals 1
    .param p1, "isArrowUp"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    .line 97
    invoke-direct {p0, p2}, Landroid/widget/OppoFloatPanelView;->requestLayout(Z)V

    .line 99
    :cond_0
    return-void
.end method
