.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# static fields
.field private static final DEFAULT_DIM_DURATION:I = 0xc8


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBottomBoundLimit:I

.field private mBottomBoundLimitFirstLaunch:I

.field private mBounds:Landroid/graphics/Rect;

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimLayerRecord:I

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayRotation:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFloatStackLandHeight:I

.field private mFloatStackLandWidth:I

.field private mFloatStackPortHeight:I

.field private mFloatStackPortWidth:I

.field private mFullscreen:Z

.field private mInited:Z

.field private mLeftBoundLimit:I

.field mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field private mOrientation:I

.field private mRightBoundLimit:I

.field private mRightBoundLimitFirstLaunch:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mStackBackgroundEnabled:Z

.field mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

.field final mStackId:I

.field private mStacksOffset:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopBoundLimit:I

.field private mTopFloatStack:Lcom/android/server/wm/TaskStack;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 69
    iput-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 88
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 96
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayerRecord:I

    .line 1100
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1101
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1105
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 1106
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 1107
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 1108
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 1109
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 1110
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 1111
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 1112
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 1113
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    .line 1123
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 100
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 102
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 106
    :cond_0
    const/16 v0, 0x791c

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 108
    return-void
.end method

.method private adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;
    .locals 8

    .prologue
    .line 917
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 918
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 919
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 920
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 918
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 922
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 923
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 925
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 926
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFullFloatWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 927
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]adjustStackBackgroundAnimator WinAnimator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 932
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private adjustStackBackgroundLayer()I
    .locals 8

    .prologue
    .line 937
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 938
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, "winNdx":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 939
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 940
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 938
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 943
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 945
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 946
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    .line 947
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]adjustStackBackgroundLayer AnimLayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 952
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return v5

    :cond_4
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private computeBoundaryLimit()V
    .locals 10

    .prologue
    .line 677
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 678
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const/16 v3, 0xdc

    .line 679
    .local v3, "stackBoundsMarginDp":I
    const/16 v4, 0x32

    .line 680
    .local v4, "stacksOffsetDp":I
    const/16 v1, 0x2c

    .line 682
    .local v1, "floatDecorHeightDp":I
    iget v7, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0xa0

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 683
    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    .line 686
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 687
    .local v5, "tempContent":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7, v5}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 688
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 689
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v8, v1

    div-int/lit16 v8, v8, 0xa0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 692
    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    .line 693
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 696
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 697
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 698
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 699
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v7, :cond_2

    .line 712
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_1
    iget v7, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xa0

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 713
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v7, :cond_1

    .line 714
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BMW]computeBoundaryLimit mTopBoundLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mBottomBoundLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mTopFloatStack = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mStacksOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    return-void

    .line 702
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v8, v8, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 706
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    goto :goto_1

    .line 697
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method private computeStackSize(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x0

    .line 724
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 725
    .local v3, "stackSize":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 727
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    const/16 v5, 0x9

    if-ne p1, v5, :cond_9

    .line 729
    :cond_0
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    if-nez v5, :cond_1

    .line 730
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_8

    .line 731
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 735
    :goto_0
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 737
    :cond_1
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 756
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 758
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_6

    .line 759
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 760
    .local v0, "bound":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 763
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v2, v5, v6

    .line 764
    .local v2, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v4, v5, v6

    .line 765
    .local v4, "top":I
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-gt v2, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_3

    .line 767
    :cond_2
    const/4 v2, 0x0

    .line 769
    :cond_3
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-gt v4, v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_5

    .line 771
    :cond_4
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 773
    :cond_5
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 775
    .end local v0    # "bound":Landroid/graphics/Rect;
    .end local v2    # "left":I
    .end local v4    # "top":I
    :cond_6
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_7

    .line 776
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]computeStackSize boxSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_7
    return-object v3

    .line 733
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    goto/16 :goto_0

    .line 741
    :cond_9
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    if-nez v5, :cond_a

    .line 742
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_b

    .line 743
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 747
    :goto_2
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 749
    :cond_a
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 750
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 745
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    goto :goto_2
.end method

.method private deltaRotation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 615
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    sub-int v0, p1, v1

    .line 616
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 617
    :cond_0
    return v0
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 374
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 377
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 378
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 382
    :cond_0
    :goto_0
    return-wide p1

    .line 379
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 380
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private initFloatStackSize(I)Z
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]initFloatStackSize orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-eqz v3, :cond_0

    .line 579
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Floating stack had been inited!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_0
    return v1

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v3, :cond_1

    .line 584
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Multi Window Service not ready!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 589
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Non floating stack did the function initFloatStackSize"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 597
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 598
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 601
    :cond_3
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 604
    :cond_4
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeStackSize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 606
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]initFloatStackSize mBounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 608
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 609
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 610
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    move v1, v2

    .line 611
    goto :goto_0
.end method

.method private needShowStackBackground()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 963
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v8, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 982
    :goto_0
    return v6

    .line 968
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "taskNdx":I
    :goto_1
    if-ltz v0, :cond_5

    .line 969
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 970
    .local v2, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "tokenNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 971
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 972
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_3
    if-ltz v4, :cond_3

    .line 973
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 974
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SurfaceView"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 977
    const/4 v6, 0x1

    goto :goto_0

    .line 972
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 970
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 968
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "tokenNdx":I
    .end local v2    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    move v6, v7

    .line 982
    goto :goto_0
.end method

.method private rotateBounds(III)V
    .locals 8
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 622
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 623
    .local v0, "pivotX":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 624
    .local v1, "pivotY":I
    const/4 v2, 0x0

    .local v2, "tmpX":I
    const/4 v3, 0x0

    .line 625
    .local v3, "tmpY":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 627
    .local v4, "tmpbounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->deltaRotation(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 655
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]rotateBounds exception, rotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDisplayRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 663
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 665
    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 666
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 668
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 670
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 672
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 674
    return-void

    .line 630
    :pswitch_0
    move v2, v1

    .line 631
    sub-int v3, p3, v0

    .line 634
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 635
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 636
    goto :goto_0

    .line 639
    :pswitch_1
    sub-int v2, p2, v0

    .line 640
    sub-int v3, p3, v1

    .line 642
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 643
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 644
    goto :goto_0

    .line 647
    :pswitch_2
    sub-int v2, p2, v1

    .line 648
    move v3, v0

    .line 650
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 651
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 652
    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyStackBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 790
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 792
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    if-ge v1, v2, :cond_0

    .line 793
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 796
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-le v1, v2, :cond_1

    .line 797
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 800
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    if-ge v1, v2, :cond_2

    .line 801
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 804
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-le v1, v2, :cond_3

    .line 805
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 808
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-le v1, v2, :cond_4

    .line 809
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 812
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v1, v2, :cond_5

    .line 813
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 815
    :cond_5
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 244
    if-nez p2, :cond_3

    .line 245
    const/4 v0, 0x0

    .line 259
    .local v0, "stackNdx":I
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTask: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 267
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 270
    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 275
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.camera.CameraLauncher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 276
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->initFloatStackSize(I)Z

    .line 282
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 283
    const/16 v5, 0x791a

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    if-eqz p2, :cond_7

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 284
    return-void

    .line 247
    .end local v0    # "stackNdx":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    .restart local v0    # "stackNdx":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 251
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 256
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 278
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    iget v2, v1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskStack;->initFloatStackSize(I)Z

    goto :goto_1

    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    move v2, v4

    .line 283
    goto :goto_2
.end method

.method public adjustFloatingRect(II)V
    .locals 2
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 831
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    if-eq v1, p2, :cond_1

    .line 832
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 833
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 834
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 835
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 836
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 837
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 840
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 841
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 842
    return-void
.end method

.method animateDimLayers()Z
    .locals 8

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v5, 0x0

    .line 388
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_6

    .line 392
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayerRecord:I

    if-nez v6, :cond_5

    .line 393
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 400
    .local v1, "dimLayer":I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 407
    .local v0, "dimAmount":F
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v4

    .line 408
    .local v4, "targetAlpha":F
    cmpl-float v6, v4, v0

    if-eqz v6, :cond_d

    .line 409
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_7

    .line 410
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 434
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 435
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-nez v6, :cond_f

    .line 439
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_e

    .line 442
    :cond_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_4

    .line 443
    const-string v6, "WindowManager"

    const-string v7, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    :goto_3
    return v5

    .line 395
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v4    # "targetAlpha":F
    :cond_5
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayerRecord:I

    .line 396
    .restart local v1    # "dimLayer":I
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-eq v6, v1, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-ge v6, v1, :cond_0

    .line 397
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto :goto_0

    .line 402
    .end local v1    # "dimLayer":I
    :cond_6
    iput v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayerRecord:I

    .line 404
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, -0x1

    .line 405
    .restart local v1    # "dimLayer":I
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_1

    .line 412
    .restart local v4    # "targetAlpha":F
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 415
    .local v2, "duration":J
    :cond_8
    cmpl-float v6, v4, v0

    if-lez v6, :cond_9

    .line 416
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBehindFadeDuration(J)J

    move-result-wide v2

    .line 420
    :cond_9
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eq v6, v7, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_c

    .line 423
    :cond_b
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_1

    .line 424
    const-string v6, "WindowManager"

    const-string v7, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 428
    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto/16 :goto_2

    .line 431
    .end local v2    # "duration":J
    :cond_d
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-eq v6, v1, :cond_1

    .line 432
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_2

    .line 447
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->show()V

    goto/16 :goto_3

    .line 450
    :cond_f
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v5

    goto/16 :goto_3
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 321
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 322
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 324
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-virtual {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isStackBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 329
    new-instance v0, Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/StackBackgroundSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->prepareSurface()V

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 334
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 527
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v0, v0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 532
    :cond_0
    return-void
.end method

.method detachDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 337
    const/16 v6, 0x791e

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(II)I

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 341
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 342
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    .line 343
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 344
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 345
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 346
    const/4 v3, 0x1

    .line 344
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 342
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 340
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 350
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    .line 351
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 354
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 355
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 356
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 357
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 359
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v6, :cond_4

    .line 361
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBackgroundSurface;->destroySurface()V

    .line 362
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 365
    :cond_4
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 366
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 535
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mStackId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDeferDetach="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDimLayer:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 547
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDimWinAnimator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 549
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 550
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 551
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 554
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 555
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 556
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 557
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 552
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 561
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 565
    :cond_4
    return-void
.end method

.method public dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 855
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FLOATING LAYOUT POLICY INFO:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplayRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 857
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Launch Mode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 862
    :cond_0
    const-string v0, "Portrait"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    :goto_0
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 867
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 868
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackPortWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 869
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackPortHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 870
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackLandWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 871
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackLandHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 872
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 873
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBottomBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRightBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 875
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeftBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 876
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStacksOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 877
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFloatStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 880
    return-void

    .line 864
    :cond_1
    const-string v0, "Landscape"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getBottomWindow()Lcom/android/server/wm/WindowState;
    .locals 9

    .prologue
    .line 1081
    const/4 v3, 0x0

    .line 1082
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1083
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1084
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    .local v2, "tokenNdx":I
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1085
    iget-object v6, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 1086
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    .local v5, "winNdx":I
    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1087
    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1088
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1

    .line 1089
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW]getBottomWindow win:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v4, v3

    .line 1095
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "tokenNdx":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .local v4, "win":Lcom/android/server/wm/WindowState;
    :goto_2
    return-object v4

    .line 1086
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "tokenNdx":I
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1084
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "tokenNdx":I
    .end local v5    # "winNdx":I
    :cond_3
    move-object v4, v3

    .line 1095
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    goto :goto_2
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getStackBounds(III)Landroid/graphics/Rect;
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 819
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    if-ne v0, p1, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 826
    :goto_0
    return-object v0

    .line 824
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->rotateBounds(III)V

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getStackOffsets([I)V
    .locals 2
    .param p1, "offsets"    # [I

    .prologue
    .line 846
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offsets must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    aput v1, p1, v0

    .line 850
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    aput v1, p1, v0

    .line 851
    return-void
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method isAnimating()Z
    .locals 7

    .prologue
    .line 222
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 223
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 224
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 226
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 227
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 228
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v6, :cond_1

    .line 229
    :cond_0
    const/4 v6, 0x1

    .line 234
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_3
    return v6

    .line 226
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 224
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 222
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 297
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToTop: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 291
    return-void
.end method

.method onWinCropChanged(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 1033
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1034
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceCropChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", crop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1042
    :cond_1
    :goto_0
    return-void

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackBackgroundSurface;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method onWinHiden(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1068
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceHiden winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1075
    :cond_1
    :goto_0
    return-void

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    goto :goto_0
.end method

.method onWinMatrixChanged(Lcom/android/server/wm/WindowStateAnimator;FFFF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dsdy"    # F
    .param p5, "dtdy"    # F

    .prologue
    .line 1019
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceMatrixChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dsdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dtdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dsdy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dtdy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1029
    :cond_1
    :goto_0
    return-void

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    goto :goto_0
.end method

.method onWinPositionChanged(Lcom/android/server/wm/WindowStateAnimator;FF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 989
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 990
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfacePositionChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 996
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    goto :goto_0
.end method

.method onWinShown(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1047
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceShown winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1063
    :cond_1
    :goto_0
    return-void

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    goto :goto_0
.end method

.method onWinSizeChanged(Lcom/android/server/wm/WindowStateAnimator;II)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1004
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceSizeChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1013
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    goto :goto_0
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 313
    :cond_2
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 371
    return-void
.end method

.method resetDimmingTag()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 458
    return-void
.end method

.method resetStackBackgroundAnimator()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    .line 959
    :cond_0
    return-void
.end method

.method resizeWindows()V
    .locals 11

    .prologue
    .line 119
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_2

    const/4 v4, 0x1

    .line 121
    .local v4, "underStatusBar":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 122
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_5

    .line 123
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 124
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 126
    .local v7, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "winNdx":I
    :goto_3
    if-ltz v6, :cond_3

    .line 127
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 128
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 129
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setBounds: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    iput-boolean v4, v5, Lcom/android/server/wm/WindowState;->mUnderStatusBar:Z

    .line 126
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 119
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "taskNdx":I
    .end local v4    # "underStatusBar":Z
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v3    # "taskNdx":I
    .restart local v4    # "underStatusBar":Z
    .restart local v6    # "winNdx":I
    .restart local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 122
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 137
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    return-void
.end method

.method resizeWindowsInsetBounds()V
    .locals 11

    .prologue
    .line 142
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_2

    const/4 v4, 0x1

    .line 144
    .local v4, "underStatusBar":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 145
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_5

    .line 146
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 147
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 149
    .local v7, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "winNdx":I
    :goto_3
    if-ltz v6, :cond_3

    .line 150
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 151
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v8, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setBounds2: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    iput-boolean v4, v5, Lcom/android/server/wm/WindowState;->mUnderStatusBar:Z

    .line 149
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 142
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "taskNdx":I
    .end local v4    # "underStatusBar":Z
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 147
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v3    # "taskNdx":I
    .restart local v4    # "underStatusBar":Z
    .restart local v6    # "winNdx":I
    .restart local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 145
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 160
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 501
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 502
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 506
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 509
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 166
    .local v0, "oldFullscreen":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BMW]setBounds bound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "setBounds"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v0, v1, :cond_3

    .line 181
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBackgroundSurface;->setBounds(Landroid/graphics/Rect;)V

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resizeWindowsInsetBounds()V

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setDimmingTag()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 462
    return-void
.end method

.method setStackBackground(Z)V
    .locals 6
    .param p1, "forceShow"    # Z

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->needShowStackBackground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;

    move-result-object v2

    .line 890
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]setStackBackground winAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_2
    if-nez v2, :cond_3

    .line 892
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    goto :goto_0

    .line 895
    :cond_3
    const/4 v1, 0x0

    .line 896
    .local v1, "needUpdata":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eq v2, v3, :cond_5

    .line 898
    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 899
    const/4 v1, 0x1

    .line 901
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundLayer()I

    move-result v0

    .line 902
    .local v0, "animLayer":I
    if-gez v0, :cond_6

    .line 903
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 905
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setLayer(I)V

    .line 906
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_7

    .line 907
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]setStackBackground mStackBackgroundAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animLayer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_7
    if-eqz p1, :cond_0

    .line 911
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    goto :goto_0
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 480
    .local v0, "existingDimWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v1, v2, :cond_1

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 485
    :cond_1
    return-void
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayerRecord:I

    .line 496
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 498
    :cond_1
    return-void
.end method

.method switchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 512
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 513
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 514
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 515
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v2, v2, -0x1

    .line 513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void
.end method

.method testDimmingTag()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 215
    :cond_0
    return-void
.end method
