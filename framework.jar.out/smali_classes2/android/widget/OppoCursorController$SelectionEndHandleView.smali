.class Landroid/widget/OppoCursorController$SelectionEndHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field private mPosOffsetY:I

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1380
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1381
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1378
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mPosOffsetY:I

    .line 1382
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05049b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mPosOffsetY:I

    .line 1383
    return-void
.end method


# virtual methods
.method protected getBasePositionY(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "hostpotPos"    # [I

    .prologue
    .line 1444
    invoke-super {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 1445
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mPosOffsetY:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1446
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1418
    if-eqz p2, :cond_0

    .line 1419
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 1421
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method protected getPositionY(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1455
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->getBasePositionY(I)I

    move-result v0

    iget v1, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mPosOffsetY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTouchOffsetY(I)F
    .locals 1
    .param p1, "handleHeight"    # I

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->getSameLineTouchOffsetY(I)F

    move-result v0

    return v0
.end method

.method protected getViewTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    const-string v0, "SelectionEndHandleView"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1398
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1399
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1434
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1435
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1436
    .local v1, "selectionStart":I
    if-gt v0, v1, :cond_0

    .line 1437
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1439
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1440
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1429
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->updateDrawable()V

    .line 1430
    return-void
.end method
