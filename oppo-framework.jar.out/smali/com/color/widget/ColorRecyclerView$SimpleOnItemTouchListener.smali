.class public Lcom/color/widget/ColorRecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleOnItemTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0

    .prologue
    .line 8064
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$SimpleOnItemTouchListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8067
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 8076
    return-void
.end method

.method public onTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8072
    return-void
.end method
