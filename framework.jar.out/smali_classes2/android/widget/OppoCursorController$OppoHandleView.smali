.class abstract Landroid/widget/OppoCursorController$OppoHandleView;
.super Landroid/view/View;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "OppoHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "OppoHandleView"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerX:I

.field private mContainerY:I

.field private mCursorController:Landroid/widget/OppoCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/OppoEditor;

.field private mHandleRange:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field protected mPosOffsetY:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mTextView:Landroid/widget/TextView;

.field protected mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mType:I

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 860
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 861
    invoke-virtual {p2}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 841
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPosOffsetY:I

    .line 849
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 850
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 851
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 852
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    .line 853
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    .line 854
    iput-boolean v6, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    .line 862
    iput-object p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    .line 863
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    .line 864
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    .line 866
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v4}, Landroid/widget/OppoEditor;->getSelectHandleWindowStyle()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 868
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 869
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 870
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 871
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 872
    iput-object p3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 873
    iput-object p4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 874
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->updateDrawable()V

    .line 876
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 877
    .local v0, "handleHeight":I
    invoke-virtual {p0, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getTouchOffsetY(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    .line 878
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    .line 879
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 912
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 913
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 914
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 915
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 916
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 920
    .local v4, "now":J
    const/4 v0, 0x0

    .line 921
    .local v0, "i":I
    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 922
    .local v2, "index":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 923
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 925
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 927
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 929
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 931
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 907
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 908
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 909
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 1013
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1014
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 1015
    return-void
.end method

.method public distance(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1031
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected getBasePositionY(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 984
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method protected getBelowTouchOffsetY(I)F
    .locals 2
    .param p1, "handleHeight"    # I

    .prologue
    .line 891
    const v0, -0x41666666    # -0.3f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "hostpotPos"    # [I

    .prologue
    .line 1000
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1001
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    aput v1, p1, v0

    .line 1002
    return-void
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method protected getOffsetY()I
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method protected getPositionY(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getBasePositionY(I)I

    move-result v0

    return v0
.end method

.method protected getSameLineTouchOffsetY(I)F
    .locals 2
    .param p1, "handleHeight"    # I

    .prologue
    .line 896
    const v0, 0x3e99999a    # 0.3f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTouchOffsetY(I)F
    .locals 1
    .param p1, "handleHeight"    # I

    .prologue
    .line 886
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getBelowTouchOffsetY(I)F

    move-result v0

    return v0
.end method

.method protected getViewTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    const-string v0, "OppoHandleView"

    return-object v0
.end method

.method protected getVisibleOffset()I
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    .line 1019
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0, p0}, Landroid/widget/OppoEditor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 1020
    return-void
.end method

.method public inRecRange(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1051
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1052
    .local v2, "height":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int v0, v3, v4

    .line 1053
    .local v0, "containerX":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    div-int/lit8 v4, v2, 0x2

    add-int v1, v3, v4

    .line 1054
    .local v1, "containerY":I
    int-to-float v3, v0

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v1

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1036
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 4

    .prologue
    .line 1059
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 1060
    const/4 v0, 0x1

    .line 1067
    :goto_0
    return v0

    .line 1063
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    const/4 v0, 0x0

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getVisibleOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoEditor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1022
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1085
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1086
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1087
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1028
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->setMeasuredDimension(II)V

    .line 1092
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1133
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/OppoCursorController;->onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1178
    :goto_0
    return v11

    .line 1136
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1138
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/OppoCursorController$OppoHandleView;->startTouchUpFilter(I)V

    .line 1139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 1140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1141
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v9}, Landroid/widget/OppoEditor;->getPositionListenerPostion()J

    move-result-wide v6

    .line 1142
    .local v6, "range":J
    # invokes: Landroid/widget/OppoCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v6, v7}, Landroid/widget/OppoCursorController;->access$300(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 1143
    # invokes: Landroid/widget/OppoCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v6, v7}, Landroid/widget/OppoCursorController;->access$400(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 1144
    iput-boolean v11, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 1148
    .end local v6    # "range":J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 1149
    .local v5, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 1150
    .local v8, "rawY":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v4, v9, v10

    .line 1151
    .local v4, "previousVerticalOffset":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 1154
    .local v0, "currentVerticalOffset":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_1

    .line 1155
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1156
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1162
    :goto_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1163
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v5, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 1164
    .local v1, "newPosX":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 1165
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 1158
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1159
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 1170
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "rawX":F
    .end local v8    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->filterOnTouchUp()V

    .line 1171
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1175
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 934
    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 935
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 936
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v2}, Landroid/widget/OppoEditor;->prepareCursorControllers()V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_4

    move v1, v2

    .line 941
    .local v1, "offsetChanged":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 949
    :cond_2
    if-eqz v1, :cond_3

    .line 950
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->updateSelection(I)V

    .line 953
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 954
    invoke-virtual {p0, p1, v3}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 955
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 956
    iput-boolean v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1    # "offsetChanged":Z
    :cond_4
    move v1, v3

    .line 940
    goto :goto_1
.end method

.method public resetHotspot([I)V
    .locals 4
    .param p1, "hostpotPos"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1005
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1006
    .local v0, "positionWindow":[I
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1007
    aget v1, v0, v3

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 1008
    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v3

    .line 1009
    return-void
.end method

.method public setCursorController(Landroid/widget/OppoCursorController;)V
    .locals 0
    .param p1, "oppoCursorController"    # Landroid/widget/OppoCursorController;

    .prologue
    .line 996
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    .line 997
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1047
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mType:I

    .line 1048
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1075
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/OppoEditor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 1080
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 901
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 902
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 903
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    .line 904
    return-void

    .line 902
    :cond_0
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1096
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 1097
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1129
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 1101
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 1102
    :cond_1
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 1104
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1106
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 1107
    iput p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 1109
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    .line 1112
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1113
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 1114
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    .line 1115
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1116
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1117
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1127
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 1119
    :cond_5
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 1123
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1124
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    goto :goto_1
.end method

.method protected updatePositionXY(IZ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 961
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    .line 981
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 965
    .local v0, "line":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 966
    invoke-virtual {p0, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getPositionY(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 968
    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 969
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    neg-int v3, v3

    if-lt v2, v3, :cond_2

    .line 970
    :cond_1
    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 973
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 974
    .local v1, "position":[I
    if-eqz p2, :cond_3

    .line 975
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 979
    :goto_1
    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 980
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    goto :goto_0

    .line 977
    :cond_3
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    goto :goto_1
.end method

.method protected abstract updateSelection(I)V
.end method
