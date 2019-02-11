.class interface abstract Lcom/color/widget/ColorAdapterHelper$Callback;
.super Ljava/lang/Object;
.source "ColorAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract findViewHolder(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
.end method

.method public abstract markViewHoldersUpdated(II)V
.end method

.method public abstract offsetPositionsForAdd(II)V
.end method

.method public abstract offsetPositionsForMove(II)V
.end method

.method public abstract offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract onDispatchFirstPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
.end method

.method public abstract onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
.end method
