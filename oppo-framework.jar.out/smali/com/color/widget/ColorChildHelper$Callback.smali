.class interface abstract Lcom/color/widget/ColorChildHelper$Callback;
.super Ljava/lang/Object;
.source "ColorChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addView(Landroid/view/View;I)V
.end method

.method public abstract attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract detachViewFromParent(I)V
.end method

.method public abstract getChildAt(I)Landroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
.end method

.method public abstract indexOfChild(Landroid/view/View;)I
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeViewAt(I)V
.end method
