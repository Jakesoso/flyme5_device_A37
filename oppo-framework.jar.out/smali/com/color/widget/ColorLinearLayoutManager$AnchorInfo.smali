.class Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "ColorLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field final synthetic this$0:Lcom/color/widget/ColorLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorLinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 2076
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v0

    return v0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 2106
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 2107
    .local v0, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2094
    return-void

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2159
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    iget-object v1, v1, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v1}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2166
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2167
    return-void

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpaceChange()I

    move-result v14

    .line 2113
    .local v14, "spaceChange":I
    if-ltz v14, :cond_1

    .line 2114
    invoke-virtual/range {p0 .. p1}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2117
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2118
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v10, v17, v14

    .line 2120
    .local v10, "prevLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 2121
    .local v2, "childEnd":I
    sub-int v11, v10, v2

    .line 2122
    .local v11, "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2124
    if-lez v11, :cond_0

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 2126
    .local v3, "childSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    sub-int v7, v17, v3

    .line 2127
    .local v7, "estimatedChildStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 2128
    .local v9, "layoutStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    sub-int v13, v17, v9

    .line 2130
    .local v13, "previousStartMargin":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v16, v9, v17

    .line 2131
    .local v16, "startReference":I
    sub-int v15, v7, v16

    .line 2132
    .local v15, "startMargin":I
    if-gez v15, :cond_0

    .line 2134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 2138
    .end local v2    # "childEnd":I
    .end local v3    # "childSize":I
    .end local v7    # "estimatedChildStart":I
    .end local v9    # "layoutStart":I
    .end local v10    # "prevLayoutEnd":I
    .end local v11    # "previousEndMargin":I
    .end local v13    # "previousStartMargin":I
    .end local v15    # "startMargin":I
    .end local v16    # "startReference":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 2139
    .local v4, "childStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v17

    sub-int v15, v4, v17

    .line 2140
    .restart local v15    # "startMargin":I
    move-object/from16 v0, p0

    iput v4, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2141
    if-lez v15, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v17

    add-int v8, v4, v17

    .line 2144
    .local v8, "estimatedEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v12, v17, v14

    .line 2146
    .local v12, "previousLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    sub-int v11, v12, v17

    .line 2148
    .restart local v11    # "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v6, v17, v18

    .line 2150
    .local v6, "endReference":I
    sub-int v5, v6, v8

    .line 2151
    .local v5, "endMargin":I
    if-gez v5, :cond_0

    .line 2152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 2081
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2082
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2084
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
