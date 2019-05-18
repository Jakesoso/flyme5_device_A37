.class Landroid/widget/OppoCursorController$SelectionStartHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1297
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1298
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1299
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050487

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mPosOffsetY:I

    .line 1300
    return-void
.end method


# virtual methods
.method protected getBasePositionY(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "hostpotPos"    # [I

    .prologue
    .line 1361
    invoke-super {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 1362
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mPosOffsetY:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1363
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1330
    if-eqz p2, :cond_0

    .line 1331
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 1333
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method protected getPositionY(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1372
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->getBasePositionY(I)I

    move-result v0

    iget v1, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mPosOffsetY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTouchOffsetY(I)F
    .locals 1
    .param p1, "handleHeight"    # I

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->getSameLineTouchOffsetY(I)F

    move-result v0

    return v0
.end method

.method protected getViewTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1304
    const-string v0, "SelectionStartHandleView"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1315
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1316
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1351
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1352
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1353
    .local v1, "selectionEnd":I
    if-lt v0, v1, :cond_0

    .line 1354
    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1356
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1357
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1346
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->updateDrawable()V

    .line 1347
    return-void
.end method
