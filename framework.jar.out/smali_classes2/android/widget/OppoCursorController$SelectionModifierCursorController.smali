.class public Landroid/widget/OppoCursorController$SelectionModifierCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mDownScrollX:I

.field private mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mNotShow:Z

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 5
    .param p1, "editor"    # Landroid/widget/OppoEditor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 476
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 461
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 477
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 478
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 479
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 480
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 481
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 482
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {p0, v1, v4, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 483
    const v1, 0xc09042c

    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$OppoHandleView;->getOffsetY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->createFloatPanelViewController(II)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 484
    new-instance v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)V

    .line 508
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044d

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 509
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044e

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 510
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 511
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc0204a7

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 515
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc0204b2

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020451

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 520
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 521
    return-void
.end method

.method static synthetic access$200(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private expandRecRange(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 643
    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v7, :cond_2

    .line 644
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 645
    if-eq v0, v5, :cond_0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    .line 646
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 647
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 648
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 679
    :cond_1
    :goto_0
    return v5

    .line 653
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v0, :cond_8

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 655
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 656
    .local v4, "y":F
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v2

    .line 657
    .local v2, "inStart":Z
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v1

    .line 658
    .local v1, "inEnd":Z
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 659
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v6

    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 660
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iput-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 670
    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v6, :cond_1

    .line 671
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 672
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 674
    :cond_4
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 662
    :cond_5
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iput-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_1

    .line 664
    :cond_6
    if-eqz v2, :cond_7

    .line 665
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iput-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_1

    .line 666
    :cond_7
    if-eqz v1, :cond_3

    .line 667
    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iput-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_1

    .end local v1    # "inEnd":Z
    .end local v2    # "inStart":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_8
    move v5, v6

    .line 679
    goto :goto_0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "clipboardmanager"    # Landroid/content/ClipboardManager;
    .param p2, "clipdata"    # Landroid/content/ClipData;
    .param p3, "charsequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 526
    if-nez p2, :cond_0

    .line 527
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 539
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 530
    .local v0, "clipdata1":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 531
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 532
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v0    # "clipdata1":Landroid/content/ClipData;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "OppoCursorController"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public computePanelPosition([I)V
    .locals 7
    .param p1, "pos"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 777
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 778
    .local v2, "start":I
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 779
    .local v0, "end":I
    if-nez v2, :cond_3

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v0, v5, :cond_3

    move v1, v3

    .line 780
    .local v1, "selectAll":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-boolean v5, v5, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    .line 782
    :cond_0
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 783
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 786
    :cond_1
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 787
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->resetHotspot([I)V

    .line 789
    :cond_2
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v5, v5, v3

    aput v5, p1, v3

    .line 790
    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v6, v3

    if-ne v5, v3, :cond_4

    .line 791
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v3, v3, v4

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    aput v3, p1, v4

    .line 796
    :goto_1
    return-void

    .end local v1    # "selectAll":Z
    :cond_3
    move v1, v4

    .line 779
    goto :goto_0

    .line 793
    .restart local v1    # "selectAll":Z
    :cond_4
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 794
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v4

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget-object v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v5, v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p1, v4

    goto :goto_1
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 764
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 765
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 766
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 767
    .local v0, "i":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 769
    .local v1, "j":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v2, v1, v3

    .line 770
    .local v2, "k":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 771
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 773
    :cond_0
    return v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 750
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 751
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 753
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 812
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 813
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 815
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 816
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 817
    :cond_1
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "oppohandleview"    # Landroid/widget/OppoCursorController$OppoHandleView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 625
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 629
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 634
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 694
    .local v0, "action":I
    const/4 v8, 0x0

    .line 695
    .local v8, "handle":Z
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 698
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 740
    :cond_1
    :goto_0
    :pswitch_0
    return v8

    .line 700
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 701
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 702
    .local v5, "y":F
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    iput v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    .line 703
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 704
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-wide v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    iget v6, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    iget v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OppoEditor;->startTextSelectionModeIfDouleTap(JFFFF)V

    .line 708
    :cond_2
    iput v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 709
    iput v5, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    .line 714
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 717
    .local v11, "pointerCount":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-ge v9, v11, :cond_1

    .line 718
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .line 720
    .local v10, "offset":I
    iget v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v10, v1, :cond_3

    .line 721
    iput v10, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 723
    :cond_3
    iget v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v10, v1, :cond_4

    .line 724
    iput v10, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 717
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 732
    .end local v9    # "index":I
    .end local v10    # "offset":I
    .end local v11    # "pointerCount":I
    :pswitch_3
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    .line 733
    .local v12, "upScrollX":I
    iget v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    if-ne v12, v1, :cond_5

    .line 734
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->onTapUpEvent()V

    .line 736
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 799
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 800
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 803
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 804
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 805
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 578
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 579
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 581
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 582
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 583
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 584
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 585
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->hideInsertionPointCursorControllerWrap()V

    .line 586
    const/4 v3, 0x7

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 602
    .local v1, "selectButton":[I
    const/4 v3, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 615
    .local v2, "separatorButton":[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3, v1}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, "arraylist":Ljava/util/ArrayList;
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3, v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 618
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v1    # "selectButton":[I
    .end local v2    # "separatorButton":[I
    :cond_0
    return-void

    .line 586
    nop

    :array_0
    .array-data 4
        0xc020451
        0xc02044d
        0xc02044e
        0xc02044f
        0xc0204a7
        0xc0204b2
        0xc020452
    .end array-data

    .line 602
    :array_1
    .array-data 4
        0xc020453
        0xc020454
        0xc020455
        0xc0204a6
        0xc0204be
        0xc0204dc
    .end array-data
.end method

.method public updatePosition()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 542
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 543
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 544
    .local v5, "start":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 545
    .local v0, "end":I
    if-ltz v5, :cond_0

    if-gez v0, :cond_2

    .line 546
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    .line 575
    .end local v0    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_0
    return-void

    .line 547
    .restart local v0    # "end":I
    .restart local v5    # "start":I
    :cond_2
    if-ne v5, v0, :cond_3

    .line 548
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 550
    :cond_3
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v5, v8}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 551
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v0, v8}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 553
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 554
    .local v2, "line":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->getPositionY(I)I

    move-result v3

    .line 555
    .local v3, "positionY":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 556
    .local v6, "viewParent":Landroid/view/ViewParent;
    instance-of v7, v6, Landroid/widget/ScrollView;

    if-eqz v7, :cond_4

    move-object v4, v6

    .line 557
    check-cast v4, Landroid/widget/ScrollView;

    .line 558
    .local v4, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 559
    .local v1, "height":I
    if-ge v1, v3, :cond_4

    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 560
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    .line 563
    .end local v1    # "height":I
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    :cond_4
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_5
    iget-boolean v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    if-nez v7, :cond_8

    .line 564
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v7, :cond_7

    .line 565
    :cond_6
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 566
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 572
    :cond_7
    :goto_1
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    goto :goto_0

    .line 568
    :cond_8
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 569
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 570
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_1
.end method
