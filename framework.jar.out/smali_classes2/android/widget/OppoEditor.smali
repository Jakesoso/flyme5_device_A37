.class public Landroid/widget/OppoEditor;
.super Landroid/widget/Editor;
.source "OppoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEditor$PastePanelOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursrOffset:I

.field private mFlag:I

.field private mHasOnTouchListener:Z

.field private mIsInTextSelectionMode:Z

.field private mIsInTextTranslationMode:Z

.field private mLongPressed:Z

.field mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

.field mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mTextView:Landroid/widget/TextView;

.field private mTranslateController:Landroid/widget/OppoTranslateController;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 77
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 88
    iput v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 89
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 90
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 95
    iput-object p1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 99
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/OppoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    return p1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInputMethodScreenMode()V
    .locals 4

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 933
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 934
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 935
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 936
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 940
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private isAllSelected()Z
    .locals 4

    .prologue
    .line 965
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 966
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 967
    .local v0, "selectionEnd":I
    sub-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPasswordTransformation()Z
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getButtonShowHides(ZI)Z
    .locals 5
    .param p1, "isTextEditable"    # Z
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    :try_start_0
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v1, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 512
    .local v1, "passwordTransformed":Z
    sparse-switch p2, :sswitch_data_0

    .line 569
    .end local v1    # "passwordTransformed":Z
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 516
    .restart local v1    # "passwordTransformed":Z
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->isAllSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 522
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 528
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 542
    :sswitch_4
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    goto :goto_0

    .line 545
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 550
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isImSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 552
    goto :goto_0

    .line 557
    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSearchEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 567
    .end local v1    # "passwordTransformed":Z
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "OppoEditor"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_4
        0xc02044e -> :sswitch_5
        0xc02044f -> :sswitch_3
        0xc020450 -> :sswitch_2
        0xc020451 -> :sswitch_1
        0xc020452 -> :sswitch_6
        0xc0204a7 -> :sswitch_7
        0xc0204b2 -> :sswitch_0
    .end sparse-switch
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "buttons"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v5, "showHides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 473
    .local v3, "isTextEditable":Ljava/lang/Boolean;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 474
    .local v1, "button":I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6, v1}, Landroid/widget/OppoEditor;->getButtonShowHides(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "button":I
    :cond_0
    return-object v5
.end method

.method getLastTapPositionWrap()I
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v0

    .line 306
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 308
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 314
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getLastTouchOffsetsWrap()J
    .locals 6

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 283
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 284
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 285
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLongPressed()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    return v0
.end method

.method getOppoInsertionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    const/4 v1, 0x0

    .line 408
    :goto_0
    return-object v1

    .line 401
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 404
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 405
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 408
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getOppoSelectionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    .line 416
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 417
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 419
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 420
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 423
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleWindowStyle()I
    .locals 1

    .prologue
    .line 439
    const v0, 0x10102c8

    return v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cc"    # Landroid/widget/OppoCursorController;

    .prologue
    .line 627
    const/4 v12, 0x0

    .line 628
    .local v12, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->length()I

    move-result v11

    .line 630
    .local v11, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isFocused()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    .line 632
    .local v16, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    .line 634
    .local v15, "selEnd":I
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 635
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 638
    .end local v15    # "selEnd":I
    .end local v16    # "selStart":I
    :cond_0
    const/4 v5, 0x0

    .line 639
    .local v5, "data":Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "clipboard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 642
    .local v4, "clip":Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 647
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 772
    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    :cond_1
    :goto_1
    return-void

    .line 643
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :catch_0
    move-exception v7

    .line 644
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    .end local v7    # "e":Ljava/lang/SecurityException;
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->showSelectionModifierCursorController()Z

    goto :goto_1

    .line 656
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->length()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->showSelectionModifierCursorController()Z

    goto :goto_1

    .line 663
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    move-result v17

    if-nez v17, :cond_1

    if-eqz v5, :cond_1

    .line 667
    const/4 v13, 0x0

    .line 669
    .local v13, "paste":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-lez v17, :cond_2

    .line 670
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 673
    :cond_2
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 676
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11, v13}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 678
    :catch_1
    move-exception v7

    .line 679
    .local v7, "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 692
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "paste":Ljava/lang/CharSequence;
    :sswitch_3
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040534

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 702
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 703
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 707
    const/4 v6, 0x0

    .line 708
    .local v6, "delayedTime":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 709
    const/16 v6, 0xc8

    .line 711
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/OppoEditor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$2;-><init>(Landroid/widget/OppoEditor;)V

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 722
    .end local v6    # "delayedTime":I
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 723
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v9, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 725
    .local v10, "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 727
    .local v14, "query":Ljava/lang/String;
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 732
    :catch_2
    move-exception v7

    .line 733
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .restart local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 745
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intentTemp":Landroid/content/Intent;
    .end local v14    # "query":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 746
    new-instance v17, Landroid/widget/OppoTranslateController;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/OppoEditor$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$3;-><init>(Landroid/widget/OppoEditor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoTranslateController;-><init>(Landroid/widget/Editor;Landroid/widget/TextView;Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 759
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/OppoTranslateController;->setSelection(II)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoTranslateController;->show()V

    .line 761
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    goto/16 :goto_1

    .line 766
    :sswitch_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 767
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_1

    .line 768
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 647
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_3
        0xc02044e -> :sswitch_4
        0xc02044f -> :sswitch_2
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_1
        0xc020452 -> :sswitch_7
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method public hasOnTouchListener()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    return v0
.end method

.method hasPasswordTransformationMethodWrap()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 167
    :cond_0
    return-void
.end method

.method hideSelectionModifierCursorController()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 156
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 158
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 160
    :cond_1
    return-void
.end method

.method public isAllTextSelected()Z
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 878
    const/4 v0, 0x1

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCutAndPasteEnabled()Z
    .locals 2

    .prologue
    .line 884
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 886
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImSwitcherEnabled()Z
    .locals 2

    .prologue
    .line 868
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 870
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInsertToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 854
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPasswordType()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 944
    iget v6, p0, Landroid/widget/OppoEditor;->mInputType:I

    and-int/lit16 v2, v6, 0xfff

    .line 946
    .local v2, "variation":I
    const/16 v6, 0x81

    if-ne v2, v6, :cond_2

    move v1, v5

    .line 948
    .local v1, "passwordInputType":Z
    :goto_0
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_3

    move v3, v5

    .line 950
    .local v3, "webPasswordInputType":Z
    :goto_1
    const/16 v6, 0x12

    if-ne v2, v6, :cond_4

    move v0, v5

    .line 952
    .local v0, "numberPasswordInputType":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v5

    .line 955
    :cond_1
    return v4

    .end local v0    # "numberPasswordInputType":Z
    .end local v1    # "passwordInputType":Z
    .end local v3    # "webPasswordInputType":Z
    :cond_2
    move v1, v4

    .line 946
    goto :goto_0

    .restart local v1    # "passwordInputType":Z
    :cond_3
    move v3, v4

    .line 948
    goto :goto_1

    .restart local v3    # "webPasswordInputType":Z
    :cond_4
    move v0, v4

    .line 950
    goto :goto_2
.end method

.method public isSearchEnabled()Z
    .locals 2

    .prologue
    .line 860
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 832
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTranslationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->TRANSLATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    iget v2, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-eq v2, v3, :cond_0

    .line 909
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 910
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 922
    invoke-direct {p0}, Landroid/widget/OppoEditor;->isPasswordTransformation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 104
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 107
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 110
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 112
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 114
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 115
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 127
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 130
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 131
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 294
    if-nez p1, :cond_1

    .line 295
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 299
    :cond_1
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 577
    :cond_0
    return-void
.end method

.method onTouchEventWrap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const/4 v0, 0x1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionX:F

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionY:F

    .line 338
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mTouchFocusSelected:Z

    .line 339
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIgnoreActionUpEvent:Z

    goto :goto_0
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 178
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 179
    .local v1, "selectAllGotFocus":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 180
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 183
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-direct {p0}, Landroid/widget/OppoEditor;->checkInputMethodScreenMode()V

    .line 185
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_2

    .line 187
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 188
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 189
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCursorInsideEasyCorrectionSpanWrap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    new-instance v3, Landroid/widget/OppoEditor$1;

    invoke-direct {v3, p0}, Landroid/widget/OppoEditor$1;-><init>(Landroid/widget/OppoEditor;)V

    iput-object v3, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 203
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    .end local v0    # "offset":I
    :cond_2
    :goto_0
    return-void

    .line 205
    .restart local v0    # "offset":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->show()V

    .line 207
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->setSecondTap()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 776
    const/4 p1, 0x0

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "vibrate":Z
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 780
    if-nez p1, :cond_0

    .line 781
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->touchPositionIsInSelectionWrap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 783
    const/4 p1, 0x1

    .line 807
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 808
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 815
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 816
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 819
    :cond_2
    return p1

    .line 785
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 796
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 797
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->showSelectionModifierCursorController()Z

    move-result p1

    move v0, p1

    .line 802
    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    .line 809
    :cond_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 812
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 137
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 140
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 146
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 149
    :cond_1
    return-void
.end method

.method public setEditFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 823
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 824
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 825
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 827
    :cond_0
    return-void
.end method

.method public setHasOnTouchListener(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 892
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 893
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .param p1, "longPressed"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 432
    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 444
    return-void
.end method

.method showSelectionModifierCursorController()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v3, :cond_0

    .line 581
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 585
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_2

    .line 590
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    .line 596
    .local v0, "selectionController":Landroid/widget/OppoCursorController;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->show()V

    .line 598
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    move v1, v2

    .line 599
    goto :goto_0
.end method

.method startSelectionActionMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    move v1, v3

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    :cond_2
    const-string v4, "TextView"

    const-string v5, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 226
    goto :goto_0

    .line 229
    :cond_3
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 231
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 233
    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    .line 241
    .local v2, "willExtract":Z
    if-nez v2, :cond_5

    .line 246
    :cond_5
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 247
    .local v1, "selectionStarted":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/OppoEditor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_0

    .line 249
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 250
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 251
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "selectionStarted":Z
    :cond_7
    move v1, v3

    .line 246
    goto :goto_1
.end method

.method startTextSelectionModeIfDouleTap(JFFFF)V
    .locals 11
    .param p1, "previousTapUpTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "previousX"    # F
    .param p6, "previousY"    # F

    .prologue
    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v8, p1

    .line 490
    .local v4, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoEditor;->isPositionOnTextWrap(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 491
    sub-float v0, p3, p5

    .line 492
    .local v0, "deltaX":F
    sub-float v1, p4, p6

    .line 493
    .local v1, "deltaY":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 494
    .local v2, "distanceSquared":F
    iget-object v7, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 496
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 497
    .local v3, "touchSlop":I
    mul-int v7, v3, v3

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->showSelectionModifierCursorController()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 499
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 503
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v3    # "touchSlop":I
    .end local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method touchPositionIsInSelectionWrap()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 260
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 261
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 263
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 277
    :goto_0
    return v7

    .line 267
    :cond_0
    if-le v4, v3, :cond_1

    .line 268
    move v5, v4

    .line 269
    .local v5, "tmp":I
    move v4, v3

    .line 270
    move v3, v5

    .line 271
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 273
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 274
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 275
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 277
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 13

    .prologue
    .line 354
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v11, v11, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v11, :cond_1

    .line 355
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 360
    .local v4, "layout":Landroid/text/Layout;
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 361
    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 362
    .local v7, "offset":I
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 363
    .local v5, "line":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 364
    .local v10, "top":I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v4, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 366
    .local v0, "bottom":I
    invoke-direct {p0, v4, v2, v7}, Landroid/widget/OppoEditor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v8

    .line 367
    .local v8, "primaryHorizontal":F
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v9, v11

    .line 368
    .local v9, "right":I
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v3, v11, v12

    .line 370
    .local v3, "hspace":I
    const/4 v1, 0x0

    .line 371
    .local v1, "cursorOffset":I
    sub-int v11, v9, v3

    if-lez v11, :cond_2

    float-to-int v11, v8

    if-ne v11, v9, :cond_2

    .line 372
    iget v1, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 375
    :cond_2
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getGravity()I

    move-result v11

    const/16 v12, 0x11

    if-eq v11, v12, :cond_3

    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getGravity()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 377
    :cond_3
    const/4 v1, 0x0

    .line 380
    :cond_4
    invoke-virtual {v4, v7}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    :goto_1
    iput v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 382
    move v6, v0

    .line 383
    .local v6, "middle":I
    iget v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 385
    add-int v11, v10, v0

    shr-int/lit8 v6, v11, 0x1

    .line 389
    :cond_5
    const/4 v11, 0x0

    int-to-float v12, v1

    sub-float v12, v8, v12

    invoke-virtual {p0, v11, v10, v6, v12}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    .line 391
    iget v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 392
    const/4 v11, 0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v12

    invoke-virtual {p0, v11, v6, v0, v12}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    goto/16 :goto_0

    .line 380
    .end local v6    # "middle":I
    :cond_6
    const/4 v11, 0x1

    goto :goto_1
.end method
