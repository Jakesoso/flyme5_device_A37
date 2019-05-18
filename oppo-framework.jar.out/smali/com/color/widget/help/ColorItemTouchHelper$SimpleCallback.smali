.class public abstract Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;
.super Lcom/color/widget/help/ColorItemTouchHelper$Callback;
.source "ColorItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;-><init>()V

    .line 2126
    iput p2, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2127
    iput p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2128
    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 2173
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 2178
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 2160
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .prologue
    .line 2147
    iput p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2148
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .prologue
    .line 2137
    iput p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2138
    return-void
.end method
