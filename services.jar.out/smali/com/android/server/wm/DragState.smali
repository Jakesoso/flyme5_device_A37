.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplay:Landroid/view/Display;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mFlags:I

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mLocalWin:Landroid/os/IBinder;

.field mMzInitHeight:F

.field mMzInitWidth:F

.field mMzInitX:F

.field mMzInitY:F

.field mMzOnTouching:Z

.field mMzStatusBarNfcEnabled:Z

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpRegion:Landroid/graphics/Region;

.field mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 71
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 72
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 73
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private flymeNotifyDropLw(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "touchedWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mMzStatusBarNfcEnabled:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_10

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    :cond_10
    return-void
.end method

.method private flymeNotifyMoveLw(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "touchedWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->flymeNotifyDropLw(Lcom/android/server/wm/WindowState;)V

    :cond_9
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .registers 14
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 393
    const/4 v5, 0x0

    .line 394
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    .line 395
    .local v7, "x":I
    float-to-int v8, p2

    .line 397
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v6

    .line 398
    .local v6, "windows":Lcom/android/server/wm/WindowList;
    if-nez v6, :cond_f

    .line 399
    const/4 v9, 0x0

    .line 426
    :goto_e
    return-object v9

    .line 401
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 402
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_40

    .line 403
    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 404
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 405
    .local v2, "flags":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_2a

    .line 402
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 409
    :cond_2a
    and-int/lit8 v9, v2, 0x10

    if-nez v9, :cond_27

    .line 414
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 416
    and-int/lit8 v4, v2, 0x28

    .line 419
    .local v4, "touchFlags":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-nez v9, :cond_3f

    if-nez v4, :cond_27

    .line 421
    :cond_3f
    move-object v5, v1

    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "flags":I
    .end local v4    # "touchFlags":I
    :cond_40
    move-object v9, v5

    .line 426
    goto :goto_e
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .registers 15
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "result"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    .line 433
    .local v1, "winX":F
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    .line 434
    .local v2, "winY":F
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_18

    .line 435
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v0

    .line 436
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v0

    :cond_18
    move v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 438
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .registers 16
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .prologue
    const/4 v4, 0x0

    .line 213
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2e

    .line 214
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 215
    .local v10, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v10, v0, :cond_2e

    .line 216
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v0, :cond_2d

    .line 217
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not dispatching local DRAG_STARTED to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v10    # "winBinder":Landroid/os/IBinder;
    :cond_2d
    :goto_2d
    return-void

    .line 223
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->mzSendDragStartedLw()V

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 224
    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 227
    .local v9, "event":Landroid/view/DragEvent;
    :try_start_46
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_50} :catch_5e
    .catchall {:try_start_46 .. :try_end_50} :catchall_85

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_2d

    .line 235
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2d

    .line 230
    :catch_5e
    move-exception v8

    .line 231
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_5f
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-start window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_85

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_2d

    .line 235
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_2d

    .line 234
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_85
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_93

    .line 235
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    :cond_93
    throw v0
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 261
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v0, :cond_d

    .line 262
    const-string v0, "WindowManager"

    const-string v2, "broadcasting DRAG_ENDED"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_d
    const/4 v0, 0x4

    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 266
    .local v8, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 268
    .local v10, "ws":Lcom/android/server/wm/WindowState;
    :try_start_29
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_1d

    .line 269
    :catch_2f
    move-exception v7

    .line 270
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-end window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 273
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "ws":Lcom/android/server/wm/WindowState;
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 275
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 276
    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .registers 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :goto_a
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 185
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 186
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 188
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v3, :cond_40

    .line 189
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_40
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 193
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_61

    .line 194
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 195
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    if-ge v1, v0, :cond_61

    .line 196
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 184
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5f
    const/4 v3, 0x0

    goto :goto_a

    .line 199
    .restart local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_61
    return-void
.end method

.method endDragLw()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 288
    return-void
.end method

.method getDragLayerLw()I
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected mzBroadcastDragCanceledLw()V
    .registers 1

    .prologue
    return-void
.end method

.method public mzCancelDragLw()V
    .registers 1

    .prologue
    return-void
.end method

.method public mzEndDragLwAnimation()V
    .registers 1

    .prologue
    return-void
.end method

.method public mzIsDragAnimation()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public mzRegisterReceivers()V
    .registers 1

    .prologue
    return-void
.end method

.method protected mzSendDragStartedLw()V
    .registers 1

    .prologue
    return-void
.end method

.method public mzSetInitXAndY(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iput p1, p0, Lcom/android/server/wm/DragState;->mMzInitX:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mMzInitY:F

    return-void
.end method

.method public mzSetWidthAndHeight(FF)V
    .registers 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    iput p1, p0, Lcom/android/server/wm/DragState;->mMzInitWidth:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mMzInitHeight:F

    return-void
.end method

.method public mzUnRegisterReceivers()V
    .registers 1

    .prologue
    return-void
.end method

.method notifyDropLw(FF)Z
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->flymeNotifyDropLw(Lcom/android/server/wm/WindowState;)V

    if-nez v0, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    const/4 v1, 0x1

    :cond_d
    :goto_d
    return v1

    :cond_e
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v1, :cond_2a

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending DROP to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 369
    .local v11, "myPid":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 370
    .local v12, "token":Landroid/os/IBinder;
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 373
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_40
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 378
    .local v10, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_61} :catch_6e
    .catchall {:try_start_40 .. :try_end_61} :catchall_93

    .line 383
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v1, :cond_6a

    .line 384
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 387
    :cond_6a
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 388
    const/4 v1, 0x0

    goto :goto_d

    .line 379
    .end local v10    # "msg":Landroid/os/Message;
    :catch_6e
    move-exception v8

    .line 380
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_6f
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send drop notification to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_93

    .line 381
    const/4 v1, 0x1

    .line 383
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_d

    .line 384
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto/16 :goto_d

    .line 383
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_93
    move-exception v1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v2, :cond_9d

    .line 384
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    :cond_9d
    throw v1
.end method

.method notifyMoveLw(FF)V
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 294
    .local v10, "myPid":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION notifyMoveLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_f
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 298
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 299
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_61

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DRAG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": pos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_12 .. :try_end_61} :catchall_9c

    .line 303
    :cond_61
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_6f

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION notifyMoveLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_6f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 310
    .local v12, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v12, :cond_ac

    .line 311
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v0, :cond_9b

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No touched win at x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_9b
    :goto_9b
    return-void

    .line 303
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catchall_9c
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 304
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_ab

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION notifyMoveLw"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    throw v0

    .line 314
    .restart local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_ac
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_bd

    .line 315
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 316
    .local v11, "touchedBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v11, v0, :cond_bd

    .line 319
    const/4 v12, 0x0

    .line 324
    .end local v11    # "touchedBinder":Landroid/os/IBinder;
    :cond_bd
    invoke-direct {p0, v12}, Lcom/android/server/wm/DragState;->flymeNotifyMoveLw(Lcom/android/server/wm/WindowState;)V

    :try_start_c0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_105

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_105

    .line 325
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v0, :cond_e6

    .line 326
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending DRAG_EXITED to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_e6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 331
    .local v9, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v0, :cond_105

    .line 333
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 336
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_105
    if-eqz v12, :cond_121

    .line 340
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v12

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 342
    .restart local v9    # "evt":Landroid/view/DragEvent;
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 343
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v0, :cond_121

    .line 344
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_121} :catch_125

    .line 350
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_121
    :goto_121
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    goto/16 :goto_9b

    .line 347
    :catch_125
    move-exception v8

    .line 348
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    const-string v1, "can\'t send drag notification to windows"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121
.end method

.method register(Landroid/view/Display;)V
    .registers 14
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x1dcd65000L

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    .line 95
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_15

    const-string v2, "WindowManager"

    const-string v3, "registering drag input channel"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_21

    .line 97
    const-string v2, "WindowManager"

    const-string v3, "Duplicate register of drag input channel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_20
    return-void

    .line 99
    :cond_21
    const-string v2, "drag"

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 100
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 101
    aget-object v2, v0, v7

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 102
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 103
    new-instance v2, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 106
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v8}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 107
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 111
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v8, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 120
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 122
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 123
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 124
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 127
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 134
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 137
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 139
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 142
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_ee

    .line 143
    const-string v2, "WindowManager"

    const-string v3, "Pausing rotation during drag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_ee
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    goto/16 :goto_20
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 81
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 83
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 84
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 85
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 87
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 246
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v2, :cond_18

    .line 248
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 249
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_a

    .line 258
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_18
    :goto_18
    return-void

    .line 253
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_19
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_35

    .line 254
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need to send DRAG_STARTED to new window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_35
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    goto :goto_18
.end method

.method unregister()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v0, :cond_c

    const-string v0, "WindowManager"

    const-string v1, "unregistering drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_18

    .line 152
    const-string v0, "WindowManager"

    const-string v1, "Unregister of nonexistent drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_17
    return-void

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    .line 156
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 159
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 160
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 162
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 163
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 166
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_45

    .line 167
    const-string v0, "WindowManager"

    const-string v1, "Resuming rotation after drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    goto :goto_17
.end method
