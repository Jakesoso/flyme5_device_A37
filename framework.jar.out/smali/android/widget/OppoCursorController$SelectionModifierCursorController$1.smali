.class Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xc020451

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    iget-object v0, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    iget-object v0, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V

    .line 502
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-static {v0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->access$200(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0
.end method
