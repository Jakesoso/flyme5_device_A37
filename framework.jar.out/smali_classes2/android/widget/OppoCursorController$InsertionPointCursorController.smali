.class public Landroid/widget/OppoCursorController$InsertionPointCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mDownScrollX:I

.field private mDownScrollY:I

.field private mFousedFlag:Z

.field private final mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 3
    .param p1, "editor"    # Landroid/widget/OppoEditor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 209
    const v1, 0xc09042d

    iget-object v2, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$OppoHandleView;->getOffsetY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->createFloatPanelViewController(II)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 210
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 213
    new-instance v0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/OppoCursorController$InsertionPointCursorController;)V

    .line 222
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020450

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020451

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoCursorController$InsertionPointCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoCursorController$InsertionPointCursorController;

    .prologue
    .line 194
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 330
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 333
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 334
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController;->setMinMaxOffset(I)V

    .line 335
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 3
    .param p1, "postion"    # [I

    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 245
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 246
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 250
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 251
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    aget v0, v0, v3

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 428
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 432
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x1

    .line 437
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 435
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 449
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 451
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 452
    :cond_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "oppohandleview"    # Landroid/widget/OppoCursorController$OppoHandleView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 301
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 308
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 314
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return v4

    .line 261
    :pswitch_0
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 262
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 271
    .local v2, "upScrollY":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 272
    .local v1, "upScrollX":I
    const/4 v0, 0x1

    .line 273
    .local v0, "isScroll":Z
    iget v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    if-eq v1, v3, :cond_2

    .line 274
    :cond_1
    const/4 v0, 0x0

    .line 276
    :cond_2
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    .line 279
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->show()V

    .line 286
    :cond_3
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3, v4}, Landroid/widget/OppoEditor;->setLongPressed(Z)V

    .line 288
    iput v4, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 289
    iput v4, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 361
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 367
    .local v2, "selectButton":[I
    const/4 v5, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    .line 373
    .local v3, "separatorButton":[I
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v5, v2}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    .local v0, "arraylist":Ljava/util/ArrayList;
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v5, v2, v3, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 375
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 378
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 379
    .local v4, "start":I
    iget v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-gtz v5, :cond_7

    .line 380
    :cond_0
    const/4 v1, 0x1

    .line 384
    .local v1, "canSelectFlag":Z
    :goto_0
    iput v4, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 385
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 386
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 388
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 389
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 391
    :cond_1
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v5}, Landroid/widget/OppoEditor;->getLongPressed()Z

    move-result v5

    if-ne v8, v5, :cond_8

    .line 392
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    .line 398
    :cond_2
    if-nez v1, :cond_3

    .line 399
    # setter for: Landroid/widget/OppoCursorController;->mSecondTapFlag:Z
    invoke-static {v7}, Landroid/widget/OppoCursorController;->access$102(Z)Z

    .line 402
    :cond_3
    if-eqz v1, :cond_6

    .line 403
    iget-boolean v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v5}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v5, :cond_9

    .line 404
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 405
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-nez v5, :cond_4

    .line 406
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 407
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 413
    :cond_4
    :goto_1
    iget-boolean v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v5, :cond_5

    .line 414
    iput-boolean v7, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 416
    :cond_5
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 419
    :cond_6
    :goto_2
    return-void

    .line 382
    .end local v1    # "canSelectFlag":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "canSelectFlag":Z
    goto :goto_0

    .line 393
    :cond_8
    # getter for: Landroid/widget/OppoCursorController;->mSecondTapFlag:Z
    invoke-static {}, Landroid/widget/OppoCursorController;->access$100()Z

    move-result v5

    if-nez v5, :cond_2

    .line 394
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_2

    .line 411
    :cond_9
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    goto :goto_1

    .line 361
    nop

    :array_0
    .array-data 4
        0xc020450
        0xc020451
        0xc02044f
        0xc020452
    .end array-data

    .line 367
    :array_1
    .array-data 4
        0xc020453
        0xc020454
        0xc020455
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 230
    iget v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 237
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method
