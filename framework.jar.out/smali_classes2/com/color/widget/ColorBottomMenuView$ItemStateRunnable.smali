.class abstract Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;
.super Ljava/lang/Object;
.source "ColorBottomMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ItemStateRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuView;I)V
    .locals 1
    .param p2, "position"    # I

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->mPosition:I

    .line 1433
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->setPosition(I)V

    .line 1434
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 1441
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->mPosition:I

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1446
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->setPosition(I)V

    .line 1447
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1437
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->mPosition:I

    .line 1438
    return-void
.end method
