.class public Lcom/color/internal/widget/ColorActionBarUpContainerLayout;
.super Landroid/widget/LinearLayout;
.source "ColorActionBarUpContainerLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorActionBarUpContainerLayout"


# instance fields
.field private mChildExpandedHome:Landroid/view/View;

.field private mChildHome:Landroid/view/View;

.field private mChildTitle:Landroid/view/View;

.field private final mIsOppoStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildHome:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildExpandedHome:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildTitle:Landroid/view/View;

    .line 57
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mIsOppoStyle:Z

    .line 58
    return-void
.end method

.method private findChildViews()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->getChildCount()I

    move-result v1

    .line 80
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 81
    invoke-virtual {p0, v2}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0xc020401

    if-ne v3, v4, :cond_1

    .line 83
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildTitle:Landroid/view/View;

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0xc020404

    if-ne v3, v4, :cond_2

    .line 85
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildHome:Landroid/view/View;

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0xc020405

    if-ne v3, v4, :cond_0

    .line 87
    iput-object v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildExpandedHome:Landroid/view/View;

    goto :goto_1

    .line 90
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private layoutAlignLeft(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 95
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 96
    .local v0, "height":I
    const/4 v1, 0x0

    .line 97
    .local v1, "left":I
    sub-int v4, p5, v0

    div-int/lit8 v4, v4, 0x2

    add-int v2, p3, v4

    .line 98
    .local v2, "top":I
    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x0

    add-int v6, v2, v0

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 100
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private layoutCenterHorizontal(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 103
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 113
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 114
    .local v0, "height":I
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 115
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 121
    :cond_0
    sub-int v4, p4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v1, p2, v4

    .line 122
    .local v1, "left":I
    sub-int v4, p5, v0

    div-int/lit8 v4, v4, 0x2

    add-int v2, p3, v4

    .line 123
    .local v2, "top":I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 125
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "width":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 66
    iget-boolean v0, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->findChildViews()V

    .line 70
    iget-object v1, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildHome:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->layoutAlignLeft(Landroid/view/View;IIII)V

    .line 71
    iget-object v1, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildExpandedHome:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->layoutAlignLeft(Landroid/view/View;IIII)V

    .line 72
    iget-object v1, p0, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->mChildTitle:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/color/internal/widget/ColorActionBarUpContainerLayout;->layoutCenterHorizontal(Landroid/view/View;IIII)V

    goto :goto_0
.end method
