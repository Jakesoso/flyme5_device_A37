.class Lcom/android/internal/policy/impl/OppoGlobalActions;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$Action;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final ROTATION_180:F = 180.0f

.field private static final ROTATION_270:F = 90.0f

.field private static final ROTATION_90:F = 270.0f

.field private static final SCALETIMES:I = 0x4

.field private static final SHOT_DOWN_DELAY:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "OppoGlobalActions"

.field static isPRStatus:Z = false

.field private static final mDefaultBackground:I = -0x34000000


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

.field private mIsReceiverRegisted:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/OppoGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviousOrientation:I

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mSystemUiVisibility:Z

.field private mTouchX:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 119
    iput v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    .line 338
    new-instance v1, Lcom/android/internal/policy/impl/OppoGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 561
    new-instance v1, Lcom/android/internal/policy/impl/OppoGlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 587
    new-instance v1, Lcom/android/internal/policy/impl/OppoGlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    .line 670
    new-instance v1, Lcom/android/internal/policy/impl/OppoGlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mTouchX:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 136
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->startQuickBoot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mTouchX:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    return-object v0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 772
    packed-switch p1, :pswitch_data_0

    .line 783
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 774
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 777
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 780
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleShow()V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v9, 0x0

    .line 186
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const v3, 0xc090451

    invoke-static {v2, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 192
    :goto_0
    const v4, 0x10900

    .line 196
    .local v4, "flags":I
    const/4 v7, -0x1

    .line 197
    .local v7, "stretch":I
    const/16 v8, 0x8fc

    .line 198
    .local v8, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8fc

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 200
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->initialize()V

    .line 201
    const v1, 0xc030408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->deliveryValue(Landroid/view/WindowManager;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    new-instance v2, Lcom/android/internal/policy/impl/OppoGlobalActions$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setOnChangeListener(Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;)V

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setGaussianBlur()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    return-void

    .line 189
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v7    # "stretch":I
    .end local v8    # "type":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const v3, 0xc090462

    invoke-static {v2, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    goto :goto_0

    .line 214
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v7    # "stretch":I
    .restart local v8    # "type":I
    :catch_0
    move-exception v6

    .line 215
    .local v6, "exce":Ljava/lang/Exception;
    const-string v1, "OppoGlobalActions"

    const-string v2, "addView failed!"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    goto :goto_1
.end method

.method private initialize()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    .line 271
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 272
    new-instance v8, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v11, v12}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    .line 273
    new-instance v8, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v11, v12}, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mCancelModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;

    .line 274
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mCancelModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 279
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_5

    .line 282
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 287
    .local v6, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v8, :cond_0

    move v3, v9

    .line 289
    .local v3, "isCurrentUser":Z
    :goto_2
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$2;

    const v11, 0xc080480

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v3, :cond_4

    const-string v8, " \u2714"

    :goto_4
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v11, v8, v6}, Lcom/android/internal/policy/impl/OppoGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 309
    .local v5, "switchToUser":Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isCurrentUser":Z
    .end local v5    # "switchToUser":Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v4

    .line 284
    .local v4, "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    goto :goto_0

    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    move v3, v10

    .line 287
    goto :goto_2

    :cond_1
    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v8, v11, :cond_2

    move v3, v9

    goto :goto_2

    :cond_2
    move v3, v10

    goto :goto_2

    .line 289
    .restart local v3    # "isCurrentUser":Z
    :cond_3
    const-string v8, "Primary"

    goto :goto_3

    :cond_4
    const-string v8, ""

    goto :goto_4

    .line 313
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isCurrentUser":Z
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_5
    new-instance v8, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-direct {v8, p0, v13}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$1;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v1, v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v8, :cond_6

    .line 315
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v9, v1, v13, v13}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->addView(Landroid/view/View;)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 317
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGaussianBlur()V
    .locals 12

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 222
    const/4 v8, 0x2

    new-array v1, v8, [F

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v1, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v1, v6

    .line 223
    .local v1, "dims":[F
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/OppoGlobalActions;->getDegreesForRotation(I)F

    move-result v0

    .line 224
    .local v0, "degrees":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    move v4, v6

    .line 225
    .local v4, "requiresRotation":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 226
    aget v8, v1, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v7

    .line 227
    aget v8, v1, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v6

    .line 229
    :cond_0
    const/4 v5, 0x0

    .line 230
    .local v5, "statusBarHeight":I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSystemUiVisibility:Z

    if-eqz v8, :cond_1

    .line 232
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 236
    :cond_1
    aget v8, v1, v7

    div-float/2addr v8, v10

    float-to-int v8, v8

    aget v6, v1, v6

    div-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v8, v6}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 240
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 241
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    div-int/lit8 v8, v5, 0x4

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v11, v5, 0x4

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 245
    invoke-static {}, Lcom/oppo/launcher/graphic/GaussianBlur;->getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;

    move-result-object v3

    .line 247
    .local v3, "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v6, v8, v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 254
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 255
    .local v2, "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-nez v6, :cond_4

    .line 267
    .end local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    :cond_2
    :goto_1
    return-void

    .end local v4    # "requiresRotation":Z
    .end local v5    # "statusBarHeight":I
    :cond_3
    move v4, v7

    .line 224
    goto :goto_0

    .line 258
    .restart local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    .restart local v4    # "requiresRotation":Z
    .restart local v5    # "statusBarHeight":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 261
    .end local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v6, :cond_2

    .line 262
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    const/high16 v7, -0x34000000    # -3.3554432E7f

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private startQuickBoot()V
    .locals 3

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getDegreesForRotation()F
    .locals 2

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->getDegreesForRotation(I)F

    move-result v0

    .line 790
    .local v0, "degrees":F
    return v0
.end method

.method public getPRStatus()Z
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 167
    iget v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    .line 170
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public removePowerView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v1, :cond_0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "exce":Ljava/lang/Exception;
    const-string v1, "OppoGlobalActions"

    const-string v2, "dismissDialog failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    goto :goto_0
.end method

.method public setSystemUiVisibility(Z)V
    .locals 0
    .param p1, "systemUiVisibility"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSystemUiVisibility:Z

    .line 767
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 7
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 148
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 149
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-nez v4, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "begin":J
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 158
    .local v2, "cost":J
    const-string v4, "OppoGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GlobalActions handleShow cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0    # "begin":J
    .end local v2    # "cost":J
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    .line 163
    return-void
.end method
