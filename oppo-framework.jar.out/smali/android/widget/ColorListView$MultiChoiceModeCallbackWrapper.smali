.class Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;
.super Landroid/widget/AbsListView$MultiChoiceModeWrapper;
.source "ColorListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/ColorListView;


# direct methods
.method constructor <init>(Landroid/widget/ColorListView;)V
    .locals 1

    .prologue
    .line 633
    iput-object p1, p0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;->this$0:Landroid/widget/ColorListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method


# virtual methods
.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;->this$0:Landroid/widget/ColorListView;

    # getter for: Landroid/widget/ColorListView;->mIsNotifyCheckedStateEnabled:Z
    invoke-static {v0}, Landroid/widget/ColorListView;->access$200(Landroid/widget/ColorListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v1, p0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 648
    :cond_0
    return-void
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 639
    iput-object p1, p0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 640
    invoke-super {p0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 641
    return-void
.end method
