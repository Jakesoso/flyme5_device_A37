.class public Landroid/widget/ColorActionMenuView;
.super Landroid/widget/ActionMenuView;
.source "ColorActionMenuView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorActionMenuView"


# instance fields
.field private mIsOppoStyle:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mPresenterClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ColorActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/ColorActionMenuView;->mPresenterClasses:Ljava/util/List;

    .line 65
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    .line 68
    iget-boolean v1, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ColorActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 72
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/ColorActionMenuView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ColorActionMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/ColorActionMenuView;->setPadding(IIII)V

    .line 74
    iget-object v1, p0, Landroid/widget/ColorActionMenuView;->mPresenterClasses:Ljava/util/List;

    const-class v2, Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSpacerSize(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "spacerSize"    # I

    .prologue
    .line 267
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v0, v1, 0x2

    .line 268
    .local v0, "value":I
    if-eq v0, p2, :cond_0

    add-int/lit8 v1, p2, 0x1

    if-eq v0, v1, :cond_0

    .line 269
    const/4 p3, 0x0

    .line 271
    :cond_0
    return p3
.end method

.method private superOnMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/widget/ColorActionMenuView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0, p1, p2}, Landroid/widget/ColorActionMenuView;->measureVertical(II)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ColorActionMenuView;->measureHorizontal(II)V

    goto :goto_0
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-super {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    iput-object v0, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 223
    iget-object v0, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    .line 248
    iput-object p1, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 251
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ColorActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 95
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ActionMenuView;->onLayout(ZIIII)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const/16 v28, 0x0

    .line 99
    .local v28, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getChildCount()I

    move-result v7

    .line 100
    .local v7, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v7, :cond_4

    .line 101
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 102
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 100
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 107
    .end local v27    # "v":Landroid/view/View;
    :cond_4
    const/16 v31, 0x4

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/ActionMenuView;->onLayout(ZIIII)V

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getChildCount()I

    move-result v6

    .line 112
    .local v6, "childCount":I
    add-int v31, p3, p5

    div-int/lit8 v15, v31, 0x2

    .line 113
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getDividerWidth()I

    move-result v8

    .line 114
    .local v8, "dividerWidth":I
    const/16 v18, 0x0

    .line 115
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 116
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 117
    .local v16, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 118
    .local v30, "widthRemaining":I
    const/4 v9, 0x0

    .line 119
    .local v9, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->isLayoutRtl()Z

    move-result v12

    .line 120
    .local v12, "isLayoutRtl":Z
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_b

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 122
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 120
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    .line 127
    .local v19, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 128
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 130
    add-int v18, v18, v8

    .line 133
    :cond_7
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 136
    .local v10, "height":I
    if-eqz v12, :cond_8

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingLeft()I

    move-result v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v13, v31, v32

    .line 138
    .local v13, "l":I
    add-int v20, v13, v18

    .line 143
    .local v20, "r":I
    :goto_5
    div-int/lit8 v31, v10, 0x2

    sub-int v26, v15, v31

    .line 144
    .local v26, "t":I
    add-int v5, v26, v10

    .line 145
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 147
    sub-int v30, v30, v18

    .line 148
    const/4 v9, 0x1

    .line 149
    goto :goto_4

    .line 140
    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v20, v31, v32

    .line 141
    .restart local v20    # "r":I
    sub-int v13, v20, v18

    .restart local v13    # "l":I
    goto :goto_5

    .line 150
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v20    # "r":I
    :cond_9
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v21, v31, v32

    .line 151
    .local v21, "size":I
    add-int v17, v17, v21

    .line 152
    sub-int v30, v30, v21

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 154
    add-int v17, v17, v8

    .line 156
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 160
    .end local v19    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_b
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_d

    if-nez v9, :cond_d

    .line 162
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 163
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 164
    .local v29, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 165
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v26, v15, v31

    .line 166
    .restart local v26    # "t":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 167
    .local v14, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    if-eqz v12, :cond_c

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 169
    .local v24, "startLeft":I
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v24, v24, v31

    .line 170
    add-int v31, v24, v29

    add-int v32, v26, v10

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 172
    .end local v24    # "startLeft":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v25, v31, v32

    .line 173
    .local v25, "startRight":I
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v25, v25, v31

    .line 174
    sub-int v31, v25, v29

    add-int v32, v26, v10

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 179
    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_d
    if-eqz v9, :cond_f

    const/16 v31, 0x0

    :goto_6
    sub-int v22, v16, v31

    .line 180
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_10

    .end local v30    # "widthRemaining":I
    :goto_7
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 182
    .local v23, "spacerSize":I
    if-eqz v12, :cond_12

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v25, v31, v32

    .line 184
    .restart local v25    # "startRight":I
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_1

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 186
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 187
    .restart local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    iget-boolean v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    .line 184
    :cond_e
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 179
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    .restart local v30    # "widthRemaining":I
    :cond_f
    const/16 v31, 0x1

    goto :goto_6

    .line 180
    .restart local v22    # "spacerCount":I
    :cond_10
    const/16 v30, 0x0

    goto :goto_7

    .line 191
    .end local v30    # "widthRemaining":I
    .restart local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_11
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v25, v25, v31

    .line 192
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 193
    .restart local v29    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 194
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v26, v15, v31

    .line 195
    .restart local v26    # "t":I
    sub-int v31, v25, v29

    add-int v32, v26, v10

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 196
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v11, v6, v1}, Landroid/widget/ColorActionMenuView;->getSpacerSize(III)I

    move-result v32

    add-int v31, v31, v32

    sub-int v25, v25, v31

    goto :goto_9

    .line 199
    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 200
    .restart local v24    # "startLeft":I
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_1

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 202
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    .line 203
    .restart local v14    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    iget-boolean v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 200
    :cond_13
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 207
    :cond_14
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v24, v24, v31

    .line 208
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 209
    .restart local v29    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 210
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v26, v15, v31

    .line 211
    .restart local v26    # "t":I
    add-int v31, v24, v29

    add-int v32, v26, v10

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 212
    iget v0, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v11, v6, v1}, Landroid/widget/ColorActionMenuView;->getSpacerSize(III)I

    move-result v32

    add-int v31, v31, v32

    add-int v24, v24, v31

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    iget-boolean v1, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasure(II)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ColorActionMenuView;->mPresenterClasses:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenters(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "presenters":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasure(II)V

    .line 89
    iget-object v1, p0, Landroid/widget/ColorActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->restoreMenuPresenters(Ljava/util/List;)V

    goto :goto_0
.end method

.method onMeasureExactFormat(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 228
    iget-boolean v4, p0, Landroid/widget/ColorActionMenuView;->mIsOppoStyle:Z

    if-nez v4, :cond_0

    .line 229
    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ColorActionMenuView;->getChildCount()I

    move-result v1

    .line 233
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {p0, v2}, Landroid/widget/ColorActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 236
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/ColorActionMenuView;->superOnMeasure(II)V

    goto :goto_0
.end method
