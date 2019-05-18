.class public Lcom/color/widget/ColorLoadProgress;
.super Landroid/widget/Button;
.source "ColorLoadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorLoadProgress$1;,
        Lcom/color/widget/ColorLoadProgress$SavedState;,
        Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_UP_OR_DOWN:I = 0x0

.field private static final FAIL_SET:[I

.field private static final ING_SET:[I

.field public static final UPING_OR_DOWNING:I = 0x1

.field public static final UP_OR_DOWN_FAIL:I = 0x3

.field public static final UP_OR_DOWN_WAIT:I = 0x2

.field private static final WAIT_SET:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mContext:Landroid/content/Context;

.field public mMax:I

.field private mOnStateChangeListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

.field public mProgress:I

.field public mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [I

    const v1, 0xc010209

    aput v1, v0, v2

    sput-object v0, Lcom/color/widget/ColorLoadProgress;->WAIT_SET:[I

    .line 56
    new-array v0, v3, [I

    const v1, 0xc01020a

    aput v1, v0, v2

    sput-object v0, Lcom/color/widget/ColorLoadProgress;->FAIL_SET:[I

    .line 59
    new-array v0, v3, [I

    const v1, 0xc010208

    aput v1, v0, v2

    sput-object v0, Lcom/color/widget/ColorLoadProgress;->ING_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0xc010462

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v3, "ColorLoadProgress"

    iput-object v3, p0, Lcom/color/widget/ColorLoadProgress;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v4, p0, Lcom/color/widget/ColorLoadProgress;->DEBUG:Z

    .line 73
    sget-object v3, Loppo/R$styleable;->ColorLoadProgress:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 76
    .local v2, "state":I
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    const/4 v3, 0x2

    iget v4, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorLoadProgress;->setProgress(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0}, Lcom/color/widget/ColorLoadProgress;->init()V

    .line 84
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    .line 299
    const/16 v0, 0x64

    iput v0, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    .line 300
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 327
    iget-object v1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    .line 329
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 330
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->invalidate()V

    .line 332
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getMax(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 150
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 342
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 344
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 310
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 311
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 312
    sget-object v1, Lcom/color/widget/ColorLoadProgress;->ING_SET:[I

    invoke-static {v0, v1}, Lcom/color/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 315
    sget-object v1, Lcom/color/widget/ColorLoadProgress;->WAIT_SET:[I

    invoke-static {v0, v1}, Lcom/color/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 318
    sget-object v1, Lcom/color/widget/ColorLoadProgress;->FAIL_SET:[I

    invoke-static {v0, v1}, Lcom/color/widget/ColorLoadProgress;->mergeDrawableStates([I[I)[I

    .line 320
    :cond_2
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 306
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 288
    const-class v0, Lcom/color/widget/ColorLoadProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 294
    const-class v0, Lcom/color/widget/ColorLoadProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 402
    move-object v0, p1

    check-cast v0, Lcom/color/widget/ColorLoadProgress$SavedState;

    .line 404
    .local v0, "ss":Lcom/color/widget/ColorLoadProgress$SavedState;
    invoke-virtual {v0}, Lcom/color/widget/ColorLoadProgress$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget v1, v0, Lcom/color/widget/ColorLoadProgress$SavedState;->state:I

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    .line 406
    iget v1, v0, Lcom/color/widget/ColorLoadProgress$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLoadProgress;->setProgress(I)V

    .line 407
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->requestLayout()V

    .line 408
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 390
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->setFreezesText(Z)V

    .line 391
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 393
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/color/widget/ColorLoadProgress$SavedState;

    invoke-direct {v0, v1}, Lcom/color/widget/ColorLoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 395
    .local v0, "ss":Lcom/color/widget/ColorLoadProgress$SavedState;
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getState()I

    move-result v2

    iput v2, v0, Lcom/color/widget/ColorLoadProgress$SavedState;->state:I

    .line 396
    iget v2, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    iput v2, v0, Lcom/color/widget/ColorLoadProgress$SavedState;->progress:I

    .line 397
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->toggle()V

    .line 263
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonResource:I

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLoadProgress;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    :cond_1
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 183
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLoadProgress;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 188
    iput-object p1, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLoadProgress;->setMinHeight(I)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->refreshDrawableState()V

    .line 193
    return-void

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 129
    if-gez p1, :cond_0

    .line 130
    const/4 p1, 0x0

    .line 132
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    if-eq p1, v0, :cond_2

    .line 133
    iput p1, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    .line 134
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    if-le v0, p1, :cond_1

    .line 135
    iput p1, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->invalidate()V

    .line 139
    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    .line 232
    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeWidgetListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    .line 243
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 92
    if-gez p1, :cond_0

    .line 93
    const/4 p1, 0x0

    .line 96
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    if-le p1, v0, :cond_1

    .line 97
    iget p1, p0, Lcom/color/widget/ColorLoadProgress;->mMax:I

    .line 99
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 100
    iput p1, p0, Lcom/color/widget/ColorLoadProgress;->mProgress:I

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->invalidate()V

    .line 106
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 203
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    if-eq v0, p1, :cond_0

    .line 204
    iput p1, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    .line 205
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadProgress;->refreshDrawableState()V

    .line 206
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 209
    iget-boolean v0, p0, Lcom/color/widget/ColorLoadProgress;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorLoadProgress;->mBroadcasting:Z

    .line 213
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    iget v1, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;->onStateChanged(Lcom/color/widget/ColorLoadProgress;I)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeWidgetListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mOnStateChangeWidgetListener:Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;

    iget v1, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/color/widget/ColorLoadProgress$OnStateChangeListener;->onStateChanged(Lcom/color/widget/ColorLoadProgress;I)V

    .line 220
    :cond_3
    iput-boolean v2, p0, Lcom/color/widget/ColorLoadProgress;->mBroadcasting:Z

    goto :goto_0
.end method

.method public toggle()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 270
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    if-ne v0, v2, :cond_2

    .line 273
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    if-ne v0, v1, :cond_3

    .line 275
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0

    .line 276
    :cond_3
    iget v0, p0, Lcom/color/widget/ColorLoadProgress;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLoadProgress;->setState(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorLoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
