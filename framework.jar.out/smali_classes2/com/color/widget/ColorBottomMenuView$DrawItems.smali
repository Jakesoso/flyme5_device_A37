.class public Lcom/color/widget/ColorBottomMenuView$DrawItems;
.super Ljava/util/ArrayList;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DrawItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/color/widget/ColorBottomMenuView$DrawItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method protected constructor <init>(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItems;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/color/widget/ColorBottomMenuView$DrawItems;)V
    .locals 0
    .param p1, "drawItems"    # Lcom/color/widget/ColorBottomMenuView$DrawItems;

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->clear()V

    .line 1421
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->addAll(Ljava/util/Collection;)Z

    .line 1422
    return-void
.end method
