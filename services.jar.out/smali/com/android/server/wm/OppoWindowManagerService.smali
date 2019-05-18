.class public Lcom/android/server/wm/OppoWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "OppoWindowManagerService.java"

# interfaces
.implements Landroid/view/IOppoWindowManager;


# static fields
.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoWindowManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 99
    return-void
.end method

.method private convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "rot"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I

    .prologue
    .line 685
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 686
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 687
    .local v0, "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 688
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 689
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 690
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 705
    .end local v0    # "tmp":I
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 692
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 693
    .restart local v0    # "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 694
    sub-int v1, p4, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 695
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 696
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 697
    sub-int v1, p3, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 698
    .end local v0    # "tmp":I
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 699
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 700
    .restart local v0    # "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 701
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 702
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 703
    sub-int v1, p4, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private getActiveAudioPids()Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 315
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "get_pid"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "pids":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 319
    .end local v1    # "pids":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method checkDrawnWindowsLocked()V
    .locals 4

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_3

    .line 712
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 713
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_0

    .line 714
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 711
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 716
    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_2

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 718
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/OppoWindowManagerPolicy;->doesNeedWaitingKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 724
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 725
    sget-boolean v2, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v2, :cond_4

    const-string v2, "OppoWindowManagerService"

    const-string v3, "oppo checkDrawnWindowsLocked All windows drawn!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 727
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 730
    :cond_5
    invoke-super {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 731
    return-void
.end method

.method public checkIsFloatWindowForbidden(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 364
    invoke-static {p1, p2}, Landroid/view/OppoWindowManagerImplHelper;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    .line 401
    .local v1, "windowManagerInternal":Landroid/view/WindowManagerInternal;
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 402
    .local v0, "focusedWindow":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v1, v0, p1}, Landroid/view/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 406
    .end local v0    # "focusedWindow":Landroid/os/IBinder;
    .end local v1    # "windowManagerInternal":Landroid/view/WindowManagerInternal;
    :cond_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 324
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/android/server/wm/OppoWindowManagerService;->getActiveAudioPids()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "pids":Ljava/lang/String;
    if-nez v3, :cond_0

    move v7, v8

    .line 359
    .end local v3    # "pids":Ljava/lang/String;
    :goto_0
    return v7

    .line 330
    .restart local v3    # "pids":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    .line 331
    goto :goto_0

    .line 334
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 335
    .local v2, "list":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_4

    .line 336
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 337
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 338
    .local v5, "screenWidth":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 340
    .local v4, "screenHeight":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    .line 341
    .local v6, "size":I
    if-lez v6, :cond_3

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 343
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_2

    .line 344
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_2

    move v7, v9

    .line 346
    goto :goto_0

    .line 342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    .end local v1    # "i":I
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_4

    .line 352
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_4

    move v7, v9

    .line 354
    goto/16 :goto_0

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "list":Lcom/android/server/wm/WindowList;
    .end local v3    # "pids":Ljava/lang/String;
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    .end local v6    # "size":I
    :cond_4
    move v7, v8

    .line 359
    goto/16 :goto_0
.end method

.method public isInputShow()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotatingLw()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "mScreenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 282
    :cond_0
    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 285
    :cond_1
    return v1
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->isStatusBarVisible()Z

    move-result v0

    return v0
.end method

.method public isWindowShownForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 737
    iget-object v6, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 738
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/OppoWindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 739
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 740
    iget-object v5, p0, Lcom/android/server/wm/OppoWindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 741
    .local v4, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 742
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 743
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget v5, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v5, p1, :cond_0

    .line 744
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_0

    .line 748
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v5, :cond_0

    .line 749
    const/4 v5, 0x1

    monitor-exit v6

    .line 756
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :goto_2
    return v5

    .line 741
    .restart local v2    # "w":Lcom/android/server/wm/WindowState;
    .restart local v3    # "winNdx":I
    .restart local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 739
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :cond_2
    monitor-exit v6

    .line 756
    const/4 v5, 0x0

    goto :goto_2

    .line 755
    .end local v0    # "displayNdx":I
    .end local v1    # "numDisplays":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 241
    :pswitch_0
    invoke-super/range {p0 .. p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_0
    return v11

    .line 109
    :pswitch_1
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->showStatusBar()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v11, 0x1

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, "arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->rm_add_StatusBarRunnable(I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v11, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "arg0":I
    :pswitch_3
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isStatusBarVisible()Z

    move-result v6

    .line 125
    .local v6, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v6, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v11, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 132
    .end local v6    # "result":Z
    :pswitch_4
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isInputShow()Z

    move-result v6

    .line 134
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v6, :cond_1

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v11, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 139
    .end local v6    # "result":Z
    :pswitch_5
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isFullScreen()Z

    move-result v6

    .line 141
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v6, :cond_2

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v11, 0x1

    goto :goto_0

    .line 142
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 148
    .end local v6    # "result":Z
    :pswitch_6
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 151
    .local v9, "type":I
    invoke-virtual {p0, v5, v9}, Lcom/android/server/wm/OppoWindowManagerService;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v6

    .line 152
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v6, :cond_3

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v11, 0x1

    goto :goto_0

    .line 153
    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    .line 160
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "result":Z
    .end local v9    # "type":I
    :pswitch_7
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isRotatingLw()Z

    move-result v6

    .line 162
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v6, :cond_4

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 163
    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    .line 169
    .end local v6    # "result":Z
    :pswitch_8
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    .line 172
    sget-object v11, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 176
    .local v7, "spec":Landroid/view/MagnificationSpec;
    :goto_6
    invoke-virtual {p0, v7}, Lcom/android/server/wm/OppoWindowManagerService;->setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 174
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_6

    .line 183
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    :pswitch_9
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    .line 186
    sget-object v11, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 190
    .local v3, "frame":Landroid/graphics/Rect;
    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/server/wm/OppoWindowManagerService;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v3, :cond_7

    .line 193
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v11, 0x1

    invoke-virtual {v3, p3, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 188
    .end local v3    # "frame":Landroid/graphics/Rect;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "frame":Landroid/graphics/Rect;
    goto :goto_7

    .line 196
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 204
    .end local v3    # "frame":Landroid/graphics/Rect;
    :pswitch_a
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->requestDismissKeyguard()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 212
    :pswitch_b
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/OppoWindowManagerService;->requestKeyguard(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 221
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_c
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 223
    .local v10, "uid":I
    invoke-virtual {p0, v10}, Lcom/android/server/wm/OppoWindowManagerService;->isWindowShownForUid(I)Z

    move-result v6

    .line 224
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v6, :cond_8

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 225
    :cond_8
    const/4 v11, 0x0

    goto :goto_9

    .line 231
    .end local v6    # "result":Z
    .end local v10    # "uid":I
    :pswitch_d
    const-string v11, "android.view.IWindowManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/IColorKeyguardSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IColorKeyguardSessionCallback;

    move-result-object v1

    .line 233
    .local v1, "callback":Landroid/app/IColorKeyguardSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 234
    .local v8, "token":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "module":Ljava/lang/String;
    invoke-virtual {p0, v1, v8, v4}, Lcom/android/server/wm/OppoWindowManagerService;->openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v6

    .line 236
    .restart local v6    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v6, :cond_9

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 237
    :cond_9
    const/4 v11, 0x0

    goto :goto_a

    .line 106
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Landroid/app/IColorKeyguardSessionCallback;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "module"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/OppoWindowManagerPolicy;->openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDismissKeyguard()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->requestDismissKeyguard()V

    .line 251
    :cond_0
    return-void
.end method

.method public requestKeyguard(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/OppoWindowManagerPolicy;->requestKeyguard(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/OppoWindowManagerPolicy;->rm_add_StatusBarRunnable(I)V

    .line 296
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;
    .locals 44
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force565"    # Z

    .prologue
    .line 422
    const-string v5, "android.permission.READ_FRAME_BUFFER"

    const-string v6, "screenshotApplications()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/OppoWindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 424
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OppoWindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v25

    .line 427
    .local v25, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v25, :cond_2

    .line 428
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_1

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": returning null. No Display for displayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    const/16 v33, 0x0

    .line 677
    :goto_0
    return-object v33

    .line 432
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v26

    .line 433
    .local v26, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v27, v0

    .line 434
    .local v27, "dw":I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v24, v0

    .line 435
    .local v24, "dh":I
    if-eqz v27, :cond_3

    if-nez v24, :cond_5

    .line 436
    :cond_3
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_4

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": returning null. logical widthxheight="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_4
    const/16 v33, 0x0

    goto :goto_0

    .line 440
    :cond_5
    const/4 v11, 0x0

    .line 442
    .local v11, "bm":Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 443
    .local v32, "maxLayer":I
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v29, "frame":Landroid/graphics/Rect;
    new-instance v39, Landroid/graphics/Rect;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Rect;-><init>()V

    .line 447
    .local v39, "stackBounds":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 451
    .local v10, "rot":I
    if-nez p1, :cond_8

    .line 452
    const/16 v38, 0x1

    .line 453
    .local v38, "screenshotReady":Z
    const/4 v7, 0x0

    .line 459
    .local v7, "minLayer":I
    :goto_1
    const/16 v34, 0x0

    .line 460
    .local v34, "retryCount":I
    const/16 v22, 0x0

    .line 462
    .local v22, "appWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v5}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_9

    const/16 v21, 0x1

    .line 467
    .local v21, "appIsImTarget":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    move/from16 v19, v0

    .local v19, "aboveAppLayer":I
    move/from16 v35, v34

    .line 471
    .end local v34    # "retryCount":I
    .local v35, "retryCount":I
    :goto_3
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "retryCount":I
    .restart local v34    # "retryCount":I
    if-lez v35, :cond_6

    .line 473
    const-wide/16 v14, 0x64

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/OppoWindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 479
    const/16 v22, 0x0

    .line 480
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v42

    .line 483
    .local v42, "windows":Lcom/android/server/wm/WindowList;
    const/16 v31, 0x0

    .line 485
    .local v31, "mStatusBarHeight":I
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v30, v5, -0x1

    .local v30, "i":I
    :goto_5
    if-ltz v30, :cond_13

    .line 486
    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/wm/WindowState;

    .line 487
    .local v43, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v5, :cond_a

    .line 485
    :cond_7
    :goto_6
    add-int/lit8 v30, v30, -0x1

    goto :goto_5

    .line 455
    .end local v7    # "minLayer":I
    .end local v19    # "aboveAppLayer":I
    .end local v21    # "appIsImTarget":Z
    .end local v22    # "appWin":Lcom/android/server/wm/WindowState;
    .end local v30    # "i":I
    .end local v31    # "mStatusBarHeight":I
    .end local v34    # "retryCount":I
    .end local v38    # "screenshotReady":Z
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    .end local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_8
    const/16 v38, 0x0

    .line 456
    .restart local v38    # "screenshotReady":Z
    const v7, 0x7fffffff

    .restart local v7    # "minLayer":I
    goto :goto_1

    .line 462
    .restart local v22    # "appWin":Lcom/android/server/wm/WindowState;
    .restart local v34    # "retryCount":I
    :cond_9
    const/16 v21, 0x0

    goto :goto_2

    .line 492
    .restart local v19    # "aboveAppLayer":I
    .restart local v21    # "appIsImTarget":Z
    .restart local v30    # "i":I
    .restart local v31    # "mStatusBarHeight":I
    .restart local v42    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "StatusBar"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 493
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    sub-int v31, v5, v6

    .line 494
    goto :goto_6

    .line 497
    :cond_b
    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 500
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_11

    .line 501
    if-eqz v21, :cond_7

    .line 517
    :cond_c
    :goto_7
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v41, v0

    .line 518
    .local v41, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v0, v32

    if-ge v0, v5, :cond_d

    .line 519
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v32, v0

    .line 521
    :cond_d
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    if-le v7, v5, :cond_e

    .line 522
    move-object/from16 v0, v41

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 528
    :cond_e
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_10

    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_10

    .line 535
    move/from16 v36, v27

    .line 536
    .local v36, "right":I
    move/from16 v23, v24

    .line 537
    .local v23, "bottom":I
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v5, v0, v1, v6}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v23

    .line 542
    :goto_8
    move/from16 v0, v31

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    .line 543
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    .line 545
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v36

    move/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 546
    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 547
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 550
    .end local v23    # "bottom":I
    .end local v36    # "right":I
    :cond_10
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_7

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_7

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 552
    const/16 v38, 0x1

    goto/16 :goto_6

    .line 504
    .end local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_11
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_c

    .line 506
    if-eqz p1, :cond_c

    .line 507
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_7

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_7

    .line 512
    move-object/from16 v22, v43

    goto/16 :goto_7

    .line 540
    .restart local v23    # "bottom":I
    .restart local v36    # "right":I
    .restart local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v5, v0, v1, v6}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v36

    goto :goto_8

    .line 556
    .end local v23    # "bottom":I
    .end local v36    # "right":I
    .end local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    .end local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_13
    if-eqz p1, :cond_15

    if-nez v22, :cond_15

    .line 558
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_14

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot: Couldn\'t find a surface matching "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_14
    const/16 v33, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 647
    .end local v30    # "i":I
    .end local v31    # "mStatusBarHeight":I
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 563
    .restart local v30    # "i":I
    .restart local v31    # "mStatusBarHeight":I
    .restart local v42    # "windows":Lcom/android/server/wm/WindowList;
    :cond_15
    if-nez v38, :cond_19

    .line 564
    const/4 v5, 0x3

    move/from16 v0, v34

    if-le v0, v5, :cond_17

    .line 565
    :try_start_2
    const-string v6, "OppoWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot max retries "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " appWin="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v22, :cond_16

    const-string v5, "null"

    :goto_9
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v33, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 565
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " drawState="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 572
    :cond_17
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_18

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot: No image ready for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " drawState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_18
    monitor-exit v13

    move/from16 v35, v34

    .end local v34    # "retryCount":I
    .restart local v35    # "retryCount":I
    goto/16 :goto_3

    .line 582
    .end local v35    # "retryCount":I
    .restart local v34    # "retryCount":I
    :cond_19
    if-nez v32, :cond_1b

    .line 583
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_1a

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": returning null maxLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1a
    const/16 v33, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 589
    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 593
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 596
    .local v4, "crop":Landroid/graphics/Rect;
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    .line 600
    mul-int v5, v24, p3

    div-int p4, v5, v27

    .line 609
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/OppoWindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 611
    const/4 v5, 0x1

    if-eq v10, v5, :cond_1c

    const/4 v5, 0x3

    if-ne v10, v5, :cond_1d

    .line 612
    :cond_1c
    const/4 v5, 0x1

    if-ne v10, v5, :cond_1f

    const/4 v10, 0x3

    .line 616
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-direct {v0, v4, v10, v1, v2}, Lcom/android/server/wm/OppoWindowManagerService;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 617
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_20

    .line 618
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " appToken="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/16 v30, 0x0

    :goto_c
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_20

    .line 621
    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/wm/WindowState;

    .line 622
    .local v40, "win":Lcom/android/server/wm/WindowState;
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " animLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " surfaceLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v30, v30, 0x1

    goto :goto_c

    .line 605
    .end local v40    # "win":Lcom/android/server/wm/WindowState;
    :cond_1e
    mul-int v5, v27, p4

    div-int p3, v5, v24

    goto/16 :goto_a

    .line 612
    :cond_1f
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 628
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v37

    .line 630
    .local v37, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v37, :cond_22

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v9, 0x1

    .line 632
    .local v9, "inRotation":Z
    :goto_d
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_21

    if-eqz v9, :cond_21

    const-string v5, "OppoWindowManagerService"

    const-string v6, "Taking screenshot while rotating"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_21
    add-int/lit8 v8, v32, 0x5

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v4 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 642
    if-nez v11, :cond_23

    .line 643
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot failure taking screenshot for ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") to layer "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v33, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 630
    .end local v9    # "inRotation":Z
    :cond_22
    const/4 v9, 0x0

    goto :goto_d

    .line 647
    .restart local v9    # "inRotation":Z
    :cond_23
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_25

    .line 654
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v12, v5, [I

    .line 655
    .local v12, "buffer":[I
    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 656
    const/16 v20, 0x1

    .line 657
    .local v20, "allBlack":Z
    const/4 v5, 0x0

    aget v28, v12, v5

    .line 658
    .local v28, "firstColor":I
    const/16 v30, 0x0

    :goto_e
    array-length v5, v12

    move/from16 v0, v30

    if-ge v0, v5, :cond_24

    .line 659
    aget v5, v12, v30

    move/from16 v0, v28

    if-eq v5, v0, :cond_26

    .line 660
    const/16 v20, 0x0

    .line 664
    :cond_24
    if-eqz v20, :cond_25

    .line 665
    const-string v6, "OppoWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " was monochrome("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")! mSurfaceLayer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v22, :cond_27

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_f
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " minLayer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " maxLayer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v12    # "buffer":[I
    .end local v20    # "allBlack":Z
    .end local v28    # "firstColor":I
    :cond_25
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 676
    .local v33, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 658
    .end local v33    # "ret":Landroid/graphics/Bitmap;
    .restart local v12    # "buffer":[I
    .restart local v20    # "allBlack":Z
    .restart local v28    # "firstColor":I
    :cond_26
    add-int/lit8 v30, v30, 0x1

    goto :goto_e

    .line 665
    :cond_27
    const-string v5, "null"

    goto :goto_f

    .line 474
    .end local v4    # "crop":Landroid/graphics/Rect;
    .end local v9    # "inRotation":Z
    .end local v12    # "buffer":[I
    .end local v20    # "allBlack":Z
    .end local v28    # "firstColor":I
    .end local v30    # "i":I
    .end local v31    # "mStatusBarHeight":I
    .end local v37    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "transferFrom"    # Landroid/os/IBinder;
    .param p11, "createIfNeeded"    # Z

    .prologue
    .line 373
    const-string v0, "com.oppo.launcher"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-super/range {v0 .. v11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    const-class v1, Landroid/view/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    .line 391
    .local v0, "windowManagerInternal":Landroid/view/WindowManagerInternal;
    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 393
    .end local v0    # "windowManagerInternal":Landroid/view/WindowManagerInternal;
    :cond_0
    return-void
.end method

.method public showStatusBar()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->showStatusBar()V

    .line 291
    return-void
.end method
