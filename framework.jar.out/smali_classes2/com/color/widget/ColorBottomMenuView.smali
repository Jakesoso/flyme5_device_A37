.class public abstract Lcom/color/widget/ColorBottomMenuView;
.super Landroid/view/View;
.source "ColorBottomMenuView.java"

# interfaces
.implements Lcom/color/widget/ColorBottomMenuCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorBottomMenuView$DirectUpdater;,
        Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;,
        Lcom/color/widget/ColorBottomMenuView$DirectAnimator;,
        Lcom/color/widget/ColorBottomMenuView$PerformClick;,
        Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;,
        Lcom/color/widget/ColorBottomMenuView$CheckForTap;,
        Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;,
        Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;,
        Lcom/color/widget/ColorBottomMenuView$DrawItems;,
        Lcom/color/widget/ColorBottomMenuView$DrawItem;
    }
.end annotation


# static fields
.field private static final AVERAGE_SCALE:I = 0x4

.field private static final AVERAGE_WEIGHT:I = 0x5

.field private static final DBG:Z = false

.field private static final DBG_ANIM:Z = false

.field private static final DBG_DRAW:Z = false

.field private static final DBG_ITEM:Z = false

.field private static final DBG_TOUCH:Z = false

.field private static final DBG_UPDATE:Z = false

.field private static final DISABLED_DIM_AMOUNT:F = 0.55f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_ITEM_COUNT:I = 0x5

.field private static final MENU_DISABLED:I = 0x20

.field private static final MENU_ENABLED:I = 0x0

.field private static final MENU_ENABLED_MASK:I = 0x20

.field private static final MENU_PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final MENU_PFLAG_PREPRESSED:I = 0x2000000

.field private static final MENU_PFLAG_PRESSED:I = 0x4000

.field private static final MENU_PFLAG_SELECTED:I = 0x4

.field private static final MENU_VIEW_SETS:[[I

.field private static final MENU_VIEW_STATE_ACCELERATED:I = 0x40

.field private static final MENU_VIEW_STATE_ACTIVATED:I = 0x20

.field private static final MENU_VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field private static final MENU_VIEW_STATE_DRAG_HOVERED:I = 0x200

.field private static final MENU_VIEW_STATE_ENABLED:I = 0x8

.field private static final MENU_VIEW_STATE_FOCUSED:I = 0x4

.field private static final MENU_VIEW_STATE_HOVERED:I = 0x80

.field private static final MENU_VIEW_STATE_IDS:[I

.field private static final MENU_VIEW_STATE_PRESSED:I = 0x10

.field private static final MENU_VIEW_STATE_SELECTED:I = 0x2

.field private static final MENU_VIEW_STATE_SETS:[[[I

.field private static final MENU_VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final MENU_VIEW_STYLEABLE_LENGTH:I

.field private static final NEW_LINE:C = '\n'


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAnimateUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundHeight:I

.field private mCachedWidth:I

.field protected final mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

.field private final mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private final mDefaultTextSize:I

.field private final mDensity:F

.field private final mDirectUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

.field private final mDoubleLinesDifferentSize:I

.field private final mDoubleLinesIconMarginTop:I

.field private final mDoubleLinesTextMarginTop:I

.field protected mDownTouchedPosition:I

.field private mHasPerformedLongPress:Z

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private mIsUpdateLocked:Z

.field private final mNavExtraWidth:I

.field private final mNavKeyWidth:I

.field protected final mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

.field private final mOffsetX:I

.field private mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

.field private mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

.field private final mSingleLineDifferentSize:I

.field private final mSingleLineIconMarginTop:I

.field private final mSingleLineTextMarginTop:I

.field protected mTextColor:Landroid/content/res/ColorStateList;

.field private mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

.field private final mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

.field private mUpdateAnimator:Landroid/animation/Animator;

.field private mUserTextColor:Landroid/content/res/ColorStateList;

.field private mUserTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 109
    const/16 v8, 0x14

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    sput-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    .line 181
    sget-object v8, Landroid/R$styleable;->ViewDrawableStates:[I

    array-length v8, v8

    sput v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STYLEABLE_LENGTH:I

    .line 182
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    array-length v8, v8

    div-int/lit8 v0, v8, 0x2

    .line 183
    .local v0, "NUM_BITS":I
    sget v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STYLEABLE_LENGTH:I

    if-eq v0, v8, :cond_0

    .line 184
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "MENU_VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :cond_0
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    array-length v8, v8

    new-array v5, v8, [I

    .line 188
    .local v5, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STYLEABLE_LENGTH:I

    if-ge v1, v8, :cond_3

    .line 189
    sget-object v8, Landroid/R$styleable;->ViewDrawableStates:[I

    aget v3, v8, v1

    .line 190
    .local v3, "menuViewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 191
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    aget v8, v8, v2

    if-ne v8, v3, :cond_1

    .line 192
    mul-int/lit8 v8, v1, 0x2

    aput v3, v5, v8

    .line 193
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_IDS:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v5, v8

    .line 190
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "j":I
    .end local v3    # "menuViewState":I
    :cond_3
    shl-int v8, v11, v0

    new-array v8, v8, [[[I

    sput-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_SETS:[[[I

    .line 198
    shl-int v8, v11, v0

    new-array v8, v8, [[I

    sput-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    .line 199
    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    array-length v8, v8

    if-ge v1, v8, :cond_6

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 201
    .local v4, "numBits":I
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    new-array v9, v4, [I

    aput-object v9, v8, v1

    .line 202
    const/4 v6, 0x0

    .line 203
    .local v6, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    array-length v8, v5

    if-ge v2, v8, :cond_5

    .line 204
    add-int/lit8 v8, v2, 0x1

    aget v8, v5, v8

    and-int/2addr v8, v1

    if-eqz v8, :cond_4

    .line 205
    sget-object v8, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    aget-object v8, v8, v1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget v9, v5, v2

    aput v9, v8, v6

    move v6, v7

    .line 203
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 199
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    .end local v2    # "j":I
    .end local v4    # "numBits":I
    .end local v6    # "pos":I
    :cond_6
    return-void

    .line 109
    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorBottomMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 232
    const v0, 0xc010458

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorBottomMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionBarTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    .line 126
    new-instance v4, Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-direct {v4, p0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    .line 128
    new-instance v4, Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-direct {v4, p0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    .line 130
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 132
    const/4 v4, -0x1

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDownTouchedPosition:I

    .line 140
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 141
    iput v7, p0, Lcom/color/widget/ColorBottomMenuView;->mUserTextSize:I

    .line 159
    iput v7, p0, Lcom/color/widget/ColorBottomMenuView;->mCachedWidth:I

    .line 162
    iput-boolean v7, p0, Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z

    .line 163
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    .line 164
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    .line 165
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    .line 166
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    .line 169
    new-instance v4, Lcom/color/widget/ColorBottomMenuAnimator;

    invoke-direct {v4, p0}, Lcom/color/widget/ColorBottomMenuAnimator;-><init>(Lcom/color/widget/ColorBottomMenuCallback;)V

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mAnimateUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    .line 170
    new-instance v4, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;

    invoke-direct {v4, p0, v6}, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;-><init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDirectUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    .line 171
    new-instance v4, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    invoke-direct {v4, p0, v6}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;-><init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    .line 172
    iput-object v6, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    .line 173
    iput-boolean v7, p0, Lcom/color/widget/ColorBottomMenuView;->mIsUpdateLocked:Z

    .line 246
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorBottomMenuView;->setWillNotDraw(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050459

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 249
    .local v3, "textSize":I
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 251
    .local v1, "backgroundHeight":I
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05048c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 253
    .local v2, "maxIconSize":I
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineDifferentSize:I

    .line 255
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050460

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesDifferentSize:I

    .line 257
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineIconMarginTop:I

    .line 259
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesIconMarginTop:I

    .line 261
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineTextMarginTop:I

    .line 263
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05045f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesTextMarginTop:I

    .line 265
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDensity:F

    .line 266
    sget-object v4, Loppo/R$styleable;->ColorBottomMenuView:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 268
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDefaultTextSize:I

    .line 270
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 271
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I

    .line 273
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    iget-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorBottomMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    iput v2, p0, Lcom/color/widget/ColorBottomMenuView;->mIconWidth:I

    .line 279
    iput v2, p0, Lcom/color/widget/ColorBottomMenuView;->mIconHeight:I

    .line 280
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050498

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mNavKeyWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050499

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mNavExtraWidth:I

    .line 282
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc0504ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorBottomMenuView;->mOffsetX:I

    .line 283
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorBottomMenuView;->setMenuUpdateMode(I)V

    .line 284
    return-void
.end method

.method static synthetic access$1000(Lcom/color/widget/ColorBottomMenuView;)F
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mDensity:F

    return v0
.end method

.method static synthetic access$1100(Lcom/color/widget/ColorBottomMenuView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$DrawItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p1, "x1"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView;->setItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/color/widget/ColorBottomMenuView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView;->checkForLongClick(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/color/widget/ColorBottomMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/color/widget/ColorBottomMenuView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/color/widget/ColorBottomMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->updateCurrItems()V

    return-void
.end method

.method static synthetic access$202(Lcom/color/widget/ColorBottomMenuView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STYLEABLE_LENGTH:I

    return v0
.end method

.method static synthetic access$700(Lcom/color/widget/ColorBottomMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/color/widget/ColorBottomMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUserTextSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/color/widget/ColorBottomMenuView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView;

    .prologue
    .line 58
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mDefaultTextSize:I

    return v0
.end method

.method private checkForLongClick(II)V
    .locals 4
    .param p1, "delayOffset"    # I
    .param p2, "position"    # I

    .prologue
    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z

    .line 935
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->updateLongPressCallback(I)V

    .line 936
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 937
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/color/widget/ColorBottomMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 939
    return-void
.end method

.method private getIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)[I
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuPrivateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorBottomMenuView;->onCreateIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setMenuIconState([I)V

    .line 869
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->removeMenuPrivateFlags(I)V

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuIconState()[I

    move-result-object v0

    return-object v0
.end method

.method private getIconWeight(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x4

    .line 1165
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getItemAlpha(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 829
    if-eqz p1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    const v0, 0x430c4000    # 140.25f

    goto :goto_0
.end method

.method private getMenuCount(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1110
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextLineOffset(Lcom/color/widget/ColorBottomMenuView$DrawItem;)I
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 1169
    const/4 v0, 0x0

    return v0
.end method

.method private getTextNewLinePos(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 914
    if-eqz p1, :cond_1

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 916
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 917
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 918
    .local v0, "c":C
    const/16 v3, 0xa

    if-ne v3, v0, :cond_0

    .line 923
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return v1

    .line 916
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getTouchedPosition(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1225
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v0

    .line 1226
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1227
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    invoke-virtual {v2, p1, p2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1226
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1231
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private iconStateChanged(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V
    .locals 3
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 875
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 876
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)[I

    move-result-object v1

    .line 877
    .local v1, "state":[I
    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 888
    :cond_0
    return-void
.end method

.method private initMenuState(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1104
    sget-object v0, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_SETS:[[[I

    sget-object v1, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    array-length v1, v1

    new-array v1, v1, [[I

    aput-object v1, v0, p1

    .line 1105
    sget-object v0, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    sget-object v1, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_SETS:[[[I

    aget-object v1, v1, p1

    sget-object v2, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_SETS:[[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    return-void
.end method

.method private isItemPrepressed(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v0

    return v0
.end method

.method private isItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x2000000

    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method private isMultiPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 780
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 781
    .local v0, "pointerId":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCreateIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)[I
    .locals 8
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "extraSpace"    # I

    .prologue
    const/4 v7, 0x0

    .line 833
    const/4 v2, 0x0

    .line 835
    .local v2, "menuItemStateIndex":I
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuPrivateFlags()I

    move-result v4

    .line 836
    .local v4, "privateFlags":I
    and-int/lit16 v6, v4, 0x4000

    if-eqz v6, :cond_0

    .line 837
    or-int/lit8 v2, v2, 0x10

    .line 839
    :cond_0
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1

    .line 840
    or-int/lit8 v2, v2, 0x2

    .line 843
    :cond_1
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuViewFlags()I

    move-result v5

    .line 844
    .local v5, "viewFlags":I
    and-int/lit8 v6, v5, 0x20

    if-nez v6, :cond_2

    .line 845
    or-int/lit8 v2, v2, 0x8

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 849
    or-int/lit8 v2, v2, 0x1

    .line 851
    :cond_3
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getPosition()I

    move-result v3

    .line 852
    .local v3, "position":I
    sget-object v6, Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STATE_SETS:[[[I

    aget-object v6, v6, v3

    aget-object v1, v6, v2

    .line 853
    .local v1, "iconState":[I
    if-nez p2, :cond_4

    .line 863
    .end local v1    # "iconState":[I
    :goto_0
    return-object v1

    .line 857
    .restart local v1    # "iconState":[I
    :cond_4
    if-eqz v1, :cond_5

    .line 858
    array-length v6, v1

    add-int/2addr v6, p2

    new-array v0, v6, [I

    .line 859
    .local v0, "fullState":[I
    array-length v6, v1

    invoke-static {v1, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v1, v0

    .line 863
    goto :goto_0

    .line 861
    .end local v0    # "fullState":[I
    :cond_5
    new-array v0, p2, [I

    .restart local v0    # "fullState":[I
    goto :goto_1
.end method

.method private onDrawIcon(Landroid/graphics/Canvas;ILcom/color/widget/ColorBottomMenuView$DrawItem;)I
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I
    .param p3, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 1173
    invoke-virtual {p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1175
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getRight()I

    move-result v6

    invoke-virtual {p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 1176
    .local v2, "itemWidth":I
    invoke-virtual {p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/color/widget/ColorBottomMenuView;->mIconWidth:I

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 1177
    .local v3, "left":I
    iget v6, p0, Lcom/color/widget/ColorBottomMenuView;->mIconWidth:I

    add-int v4, v3, v6

    .line 1178
    .local v4, "right":I
    invoke-virtual {p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getIconY()F

    move-result v6

    float-to-int v5, v6

    .line 1179
    .local v5, "top":I
    iget v6, p0, Lcom/color/widget/ColorBottomMenuView;->mIconHeight:I

    add-int v0, v5, v6

    .line 1180
    .local v0, "bottom":I
    invoke-virtual {v1, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1183
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1184
    return v0
.end method

.method private onDrawText(Landroid/graphics/Canvas;ILcom/color/widget/ColorBottomMenuView$DrawItem;I)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I
    .param p3, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p4, "iconBottom"    # I

    .prologue
    .line 1188
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1189
    .local v11, "text":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1192
    :cond_0
    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 1193
    .local v5, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget v0, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v19, v0

    iget v0, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1194
    .local v6, "fontHeight":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1195
    .local v8, "length":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getTextMarginTop()I

    move-result v9

    .line 1196
    .local v9, "marginTop":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getDifferentSize()I

    move-result v4

    .line 1197
    .local v4, "diffSize":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getNewLinePos()I

    move-result v10

    .line 1198
    .local v10, "posNewLine":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getRight()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v20

    sub-int v7, v19, v20

    .line 1199
    .local v7, "itemWidth":I
    const/16 v17, 0x0

    .line 1200
    .local v17, "x":I
    const/16 v18, 0x0

    .line 1202
    .local v18, "y":I
    if-gez v10, :cond_1

    .line 1203
    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v14, v0

    .line 1204
    .local v14, "textWidth":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v19

    sub-int v20, v7, v14

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .line 1205
    add-int v19, p4, v9

    add-int v19, v19, v6

    sub-int v19, v19, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->getTextLineOffset(Lcom/color/widget/ColorBottomMenuView$DrawItem;)I

    move-result v20

    add-int v18, v19, v20

    .line 1206
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1209
    .end local v14    # "textWidth":I
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1210
    .local v12, "textLine1":Ljava/lang/String;
    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 1211
    .local v15, "widthLine1":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v19

    sub-int v20, v7, v15

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .line 1212
    add-int v19, p4, v9

    add-int v19, v19, v6

    sub-int v18, v19, v4

    .line 1213
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1215
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1216
    .local v13, "textLine2":Ljava/lang/String;
    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1217
    .local v16, "widthLine2":I
    invoke-virtual/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v19

    sub-int v20, v7, v16

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .line 1218
    add-int v19, v18, v9

    add-int v19, v19, v6

    sub-int v18, v19, v4

    .line 1219
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    # getter for: Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;
    invoke-static/range {p3 .. p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # I

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->resetTouchCheck()V

    .line 1099
    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # I

    .prologue
    .line 1040
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 1041
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-nez v0, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->setDownTouchedPosition(I)V

    .line 1045
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z

    .line 1046
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;Z)V

    .line 1047
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->updateTapCallback(I)V

    .line 1048
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/color/widget/ColorBottomMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # I

    .prologue
    .line 1052
    iget v1, p0, Lcom/color/widget/ColorBottomMenuView;->mDownTouchedPosition:I

    if-eq v1, p2, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeTapCallback()V

    .line 1055
    iget v1, p0, Lcom/color/widget/ColorBottomMenuView;->mDownTouchedPosition:I

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 1056
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeLongPressCallback()V

    .line 1059
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/widget/ColorBottomMenuView;->setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 1062
    .end local v0    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    :cond_0
    return-void
.end method

.method private onTouchUp(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 1065
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 1066
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-eqz v0, :cond_6

    .line 1067
    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v1

    .line 1068
    .local v1, "prepressed":Z
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    .line 1069
    :cond_0
    if-eqz v1, :cond_1

    .line 1074
    invoke-virtual {p0, v0, v3, v3}, Lcom/color/widget/ColorBottomMenuView;->setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 1076
    :cond_1
    iget-boolean v2, p0, Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z

    if-nez v2, :cond_2

    .line 1078
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeLongPressCallback()V

    .line 1079
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->onPerformClick(I)V

    .line 1081
    :cond_2
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->updateUnsetPressedCallback(I)V

    .line 1082
    if-eqz v1, :cond_5

    .line 1083
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/color/widget/ColorBottomMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeTapCallback()V

    .line 1094
    .end local v1    # "prepressed":Z
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->resetDownTouchedPosition()V

    .line 1095
    return-void

    .line 1085
    .restart local v1    # "prepressed":Z
    :cond_5
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorBottomMenuView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1087
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->run()V

    goto :goto_0

    .line 1092
    .end local v1    # "prepressed":Z
    :cond_6
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->resetTouchCheck()V

    goto :goto_1
.end method

.method private refreshIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 891
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->addMenuPrivateFlags(I)V

    .line 892
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->iconStateChanged(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    .line 893
    return-void
.end method

.method private refreshItemState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V
    .locals 0
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 906
    if-nez p1, :cond_0

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->refreshIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    .line 910
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->refreshTextState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    goto :goto_0
.end method

.method private refreshTextState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V
    .locals 5
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 896
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 897
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)[I

    move-result-object v1

    .line 898
    .local v1, "state":[I
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 899
    .local v0, "color":I
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 900
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->isItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/color/widget/ColorBottomMenuView;->getItemAlpha(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 903
    .end local v0    # "color":I
    .end local v1    # "state":[I
    .end local v2    # "textPaint":Landroid/text/TextPaint;
    :cond_0
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 966
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeLongPressCallback"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 968
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->setPosition(I)V

    .line 970
    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removePerformClickCallback"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 976
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView$PerformClick;->setPosition(I)V

    .line 978
    :cond_0
    return-void
.end method

.method private removeRunnables()V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeUnsetPressCallback()V

    .line 928
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeTapCallback()V

    .line 929
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeLongPressCallback()V

    .line 930
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removePerformClickCallback()V

    .line 931
    return-void
.end method

.method private removeTapCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 955
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeTapCallback"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 958
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-virtual {v1}, Lcom/color/widget/ColorBottomMenuView$CheckForTap;->getPosition()I

    move-result v0

    .line 959
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/color/widget/ColorBottomMenuView;->setItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;Z)V

    .line 960
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorBottomMenuView$CheckForTap;->setPosition(I)V

    .line 962
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 942
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    if-eqz v2, :cond_1

    .line 943
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeUnsetPressCallback"

    invoke-static {v4, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 945
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->getPosition()I

    move-result v1

    .line 946
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 947
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v4, v2}, Lcom/color/widget/ColorBottomMenuView;->setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 950
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->setPosition(I)V

    .line 952
    .end local v0    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .end local v1    # "position":I
    :cond_1
    return-void
.end method

.method private resetDownTouchedPosition()V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->setDownTouchedPosition(I)V

    .line 1030
    return-void
.end method

.method private resetNextItems()V
    .locals 3

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    monitor-enter v1

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->copyFrom(Lcom/color/widget/ColorBottomMenuView$DrawItems;)V

    .line 1161
    monitor-exit v1

    .line 1162
    return-void

    .line 1161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetTouchCheck()V
    .locals 2

    .prologue
    .line 1033
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mDownTouchedPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemPressed(IZ)V

    .line 1034
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeTapCallback()V

    .line 1035
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeLongPressCallback()V

    .line 1036
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->resetDownTouchedPosition()V

    .line 1037
    return-void
.end method

.method private setDownTouchedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1025
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView;->mDownTouchedPosition:I

    .line 1026
    return-void
.end method

.method private setItemPrepressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;Z)V
    .locals 2
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "prepressed"    # Z

    .prologue
    const/high16 v1, 0x2000000

    .line 804
    if-nez p1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 810
    if-eqz p2, :cond_2

    .line 811
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->addMenuPrivateFlags(I)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->removeMenuPrivateFlags(I)V

    goto :goto_0
.end method

.method private updateCurrItems()V
    .locals 5

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeRunnables()V

    .line 1146
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    monitor-enter v3

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    iget-object v4, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2, v4}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->copyFrom(Lcom/color/widget/ColorBottomMenuView$DrawItems;)V

    .line 1148
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 1149
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setBoundsChanged(Z)V

    .line 1150
    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->refreshItemState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    goto :goto_0

    .line 1153
    .end local v0    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->requestLayout()V

    .line 1155
    return-void
.end method

.method private updateIconY(FI)Z
    .locals 9
    .param p1, "offset"    # F
    .param p2, "position"    # I

    .prologue
    .line 1114
    const/4 v4, 0x0

    .line 1115
    .local v4, "needsInvalidate":Z
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v2

    .line 1116
    .local v2, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-eqz v2, :cond_1

    .line 1117
    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getBottom()I

    move-result v0

    .line 1118
    .local v0, "bottomY":I
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getIconMarginTop()I

    move-result v6

    .line 1120
    .local v6, "topY":I
    int-to-float v7, v6

    sub-int v8, v0, v6

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float v3, v7, v8

    .line 1121
    .local v3, "iconY":F
    invoke-virtual {v2, v3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setIconY(F)V

    .line 1124
    const/4 v4, 0x1

    .end local v3    # "iconY":F
    .end local v6    # "topY":I
    :cond_0
    move v5, v4

    .line 1141
    .end local v0    # "bottomY":I
    .end local v4    # "needsInvalidate":Z
    .local v5, "needsInvalidate":Z
    :goto_0
    return v5

    .line 1128
    .end local v5    # "needsInvalidate":Z
    .restart local v4    # "needsInvalidate":Z
    :cond_1
    iget-object v7, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v7}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v1

    .line 1129
    .local v1, "count":I
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v1, :cond_3

    .line 1130
    iget-object v7, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v7, p2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    check-cast v2, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 1131
    .restart local v2    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getBottom()I

    move-result v0

    .line 1132
    .restart local v0    # "bottomY":I
    if-eqz v0, :cond_2

    .line 1133
    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getIconMarginTop()I

    move-result v6

    .line 1134
    .restart local v6    # "topY":I
    int-to-float v7, v6

    sub-int v8, v0, v6

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float v3, v7, v8

    .line 1135
    .restart local v3    # "iconY":F
    invoke-virtual {v2, v3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setIconY(F)V

    .line 1138
    const/4 v4, 0x1

    .line 1129
    .end local v3    # "iconY":F
    .end local v6    # "topY":I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .end local v0    # "bottomY":I
    :cond_3
    move v5, v4

    .line 1141
    .end local v4    # "needsInvalidate":Z
    .restart local v5    # "needsInvalidate":Z
    goto :goto_0
.end method

.method private updateItemBounds(Lcom/color/widget/ColorBottomMenuView$DrawItem;IIIIIZ)V
    .locals 5
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "itemWidth"    # I
    .param p3, "itemHeight"    # I
    .param p4, "index"    # I
    .param p5, "count"    # I
    .param p6, "leftSpace"    # I
    .param p7, "isPortrait"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 785
    if-ne p5, v4, :cond_1

    .line 786
    int-to-float v1, p2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setLeft(I)V

    .line 796
    :goto_0
    if-ne p5, v4, :cond_0

    mul-int/lit8 p2, p2, 0x2

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getLeft()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setRight(I)V

    .line 798
    invoke-virtual {p1, v3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setTop(I)V

    .line 799
    invoke-virtual {p1, p3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setBottom(I)V

    .line 800
    invoke-virtual {p1, v3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setBoundsChanged(Z)V

    .line 801
    return-void

    .line 787
    :cond_1
    const/4 v1, 0x2

    if-ne p5, v1, :cond_3

    .line 788
    if-nez p4, :cond_2

    iget v1, p0, Lcom/color/widget/ColorBottomMenuView;->mOffsetX:I

    neg-int v0, v1

    .line 789
    .local v0, "offsetX":I
    :goto_1
    add-int/lit8 v1, p4, 0x1

    mul-int/2addr v1, p2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setLeft(I)V

    goto :goto_0

    .line 788
    .end local v0    # "offsetX":I
    :cond_2
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mOffsetX:I

    goto :goto_1

    .line 790
    :cond_3
    const/4 v1, 0x3

    if-ne p5, v1, :cond_5

    .line 791
    if-eqz p7, :cond_4

    mul-int v1, p6, p4

    iget v2, p0, Lcom/color/widget/ColorBottomMenuView;->mNavExtraWidth:I

    add-int v0, v1, v2

    .line 792
    .restart local v0    # "offsetX":I
    :goto_2
    mul-int v1, p2, p4

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setLeft(I)V

    goto :goto_0

    .end local v0    # "offsetX":I
    :cond_4
    move v0, p2

    .line 791
    goto :goto_2

    .line 794
    :cond_5
    mul-int v1, p2, p4

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setLeft(I)V

    goto :goto_0
.end method

.method private updateLongPressCallback(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-direct {v0, p0, p1}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    .line 1011
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->getPosition()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1006
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeLongPressCallback()V

    .line 1007
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->setPosition(I)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForLongPress:Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updatePerformClickCallback(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-direct {v0, p0, p1}, Lcom/color/widget/ColorBottomMenuView$PerformClick;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    .line 1022
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$PerformClick;->getPosition()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removePerformClickCallback()V

    .line 1018
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorBottomMenuView$PerformClick;->setPosition(I)V

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateTapCallback(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-direct {v0, p0, p1}, Lcom/color/widget/ColorBottomMenuView$CheckForTap;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    .line 1000
    :goto_0
    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$CheckForTap;->getPosition()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 995
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeTapCallback()V

    .line 996
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorBottomMenuView$CheckForTap;->setPosition(I)V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPendingCheckForTap:Lcom/color/widget/ColorBottomMenuView$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateUnsetPressedCallback(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    if-nez v0, :cond_0

    .line 982
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-direct {v0, p0, p1}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    .line 989
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->getPosition()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeUnsetPressCallback()V

    .line 985
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->setPosition(I)V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUnsetPressedState:Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method createDrawItem(Landroid/view/MenuItem;I)Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "position"    # I

    .prologue
    .line 610
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;-><init>(Lcom/color/widget/ColorBottomMenuView;Landroid/view/MenuItem;I)V

    return-object v0
.end method

.method getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {p0, v0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItemInternal(Lcom/color/widget/ColorBottomMenuView$DrawItems;I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    return-object v0
.end method

.method getDrawItemInternal(Lcom/color/widget/ColorBottomMenuView$DrawItems;I)Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .locals 1
    .param p1, "drawItems"    # Lcom/color/widget/ColorBottomMenuView$DrawItems;
    .param p2, "position"    # I

    .prologue
    .line 676
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 677
    invoke-virtual {p1, p2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdater(Ljava/util/List;Z)Landroid/animation/Animator;
    .locals 4
    .param p2, "cleared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->updateNextItems(Ljava/util/List;)V

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "anim":Landroid/animation/Animator;
    iget-boolean v2, p0, Lcom/color/widget/ColorBottomMenuView;->mIsUpdateLocked:Z

    if-nez v2, :cond_0

    .line 577
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    .line 578
    .local v1, "updater":Lcom/color/widget/ColorBottomMenuCallback$Updater;
    :goto_0
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v2

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v3}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/color/widget/ColorBottomMenuCallback$Updater;->getUpdater(II)Landroid/animation/Animator;

    move-result-object v0

    .line 582
    .end local v1    # "updater":Lcom/color/widget/ColorBottomMenuCallback$Updater;
    :cond_0
    return-object v0

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mDirectUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    goto :goto_0
.end method

.method public isItemEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v0

    return v0
.end method

.method isItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z
    .locals 2
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    const/4 v0, 0x0

    .line 705
    if-nez p1, :cond_0

    .line 708
    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x20

    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuViewFlags(II)Z
    invoke-static {p1, v0, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$300(Lcom/color/widget/ColorBottomMenuView$DrawItem;II)Z

    move-result v0

    goto :goto_0
.end method

.method public isItemPressed(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v0

    return v0
.end method

.method isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4000

    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemSelectedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v0

    return v0
.end method

.method isItemSelectedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    const/4 v0, 0x0

    .line 760
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public lockMenuUpdate()V
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string v2, "------------------lockMenuUpdate"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorBottomMenuView;->mIsUpdateLocked:Z

    .line 448
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 360
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->removeRunnables()V

    .line 361
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 364
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 296
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v5

    .line 298
    .local v5, "count":I
    if-gtz v5, :cond_0

    .line 316
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_4

    .line 302
    .local v7, "isPortrait":Z
    :goto_1
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getMeasuredWidth()I

    move-result v8

    .line 303
    .local v8, "measuredWidth":I
    const/4 v0, 0x3

    if-ne v5, v0, :cond_5

    if-eqz v7, :cond_5

    iget v2, p0, Lcom/color/widget/ColorBottomMenuView;->mNavKeyWidth:I

    .line 304
    .local v2, "itemWidth":I
    :goto_2
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->getMeasuredHeight()I

    move-result v3

    .line 305
    .local v3, "itemHeight":I
    mul-int/lit8 v0, v2, 0x3

    sub-int v0, v8, v0

    iget v9, p0, Lcom/color/widget/ColorBottomMenuView;->mNavExtraWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v0, v9

    div-int/lit8 v6, v0, 0x2

    .line 306
    .local v6, "leftSpace":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_6

    .line 307
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0, v4}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 308
    .local v1, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    invoke-virtual {v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->isBoundsChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mCachedWidth:I

    if-eq v0, v8, :cond_2

    :cond_1
    move-object v0, p0

    .line 309
    invoke-direct/range {v0 .. v7}, Lcom/color/widget/ColorBottomMenuView;->updateItemBounds(Lcom/color/widget/ColorBottomMenuView$DrawItem;IIIIIZ)V

    .line 311
    :cond_2
    invoke-virtual {v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0, p1, v4, v1}, Lcom/color/widget/ColorBottomMenuView;->onDrawIcon(Landroid/graphics/Canvas;ILcom/color/widget/ColorBottomMenuView$DrawItem;)I

    move-result v0

    invoke-direct {p0, p1, v4, v1, v0}, Lcom/color/widget/ColorBottomMenuView;->onDrawText(Landroid/graphics/Canvas;ILcom/color/widget/ColorBottomMenuView$DrawItem;I)V

    .line 306
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 301
    .end local v1    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .end local v2    # "itemWidth":I
    .end local v3    # "itemHeight":I
    .end local v4    # "i":I
    .end local v6    # "leftSpace":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measuredWidth":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 303
    .restart local v7    # "isPortrait":Z
    .restart local v8    # "measuredWidth":I
    :cond_5
    invoke-direct {p0, v5}, Lcom/color/widget/ColorBottomMenuView;->getIconWeight(I)I

    move-result v0

    div-int v2, v8, v0

    goto :goto_2

    .line 315
    .restart local v2    # "itemWidth":I
    .restart local v3    # "itemHeight":I
    .restart local v4    # "i":I
    .restart local v6    # "leftSpace":I
    :cond_6
    iput v8, p0, Lcom/color/widget/ColorBottomMenuView;->mCachedWidth:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 291
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorBottomMenuView;->setMeasuredDimension(II)V

    .line 292
    return-void
.end method

.method onPerformClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 764
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPerformClick"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->updatePerformClickCallback(I)V

    .line 770
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mPerformClick:Lcom/color/widget/ColorBottomMenuView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->performClick(I)Z

    .line 773
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 320
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->isMultiPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 325
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 326
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 327
    .local v0, "action":I
    invoke-direct {p0, v2, v3}, Lcom/color/widget/ColorBottomMenuView;->getTouchedPosition(II)I

    move-result v1

    .line 328
    .local v1, "position":I
    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_1
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->isItemEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 344
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/color/widget/ColorBottomMenuView;->onTouchDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/color/widget/ColorBottomMenuView;->onTouchUp(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 334
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/color/widget/ColorBottomMenuView;->onTouchCancel(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 349
    :pswitch_6
    invoke-direct {p0, p1, v1}, Lcom/color/widget/ColorBottomMenuView;->onTouchMove(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public performClick(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 587
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 588
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-eqz v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performClick="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->playSoundEffect(I)V

    .line 591
    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView;->performItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    .line 593
    :cond_0
    return v1
.end method

.method abstract performItemClick(Landroid/view/MenuItem;)Z
.end method

.method public performLongClick(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public setItemEnabled(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 512
    return-void
.end method

.method setItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V
    .locals 3
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "enabled"    # Z
    .param p3, "needsRefresh"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x20

    .line 687
    if-nez p1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuViewFlags(II)Z
    invoke-static {p1, v2, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$300(Lcom/color/widget/ColorBottomMenuView$DrawItem;II)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 693
    if-eqz p2, :cond_2

    .line 694
    invoke-virtual {p1, v2, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setMenuViewFlags(II)V

    .line 698
    :goto_1
    if-eqz p3, :cond_0

    .line 699
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->refreshItemState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    .line 700
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->invalidate()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {p1, v1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setMenuViewFlags(II)V

    goto :goto_1
.end method

.method public setItemPressed(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 533
    return-void
.end method

.method setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V
    .locals 2
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "pressed"    # Z
    .param p3, "needsRefresh"    # Z

    .prologue
    const/16 v1, 0x4000

    .line 712
    if-nez p1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 718
    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->addMenuPrivateFlags(I)V

    .line 724
    :goto_1
    if-eqz p3, :cond_0

    .line 725
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->refreshItemState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    .line 726
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->invalidate()V

    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->removeMenuPrivateFlags(I)V

    goto :goto_1
.end method

.method public setItemSelected(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemSelectedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 557
    return-void
.end method

.method setItemSelectedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V
    .locals 2
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p2, "selected"    # Z
    .param p3, "needsRefresh"    # Z

    .prologue
    const/4 v1, 0x4

    .line 738
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    # invokes: Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z
    invoke-static {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 744
    if-eqz p2, :cond_2

    .line 745
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->addMenuPrivateFlags(I)V

    .line 750
    :goto_1
    if-eqz p3, :cond_0

    .line 751
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->refreshItemState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)V

    .line 752
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->invalidate()V

    goto :goto_0

    .line 747
    :cond_2
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->removeMenuPrivateFlags(I)V

    goto :goto_1
.end method

.method public setMenuUpdateMode(I)V
    .locals 4
    .param p1, "updateMode"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------------setUpdateMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 438
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->setUpdater(Lcom/color/widget/ColorBottomMenuCallback$Updater;)V

    .line 441
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mDirectUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->setUpdater(Lcom/color/widget/ColorBottomMenuCallback$Updater;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAdapter:Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->mAnimateUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->setUpdater(Lcom/color/widget/ColorBottomMenuCallback$Updater;)V

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTabTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 488
    if-eqz p1, :cond_0

    .line 489
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 491
    :cond_0
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView;->mUserTextSize:I

    .line 502
    :cond_0
    return-void
.end method

.method public unlockMenuUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string v1, "------------------unlockMenuUpdate"

    invoke-static {v2, v0, v1}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 454
    iput-boolean v2, p0, Lcom/color/widget/ColorBottomMenuView;->mIsUpdateLocked:Z

    .line 455
    return-void
.end method

.method public update(Ljava/util/List;Z)V
    .locals 2
    .param p2, "cleared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 470
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView;->getUpdater(Ljava/util/List;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    .line 471
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/color/widget/ColorBottomMenuView$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorBottomMenuView$1;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 480
    :cond_1
    return-void
.end method

.method public updateMenuScrollData()V
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateMenuScrollData"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->updateCurrItems()V

    .line 424
    return-void
.end method

.method public updateMenuScrollPosition(IF)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 368
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v3}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v0

    .line 369
    .local v0, "currCount":I
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v3}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v2

    .line 370
    .local v2, "nextCount":I
    if-gtz v0, :cond_0

    if-gtz v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 374
    :cond_0
    if-gtz v0, :cond_1

    .line 375
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMenuScrollPosition : 1 : index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 376
    iget v3, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I

    int-to-float v3, v3

    sub-float v4, v7, p2

    mul-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorBottomMenuView;->setTranslationY(F)V

    .line 377
    const/4 v1, 0x1

    .line 386
    .local v1, "needsInvalidate":Z
    :goto_1
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView;->invalidate()V

    goto :goto_0

    .line 378
    .end local v1    # "needsInvalidate":Z
    :cond_1
    if-gtz v2, :cond_2

    .line 379
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMenuScrollPosition : 2 : index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 380
    iget v3, p0, Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I

    int-to-float v3, v3

    sub-float v4, v7, p2

    mul-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorBottomMenuView;->setTranslationY(F)V

    .line 381
    const/4 v1, 0x1

    .restart local v1    # "needsInvalidate":Z
    goto :goto_1

    .line 383
    .end local v1    # "needsInvalidate":Z
    :cond_2
    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMenuScrollPosition : 3 : index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p2, p1}, Lcom/color/widget/ColorBottomMenuView;->updateIconY(FI)Z

    move-result v1

    .restart local v1    # "needsInvalidate":Z
    goto :goto_1
.end method

.method public updateMenuScrollState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMenuScrollState : state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 394
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorBottomMenuView;->setMenuUpdateMode(I)V

    .line 395
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 396
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->clear()V

    .line 405
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorBottomMenuView;->setTranslationY(F)V

    goto :goto_0

    .line 408
    :pswitch_1
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuView;->resetNextItems()V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 412
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorBottomMenuView;->setVisibility(I)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateNextItems(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->clear()V

    .line 615
    if-nez p1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 618
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 620
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mUserTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 624
    :cond_1
    const/4 v12, 0x0

    .line 625
    .local v12, "isDoubleLines":Z
    const/16 v17, 0x5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 626
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_6

    .line 628
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/color/widget/ColorBottomMenuView;->initMenuState(I)V

    .line 630
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/MenuItem;

    .line 631
    .local v13, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 632
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v13}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 633
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v8, 0x1

    .line 634
    .local v8, "hasTitle":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/color/widget/ColorBottomMenuView;->createDrawItem(Landroid/view/MenuItem;I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v6

    .line 635
    .local v6, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {v6}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    .line 638
    .local v15, "textPaint":Landroid/text/TextPaint;
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->getIconState(Lcom/color/widget/ColorBottomMenuView$DrawItem;)[I

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 641
    .local v4, "color":I
    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 644
    .end local v4    # "color":I
    :cond_2
    invoke-interface {v13}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v7

    .line 645
    .local v7, "enabled":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/color/widget/ColorBottomMenuView;->getItemAlpha(Z)I

    move-result v3

    .line 646
    .local v3, "alpha":I
    if-eqz v8, :cond_3

    .line 647
    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 657
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v7, v1}, Lcom/color/widget/ColorBottomMenuView;->setItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->getTextNewLinePos(Ljava/lang/String;)I

    move-result v14

    .line 660
    .local v14, "newLinePos":I
    if-ltz v14, :cond_4

    .line 661
    invoke-virtual {v6, v14}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setNewLinePos(I)V

    .line 662
    const/4 v12, 0x1

    .line 626
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 633
    .end local v3    # "alpha":I
    .end local v6    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .end local v7    # "enabled":Z
    .end local v8    # "hasTitle":Z
    .end local v14    # "newLinePos":I
    .end local v15    # "textPaint":Landroid/text/TextPaint;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 665
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "menuItem":Landroid/view/MenuItem;
    .end local v16    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 667
    .restart local v6    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesIconMarginTop:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setIconMarginTop(I)V

    .line 668
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesTextMarginTop:I

    move/from16 v17, v0

    :goto_5
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setTextMarginTop(I)V

    .line 669
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mDoubleLinesDifferentSize:I

    move/from16 v17, v0

    :goto_6
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setDifferentSize(I)V

    goto :goto_3

    .line 672
    .end local v5    # "count":I
    .end local v6    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isDoubleLines":Z
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 667
    .restart local v5    # "count":I
    .restart local v6    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .restart local v9    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "isDoubleLines":Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineIconMarginTop:I

    move/from16 v17, v0

    goto :goto_4

    .line 668
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineTextMarginTop:I

    move/from16 v17, v0

    goto :goto_5

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorBottomMenuView;->mSingleLineDifferentSize:I

    move/from16 v17, v0

    goto :goto_6

    .line 672
    .end local v6    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    :cond_a
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
