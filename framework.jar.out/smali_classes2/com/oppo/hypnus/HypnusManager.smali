.class public Lcom/oppo/hypnus/HypnusManager;
.super Ljava/lang/Object;
.source "HypnusManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HypnusManager"

.field private static final mMaxVelocity:I = 0x5dc0

.field private static final mMinDiffX:I = 0x96

.field private static final mMinVelocity:I = 0x96

.field private static mVelocityTracker:Landroid/view/VelocityTracker;

.field private static sService:Lcom/android/internal/app/IHypnusService;


# instance fields
.field private startX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oppo/hypnus/HypnusManager;->DEBUG:Z

    .line 35
    sput-object v1, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/hypnus/HypnusManager;->startX:I

    .line 41
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    if-nez v1, :cond_0

    .line 42
    const-string/jumbo v1, "hypnus"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IHypnusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHypnusService;

    move-result-object v1

    sput-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    .line 45
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method public static hypnusSetBurst(III)V
    .locals 3
    .param p0, "tid"    # I
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 70
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    if-eqz v1, :cond_1

    .line 72
    :try_start_0
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IHypnusService;->hypnusSetBurst(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-boolean v1, Lcom/oppo/hypnus/HypnusManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "HypnusManager"

    const-string/jumbo v2, "hypnus service is not ready yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hypnusManagerSendFling(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .prologue
    const/16 v8, 0x96

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 98
    .local v0, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 99
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 100
    .local v3, "pointerId":I
    const/4 v1, 0x0

    .line 102
    .local v1, "diffX":I
    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/hypnus/HypnusManager;->startX:I

    .line 105
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    sput-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    :goto_1
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 115
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 111
    :cond_1
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 120
    :pswitch_2
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 122
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 126
    :pswitch_3
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 128
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 130
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    const v7, 0x46bb8000    # 24000.0f

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 131
    sget-object v5, Lcom/oppo/hypnus/HypnusManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 133
    .local v2, "initialVelocity":I
    if-le v2, v8, :cond_0

    .line 134
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/oppo/hypnus/HypnusManager;->startX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 135
    sget-boolean v5, Lcom/oppo/hypnus/HypnusManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 136
    const-string v5, "Hypnus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diffX is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    int-to-float v5, p2

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v2

    mul-float/2addr v6, v7

    const/high16 v7, 0x43160000    # 150.0f

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int p2, v5

    .line 140
    if-le v1, v8, :cond_3

    .line 142
    const/16 v5, 0x8

    add-int/lit8 v6, p2, 0x64

    invoke-virtual {p0, v5, v6}, Lcom/oppo/hypnus/HypnusManager;->hypnusSetAction(II)V

    goto/16 :goto_0

    .line 145
    :cond_3
    const/4 v5, 0x7

    invoke-virtual {p0, v5, p2}, Lcom/oppo/hypnus/HypnusManager;->hypnusSetAction(II)V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hypnusSetAction(II)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 58
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IHypnusService;->hypnusSetAction(II)V

    .line 61
    sget-boolean v1, Lcom/oppo/hypnus/HypnusManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "HypnusManager"

    const-string/jumbo v2, "hypnusSetAction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hypnusSetScene(ILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IHypnusService;->hypnusSetScene(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isHypnusOK()Z
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    if-eqz v1, :cond_1

    .line 85
    :try_start_0
    sget-object v1, Lcom/oppo/hypnus/HypnusManager;->sService:Lcom/android/internal/app/IHypnusService;

    invoke-interface {v1}, Lcom/android/internal/app/IHypnusService;->isHypnusOK()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :cond_1
    sget-boolean v1, Lcom/oppo/hypnus/HypnusManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "HypnusManager"

    const-string/jumbo v2, "hypnus service is not ready yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
