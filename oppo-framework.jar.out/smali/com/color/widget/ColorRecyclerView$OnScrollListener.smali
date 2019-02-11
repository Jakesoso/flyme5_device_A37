.class public abstract Lcom/color/widget/ColorRecyclerView$OnScrollListener;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/color/widget/ColorRecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 8100
    return-void
.end method

.method public onScrolled(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 8113
    return-void
.end method
