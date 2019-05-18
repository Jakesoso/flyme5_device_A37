.class public Lcom/oppo/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field private static final MAX_NAME_NUM:I = 0x7

.field public static final MAX_SECTIONS_NUM:I = 0x1b

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final SEARCH_OFFSET:I = 0x1

.field private static STYLEABLE_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoTouchSearchView"

.field private static VIEW_SETS:[[I = null

.field private static final VIEW_STATE_ACCELERATED:I = 0x40

.field private static final VIEW_STATE_ACTIVATED:I = 0x20

.field private static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field private static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field private static final VIEW_STATE_ENABLED:I = 0x8

.field private static final VIEW_STATE_FOCUSED:I = 0x4

.field private static final VIEW_STATE_HOVERED:I = 0x80

.field private static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_PRESSED:I = 0x10

.field private static final VIEW_STATE_SELECTED:I = 0x2

.field private static VIEW_STATE_SETS:[[[I = null

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final WELL_DRAWABLE_POSITION:I

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private KEYS:[Ljava/lang/String;

.field private UNIONKEYS:[Ljava/lang/String;

.field private keyIndices:I

.field private lastKeyIndices:I

.field private layout:Landroid/widget/LinearLayout;

.field private mActivePointerId:I

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mBackgroundWidth:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFirstIsCharacter:Z

.field private mFirstLayout:Z

.field private mFontFace:Landroid/graphics/Typeface;

.field private mFrameChanged:Z

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private mKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

.field private mPopupDefaultHeight:I

.field private mPopupTextView:Landroid/widget/TextView;

.field private mPopupWinSubHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowHeight:I

.field private mPopupWindowLocalx:I

.field private mPopupWindowLocaly:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowRightMargin:I

.field private mPopupWindowTextColor:I

.field private mPopupWindowTextSize:I

.field private mPopupWindowTopMargin:I

.field private mPopupWindowWidth:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mPreviousIndex:I

.field protected mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSections:[Ljava/lang/String;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnionEnable:Z

.field private mUserTextColor:Landroid/content/res/ColorStateList;

.field private mUserTextSize:I

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z

.field private surname:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 279
    const/16 v8, 0x14

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    sput-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    .line 293
    sget-object v8, Landroid/R$styleable;->ViewDrawableStates:[I

    array-length v8, v8

    sput v8, Lcom/oppo/widget/OppoTouchSearchView;->STYLEABLE_LENGTH:I

    .line 294
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    array-length v8, v8

    div-int/lit8 v0, v8, 0x2

    .line 295
    .local v0, "NUM_BITS":I
    sget v8, Lcom/oppo/widget/OppoTouchSearchView;->STYLEABLE_LENGTH:I

    if-eq v0, v8, :cond_0

    .line 296
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 299
    :cond_0
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    array-length v8, v8

    new-array v4, v8, [I

    .line 300
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v8, Lcom/oppo/widget/OppoTouchSearchView;->STYLEABLE_LENGTH:I

    if-ge v1, v8, :cond_3

    .line 301
    sget-object v8, Landroid/R$styleable;->ViewDrawableStates:[I

    aget v7, v8, v1

    .line 302
    .local v7, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 303
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    aget v8, v8, v2

    if-ne v8, v7, :cond_1

    .line 304
    mul-int/lit8 v8, v1, 0x2

    aput v7, v4, v8

    .line 305
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    .line 302
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 300
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "j":I
    .end local v7    # "viewState":I
    :cond_3
    shl-int v8, v11, v0

    new-array v8, v8, [[[I

    sput-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_SETS:[[[I

    .line 310
    shl-int v8, v11, v0

    new-array v8, v8, [[I

    sput-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    .line 311
    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    array-length v8, v8

    if-ge v1, v8, :cond_6

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 313
    .local v3, "numBits":I
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    new-array v9, v3, [I

    aput-object v9, v8, v1

    .line 314
    const/4 v5, 0x0

    .line 315
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    array-length v8, v4

    if-ge v2, v8, :cond_5

    .line 316
    add-int/lit8 v8, v2, 0x1

    aget v8, v4, v8

    and-int/2addr v8, v1

    if-eqz v8, :cond_4

    .line 317
    sget-object v8, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    aget-object v8, v8, v1

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v8, v5

    move v5, v6

    .line 315
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 311
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 775
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    :cond_6
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    sput-object v8, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    .line 780
    new-instance v8, Lcom/oppo/widget/OppoTouchSearchView$1;

    invoke-direct {v8}, Lcom/oppo/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v8, Lcom/oppo/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 279
    nop

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
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 334
    const v0, 0xc01046e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 349
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    iput v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 159
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 173
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 175
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 177
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 182
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 183
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 185
    const-string v6, ""

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 228
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 230
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    .line 237
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 238
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    .line 241
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    .line 244
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    .line 245
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    .line 246
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    .line 248
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 249
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 250
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 252
    iput v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 253
    iput v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextSize:I

    .line 254
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    .line 261
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    .line 262
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    .line 350
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    .line 351
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 353
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v6, Loppo/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 357
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 359
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 361
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 364
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 366
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v8, v6, :cond_0

    .line 367
    const v6, 0xc050403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 370
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 372
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-ne v8, v6, :cond_1

    .line 373
    const v6, 0xc050404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 375
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    .line 378
    :cond_1
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 379
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v8, v6, :cond_2

    .line 380
    const v6, 0xc0d0404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 383
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 386
    const v6, 0xc060401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 388
    const/16 v6, 0x9

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 390
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    const v7, 0xc050406

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 393
    const v6, 0xc050408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    .line 395
    const v6, 0xc050407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    .line 397
    const v6, 0xc050433

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 398
    const v6, 0xc050436

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    .line 401
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 403
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    .line 404
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    .line 407
    const v6, 0xc040407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 410
    const v6, 0xc08040f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 412
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    .line 413
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 414
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    .line 415
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 416
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 417
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 419
    :cond_3
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 421
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I

    if-ne v8, v6, :cond_4

    .line 422
    const v6, 0xc05048d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 425
    :cond_4
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    if-ne v8, v6, :cond_5

    .line 426
    const v6, 0xc0504a0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    .line 433
    :cond_5
    const-string v6, "persist.sys.oppo.region"

    const-string v7, "CN"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "region":Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 435
    iget-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v6, :cond_6

    .line 436
    const v6, 0xc070400

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    .line 445
    :goto_0
    const v6, 0xc070401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    .line 467
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 469
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v6, 0xc090409

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 472
    .local v2, "mPopupContent":Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 473
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 474
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 476
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 477
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v7, 0xc030404

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 478
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    const v6, 0xc020402

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    .line 481
    const v6, 0xc0204b1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    .line 483
    const v6, 0xc020403

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    .line 485
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    const/4 v4, 0x0

    .line 487
    iget-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v6, :cond_8

    .line 488
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->initIconState()V

    .line 493
    :goto_1
    return-void

    .line 438
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "mPopupContent":Landroid/view/ViewGroup;
    :cond_6
    const v6, 0xc070402

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_7
    const v6, 0xc07040f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 490
    .restart local v1    # "inflate":Landroid/view/LayoutInflater;
    .restart local v2    # "mPopupContent":Landroid/view/ViewGroup;
    :cond_8
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->initUnionState()V

    goto :goto_1
.end method

.method static synthetic access$100()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private drawKeys(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1556
    const/4 v5, 0x0

    .line 1557
    .local v5, "left":I
    const/4 v11, 0x0

    .line 1558
    .local v11, "top":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v12, :cond_0

    .line 1559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    .line 1561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v11

    .line 1562
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v5, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1566
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v12

    .line 1567
    .local v4, "keysCount":I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v12, v4, -0x1

    if-ge v2, v12, :cond_2

    .line 1568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 1569
    .local v6, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v7

    .line 1570
    .local v7, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v1, v12, v2

    .line 1571
    .local v1, "character":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1572
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v8, v12

    .line 1573
    .local v8, "textWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v13, v8

    div-int/lit8 v13, v13, 0x2

    add-int v9, v12, v13

    .line 1574
    .local v9, "textX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    add-int v10, v12, v13

    .line 1575
    .local v10, "textY":I
    int-to-float v12, v9

    int-to-float v13, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v13, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1567
    .end local v8    # "textWidth":I
    .end local v9    # "textX":I
    .end local v10    # "textY":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1578
    .end local v1    # "character":Ljava/lang/String;
    .end local v6    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v7    # "paint":Landroid/text/TextPaint;
    :cond_2
    add-int/lit8 v3, v4, -0x1

    .line 1579
    .local v3, "j":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    .line 1581
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v11

    .line 1582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v5, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1586
    :cond_3
    return-void
.end method

.method private drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mkeys"    # [Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    .line 2408
    return-void
.end method

.method private drawUnionKeys(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1511
    const/4 v5, 0x0

    .line 1512
    .local v5, "left":I
    const/4 v11, 0x0

    .line 1514
    .local v11, "top":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v12, :cond_0

    .line 1515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    .line 1517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v11

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v5, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1522
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v4, v12

    .line 1524
    .local v4, "keysCount":I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v12, v4, -0x1

    if-ge v2, v12, :cond_2

    .line 1525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 1526
    .local v6, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v7

    .line 1527
    .local v7, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v1, v12, v2

    .line 1528
    .local v1, "character":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1529
    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v8, v12

    .line 1530
    .local v8, "textWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v13, v8

    div-int/lit8 v13, v13, 0x2

    add-int v9, v12, v13

    .line 1531
    .local v9, "textX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    iget v14, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    add-int v10, v12, v13

    .line 1532
    .local v10, "textY":I
    int-to-float v12, v9

    int-to-float v13, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v13, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1524
    .end local v8    # "textWidth":I
    .end local v9    # "textX":I
    .end local v10    # "textY":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1536
    .end local v1    # "character":Ljava/lang/String;
    .end local v6    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v7    # "paint":Landroid/text/TextPaint;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    :goto_1
    add-int/lit8 v12, v4, -0x2

    if-ge v2, v12, :cond_4

    .line 1537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    .line 1539
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v11

    .line 1540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v5, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1536
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1545
    :cond_4
    add-int/lit8 v3, v4, -0x1

    .line 1546
    .local v3, "j":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    .line 1548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v12}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v11

    .line 1549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v5, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1553
    :cond_5
    return-void
.end method

.method private findCell(IIIILjava/util/ArrayList;)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1196
    .local p5, "mkeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    if-le p3, p4, :cond_1

    .line 1197
    const/4 v1, -0x1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1199
    :cond_1
    add-int v3, p3, p4

    div-int/lit8 v1, v3, 0x2

    .line 1205
    .local v1, "middle":I
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int v2, v3, v4

    .line 1206
    .local v2, "top":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int v0, v2, v3

    .line 1208
    .local v0, "bottom":I
    if-lt p2, v2, :cond_2

    if-lt p2, v0, :cond_0

    .line 1210
    :cond_2
    if-ge p2, v2, :cond_3

    .line 1211
    add-int/lit8 p4, v1, -0x1

    .line 1212
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v1

    goto :goto_0

    .line 1214
    :cond_3
    add-int/lit8 p3, v1, 0x1

    .line 1215
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v1

    goto :goto_0
.end method

.method private findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2043
    const/4 v0, 0x0

    return v0
.end method

.method private findKeysDrawableExp(Landroid/content/res/Resources;)V
    .locals 14
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v11, 0xc070410

    const/4 v13, 0x0

    .line 2080
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 2083
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 2085
    .local v7, "mKeyNames":[Ljava/lang/String;
    array-length v2, v7

    .line 2086
    .local v2, "count":I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 2087
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    .line 2089
    const/4 v4, 0x0

    .line 2090
    .local v4, "i":I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2091
    .local v10, "strPrefix":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 2093
    .local v3, "extra":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2095
    .local v9, "res":I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 2096
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    const v12, 0xc08040f

    invoke-virtual {p1, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 2098
    add-int/lit8 v4, v4, 0x1

    .line 2091
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2100
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v9    # "res":I
    :cond_0
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 2101
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 2102
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    .line 2103
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    .line 2104
    return-void
.end method

.method private findKeysPressedDrawableExp(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v11, 0xc070410

    .line 2107
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 2109
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2112
    .local v5, "mKeyPressedNames":[Ljava/lang/String;
    array-length v6, v5

    .line 2113
    .local v6, "num":I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 2114
    const/4 v2, 0x0

    .line 2115
    .local v2, "i":I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2116
    .local v9, "strPrefix":Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 2118
    .local v10, "tmp":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_pressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2119
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2120
    .local v8, "res":I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 2121
    add-int/lit8 v2, v2, 0x1

    .line 2116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2123
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v8    # "res":I
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "whichChar"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 806
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 807
    :cond_0
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- error,  return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 857
    :cond_1
    :goto_0
    return v1

    .line 815
    :cond_2
    const-string v4, "#"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 819
    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "region":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 821
    const/4 v1, 0x0

    goto :goto_0

    .line 823
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 828
    .end local v2    # "region":Ljava/lang/String;
    :cond_4
    if-le p1, p2, :cond_5

    .line 829
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- not find , return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 830
    goto :goto_0

    .line 833
    :cond_5
    add-int v4, p1, p2

    div-int/lit8 v1, v4, 0x2

    .line 834
    .local v1, "middle":I
    if-le v1, p2, :cond_6

    move v1, v3

    .line 835
    goto :goto_0

    .line 840
    :cond_6
    array-length v4, p0

    if-ne v4, v1, :cond_7

    move v1, v3

    .line 841
    goto :goto_0

    .line 848
    :cond_7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "lowerCharSequence":Ljava/lang/CharSequence;
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 853
    add-int/lit8 p1, v1, 0x1

    .line 854
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 856
    :cond_8
    add-int/lit8 p2, v1, -0x1

    .line 857
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "whichChar"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 788
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v1, v2

    .line 802
    :cond_1
    :goto_0
    return v1

    .line 791
    :cond_2
    array-length v0, p0

    .line 792
    .local v0, "charCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 797
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 802
    goto :goto_0
.end method

.method private getCharacterStartIndex()I
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyIndices(IILjava/util/ArrayList;)I
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "mkeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    const/4 v3, 0x0

    .line 1221
    const/4 v7, -0x1

    .line 1228
    .local v7, "primaryIndex":I
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v6, v0

    .line 1232
    .local v6, "keyCount":I
    add-int/lit8 v4, v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v7

    .line 1249
    const/4 v0, -0x1

    if-ne v0, v7, :cond_0

    .line 1250
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 1251
    const/4 v7, 0x0

    .line 1259
    :cond_0
    :goto_0
    return v7

    .line 1252
    :cond_1
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_2

    .line 1253
    add-int/lit8 v7, v6, -0x1

    goto :goto_0

    .line 1254
    :cond_2
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 1255
    div-int/lit8 v7, v6, 0x2

    goto :goto_0
.end method

.method private initIconState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 557
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v4

    .line 558
    .local v3, "length":I
    if-gez v3, :cond_1

    .line 597
    :cond_0
    return-void

    .line 563
    :cond_1
    :try_start_0
    const-string v4, "system/fonts/Roboto-Light.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    :goto_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v4, :cond_2

    .line 571
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 572
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, p0, v6, v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_3

    .line 576
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v8, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "system/fonts/Roboto-Regular.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    goto :goto_0

    .line 566
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    goto :goto_0

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 579
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, p0, v6, v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    .line 582
    sget-object v4, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_SETS:[[[I

    sget-object v5, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    array-length v5, v5

    new-array v5, v5, [[I

    aput-object v5, v4, v2

    .line 583
    sget-object v4, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    sget-object v5, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_SETS:[[[I

    aget-object v5, v5, v2

    sget-object v6, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_SETS:[[I

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 585
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 586
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 587
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_0

    .line 588
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    sget v5, Lcom/oppo/widget/OppoTouchSearchView;->STYLEABLE_LENGTH:I

    new-array v5, v5, [I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/oppo/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 591
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 592
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 594
    .local v0, "color":I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 587
    .end local v0    # "color":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private initUnionState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 497
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v2, v3

    .line 498
    .local v2, "length":I
    if-gez v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_3

    .line 507
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, p0, v6, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 509
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    :goto_2
    add-int/lit8 v3, v2, -0x2

    if-ge v0, v3, :cond_4

    .line 511
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    .line 513
    .local v1, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    packed-switch v0, :pswitch_data_0

    .line 510
    :goto_3
    :pswitch_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 515
    :pswitch_1
    const-string v3, "B"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 516
    const-string v3, "C"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 519
    :pswitch_2
    const-string v3, "E"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 520
    const-string v3, "F"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 523
    :pswitch_3
    const-string v3, "H"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 526
    :pswitch_4
    const-string v3, "J"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 527
    const-string v3, "K"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 530
    :pswitch_5
    const-string v3, "M"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 531
    const-string v3, "N"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 534
    :pswitch_6
    const-string v3, "P"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 535
    const-string v3, "Q"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 538
    :pswitch_7
    const-string v3, "S"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 541
    :pswitch_8
    const-string v3, "U"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 542
    const-string v3, "V"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 545
    :pswitch_9
    const-string v3, "X"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 546
    const-string v3, "Y"

    iput-object v3, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 551
    .end local v1    # "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchWellDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private invalidateKey(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v12, -0x1

    .line 1324
    const/4 v2, -0x1

    .line 1327
    .local v2, "index":I
    const/4 v7, 0x0

    .line 1329
    .local v7, "willDisplay":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v8, :cond_4

    .line 1336
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v8}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(IILjava/util/ArrayList;)I

    move-result v2

    .line 1343
    :goto_0
    iget-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v8, :cond_5

    .line 1344
    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1345
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v7, v8, v9

    .line 1354
    :goto_1
    if-eqz v7, :cond_3

    .line 1355
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v8

    iget v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    sub-int v10, v8, v10

    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v8

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v8, v11

    invoke-direct {p0, v9, v10, v8}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 1356
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1357
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v8, :cond_0

    .line 1358
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v8, v9}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_0
    iget-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v8, :cond_3

    .line 1361
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v8

    .line 1362
    .local v4, "keysCount":I
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-eq v12, v8, :cond_1

    .line 1364
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/oppo/widget/OppoTouchSearchView;->setIconPressed(IZ)V

    .line 1365
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1366
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1367
    .local v6, "text":Ljava/lang/String;
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {p0, v8, v1}, Lcom/oppo/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1368
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1369
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1370
    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_1

    .line 1372
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v5

    .line 1373
    .local v5, "state":[I
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1374
    .local v0, "color":I
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1375
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1376
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1377
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1380
    .end local v0    # "color":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "state":[I
    .end local v6    # "text":Ljava/lang/String;
    :cond_1
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    if-eq v12, v8, :cond_2

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    if-eq v8, v9, :cond_2

    .line 1381
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoTouchSearchView;->setItemRestore(I)V

    .line 1383
    :cond_2
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPreviousIndex:I

    .line 1407
    .end local v4    # "keysCount":I
    :cond_3
    return-void

    .line 1339
    :cond_4
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v8}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(IILjava/util/ArrayList;)I

    move-result v2

    goto/16 :goto_0

    .line 1347
    :cond_5
    new-instance v3, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    .line 1348
    .local v3, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1349
    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v8, v8, v9

    iput-object v8, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1350
    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v3, p1, p2, v8, v9}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private invalidateKeyExp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2077
    return-void
.end method

.method private isSectionsValidate()Z
    .locals 1

    .prologue
    .line 2130
    const/4 v0, 0x0

    return v0
.end method

.method private loadKeysExp()V
    .locals 0

    .prologue
    .line 2229
    return-void
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 8
    .param p1, "display"    # Ljava/lang/CharSequence;
    .param p2, "key_x"    # I
    .param p3, "key_y"    # I

    .prologue
    const/4 v6, 0x0

    .line 1429
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1439
    .local v0, "coordinate":[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 1441
    aget v3, v0, v6

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 1442
    .local v1, "localx":I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 1444
    .local v2, "localy":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 1445
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1453
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1454
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 1456
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1459
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1464
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onKeyChangedExp(Ljava/lang/CharSequence;II)V
    .locals 8
    .param p1, "display"    # Ljava/lang/CharSequence;
    .param p2, "key_x"    # I
    .param p3, "key_y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2334
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 2378
    :goto_0
    return-void

    .line 2341
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2345
    .local v0, "coordinate":[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 2356
    aget v3, v0, v7

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 2358
    .local v1, "localx":I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 2360
    .local v2, "localy":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 2361
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 2368
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2369
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 2371
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2372
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 2374
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1411
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1416
    .local v1, "pointerId":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1420
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1421
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1426
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIconPressed(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 652
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    .local v0, "privateFlags":I
    if-eqz p2, :cond_0

    .line 654
    or-int/lit16 v0, v0, 0x4000

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-void

    .line 656
    :cond_0
    and-int/lit16 v0, v0, -0x4001

    goto :goto_0
.end method

.method private setItemRestore(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 661
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/oppo/widget/OppoTouchSearchView;->setIconPressed(IZ)V

    .line 662
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 663
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getText()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 665
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 666
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 667
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 669
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v2

    .line 670
    .local v2, "state":[I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 671
    .local v0, "color":I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTouchSearchView$Key;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 672
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 673
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 675
    .end local v0    # "color":I
    .end local v2    # "state":[I
    :cond_0
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->whetherUnion()V

    .line 993
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v7

    .line 994
    .local v2, "keysCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 995
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    new-instance v8, Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    :cond_0
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    .line 998
    .local v4, "topPadding":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 1003
    .local v0, "exactHeight":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 1004
    div-int v7, v0, v2

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 1006
    rem-int v3, v0, v2

    .line 1007
    .local v3, "residual":I
    shr-int/lit8 v7, v3, 0x1

    add-int/2addr v4, v7

    .line 1009
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 1024
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1027
    const/4 v5, 0x0

    .line 1028
    .local v5, "x":I
    move v6, v4

    .line 1042
    .local v6, "y":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1043
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setLeft(I)V

    .line 1044
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setTop(I)V

    .line 1045
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v6, v7

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1048
    :cond_1
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 6

    .prologue
    .line 1182
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    if-nez v2, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1184
    .local v0, "exactleft":I
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    add-int v1, v0, v2

    .line 1192
    .local v1, "exactright":I
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    .line 1193
    return-void

    .line 1185
    .end local v0    # "exactleft":I
    .end local v1    # "exactright":I
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1186
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v1, v2, v3

    .line 1187
    .restart local v1    # "exactright":I
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    sub-int v0, v1, v2

    .restart local v0    # "exactleft":I
    goto :goto_0

    .line 1189
    .end local v0    # "exactleft":I
    .end local v1    # "exactright":I
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 1190
    .restart local v0    # "exactleft":I
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundWidth:I

    add-int v1, v0, v2

    .restart local v1    # "exactright":I
    goto :goto_0
.end method

.method private updateExp(Z)V
    .locals 0
    .param p1, "load"    # Z

    .prologue
    .line 2331
    return-void
.end method

.method private whetherUnion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 944
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-nez v1, :cond_0

    .line 945
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 970
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v0, v1, v2

    .line 954
    .local v0, "exactHeight":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 955
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 960
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v1, v2, :cond_1

    .line 961
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 962
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 963
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 965
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 5

    .prologue
    .line 1617
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1618
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_1

    .line 1623
    const-string v2, "persist.sys.oppo.region"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "region":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1625
    .local v1, "size":I
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1631
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1633
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyIndices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyDrawables:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ge v2, v1, :cond_1

    .line 1645
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->setItemRestore(I)V

    .line 1651
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1652
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1658
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1661
    .end local v0    # "region":Ljava/lang/String;
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1663
    :cond_2
    return-void

    .line 1654
    .restart local v0    # "region":Ljava/lang/String;
    .restart local v1    # "size":I
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method protected getIconState(I)[I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 611
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 612
    .local v0, "privateFlags":I
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    .line 619
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/oppo/widget/OppoTouchSearchView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    and-int/lit16 v0, v0, -0x401

    .line 617
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v0

    .line 606
    .local v0, "state":[I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 609
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 741
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 742
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 688
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 689
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    .line 690
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onNameKey(Ljava/lang/CharSequence;)V

    .line 692
    :cond_0
    return-void
.end method

.method protected onCreateIconState(II)[I
    .locals 7
    .param p1, "index"    # I
    .param p2, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 623
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 625
    .local v2, "mViewFlags":I
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 626
    .local v3, "privateFlags":I
    const/4 v4, 0x0

    .line 627
    .local v4, "viewStateIndex":I
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_0

    .line 628
    or-int/lit8 v4, v4, 0x10

    .line 629
    :cond_0
    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_1

    .line 630
    or-int/lit8 v4, v4, 0x8

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 632
    or-int/lit8 v4, v4, 0x1

    .line 634
    :cond_2
    sget-object v5, Lcom/oppo/widget/OppoTouchSearchView;->VIEW_STATE_SETS:[[[I

    aget-object v5, v5, p1

    aget-object v0, v5, v4

    .line 639
    .local v0, "IconState":[I
    if-nez p2, :cond_3

    .line 649
    .end local v0    # "IconState":[I
    :goto_0
    return-object v0

    .line 643
    .restart local v0    # "IconState":[I
    :cond_3
    if-eqz v0, :cond_4

    .line 644
    array-length v5, v0

    add-int/2addr v5, p2

    new-array v1, v5, [I

    .line 645
    .local v1, "fullState":[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_1
    move-object v0, v1

    .line 649
    goto :goto_0

    .line 647
    .end local v1    # "fullState":[I
    :cond_4
    new-array v1, p2, [I

    .restart local v1    # "fullState":[I
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 745
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 746
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 747
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1471
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1480
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_1

    .line 1484
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;)V

    .line 1507
    .end local v0    # "region":Ljava/lang/String;
    :goto_0
    return-void

    .line 1494
    .restart local v0    # "region":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0

    .line 1505
    .end local v0    # "region":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->drawUnionKeys(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 1149
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1154
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 1158
    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1160
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1161
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1170
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1171
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 1173
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 1174
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 1177
    .end local v0    # "region":Ljava/lang/String;
    :cond_2
    return-void

    .line 1163
    .restart local v0    # "region":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1164
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1166
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1267
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1268
    .local v2, "pointerId":I
    if-lez v2, :cond_0

    .line 1311
    :goto_0
    return v7

    .line 1272
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1274
    .local v0, "action":I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v7, v8

    .line 1311
    goto :goto_0

    .line 1276
    :pswitch_1
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 1277
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1278
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1281
    :pswitch_2
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1282
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 1283
    .local v5, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 1288
    .local v6, "y":I
    const-string v7, "persist.sys.oppo.region"

    const-string v9, "CN"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1289
    .local v4, "region":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1290
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKey(II)V

    goto :goto_1

    .line 1292
    :cond_1
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKeyExp(II)V

    goto :goto_1

    .line 1299
    .end local v3    # "pointerIndex":I
    .end local v4    # "region":Ljava/lang/String;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_3
    const/4 v9, -0x1

    iput v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1300
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 1301
    const-string v7, ""

    iput-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1302
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto :goto_1

    .line 1305
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 599
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 600
    .local v0, "privateFlags":I
    or-int/lit16 v0, v0, 0x400

    .line 601
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoTouchSearchView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    .line 603
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1715
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1716
    return-void
.end method

.method public setCharTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1990
    if-eqz p1, :cond_0

    .line 1991
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 1993
    :cond_0
    return-void
.end method

.method public setCharTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1995
    if-eqz p1, :cond_0

    .line 1996
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUserTextSize:I

    .line 1998
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 734
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 735
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 737
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setName([Ljava/lang/String;)V
    .locals 10
    .param p1, "firstname"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1666
    array-length v3, p1

    .line 1668
    .local v3, "length":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1669
    .local v4, "resources":Landroid/content/res/Resources;
    if-lez v3, :cond_0

    .line 1670
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc08049f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1672
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1673
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    const v7, 0xc0804e2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1683
    :goto_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1684
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1686
    .local v1, "inflate":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1688
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 1689
    const v6, 0xc090450

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1691
    .local v5, "textview":Landroid/widget/TextView;
    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1693
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1694
    const v6, 0xc0804ee

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1677
    .end local v0    # "i":I
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "textview":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc0804a0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1679
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1680
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1697
    .restart local v0    # "i":I
    .restart local v1    # "inflate":Landroid/view/LayoutInflater;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x7

    if-le v3, v6, :cond_3

    .line 1698
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/lit8 v7, v7, 0x7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1703
    :goto_2
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1704
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/PopupWindow;->update(II)V

    .line 1706
    :cond_2
    return-void

    .line 1701
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    goto :goto_2
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "character"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1092
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1093
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/PopupWindow;->update(II)V

    .line 1098
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    const/16 v0, 0x41

    .line 1100
    .local v0, "charA":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1101
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    const/4 v2, 0x1

    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1105
    .local v1, "keysCount":I
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v3, v1, -0x1

    if-le v2, v3, :cond_3

    .line 1122
    :cond_1
    :goto_1
    return-void

    .line 1095
    .end local v0    # "charA":C
    .end local v1    # "keysCount":I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, p0, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1108
    .restart local v0    # "charA":C
    .restart local v1    # "keysCount":I
    :cond_3
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_4

    .line 1118
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1119
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1121
    :cond_4
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    goto :goto_1
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 7
    .param p1, "character"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1053
    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, "region":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1055
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->setPopupTextViewExp(Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1066
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const/16 v0, 0x41

    .line 1068
    .local v0, "charA":C
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1069
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1070
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1072
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v3

    .line 1073
    .local v1, "keysCount":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_0

    .line 1076
    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v3, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1087
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0

    .line 1063
    .end local v0    # "charA":C
    .end local v1    # "keysCount":I
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public setPopupTextViewExp(Ljava/lang/String;)V
    .locals 0
    .param p1, "character"    # Ljava/lang/String;

    .prologue
    .line 2030
    return-void
.end method

.method public setPopupWindowSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1781
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-eq v0, p2, :cond_1

    .line 1782
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 1783
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1784
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1785
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1786
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1788
    :cond_1
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 1821
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    if-eq v0, p1, :cond_0

    .line 1822
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 1823
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1826
    :cond_0
    return-void
.end method

.method public setPopupWindowTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 1808
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-eq v0, p1, :cond_0

    .line 1809
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 1810
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1811
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1813
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 1797
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1798
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1800
    :cond_0
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 17
    .param p1, "sections"    # [Ljava/lang/Object;
    .param p2, "counts"    # [I

    .prologue
    .line 2135
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2136
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " "

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 2137
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 2202
    :goto_0
    return-void

    .line 2142
    :cond_1
    const/4 v12, 0x0

    .local v12, "start":I
    const/4 v9, 0x0

    .line 2143
    .local v9, "secStart":I
    const/4 v14, 0x0

    aget v14, p2, v14

    const/high16 v15, -0x80000000

    if-ne v14, v15, :cond_2

    .line 2144
    const/4 v9, 0x1

    .line 2147
    :cond_2
    move-object/from16 v0, p1

    array-length v8, v0

    .line 2148
    .local v8, "secLength":I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 2149
    .local v2, "cntLength":I
    const/16 v14, 0x1b

    if-le v8, v14, :cond_7

    .line 2151
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 2153
    const/16 v14, 0x17

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 2154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 2155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v14, p1, v9

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 2156
    add-int/lit8 v12, v12, 0x2

    .line 2157
    add-int/lit8 v9, v9, 0x1

    .line 2159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x16

    add-int/lit8 v14, v8, -0x1

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 2160
    add-int/lit8 v2, v2, -0x1

    .line 2162
    invoke-virtual/range {p2 .. p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 2165
    .local v1, "cloneCnt":[I
    const/16 v5, 0x14

    .line 2166
    .local v5, "length":I
    :goto_1
    if-lez v5, :cond_5

    .line 2167
    const/4 v7, 0x0

    .local v7, "pos":I
    const/4 v6, 0x0

    .line 2168
    .local v6, "max":I
    move v3, v9

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 2169
    aget v14, v1, v3

    if-le v14, v6, :cond_3

    .line 2170
    aget v6, v1, v3

    .line 2171
    move v7, v3

    .line 2168
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2174
    :cond_4
    const/4 v14, 0x0

    aput v14, v1, v7

    .line 2175
    add-int/lit8 v5, v5, -0x1

    .line 2176
    goto :goto_1

    .line 2178
    .end local v3    # "i":I
    .end local v6    # "max":I
    .end local v7    # "pos":I
    :cond_5
    move v4, v9

    .local v4, "j":I
    move v13, v12

    .end local v12    # "start":I
    .local v13, "start":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 2179
    aget v14, v1, v4

    if-nez v14, :cond_9

    .line 2180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "start":I
    .restart local v12    # "start":I
    aget-object v14, p1, v4

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    .line 2178
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v13, v12

    .end local v12    # "start":I
    .restart local v13    # "start":I
    goto :goto_3

    :cond_6
    move v12, v13

    .line 2200
    .end local v1    # "cloneCnt":[I
    .end local v4    # "j":I
    .end local v5    # "length":I
    .end local v13    # "start":I
    .restart local v12    # "start":I
    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 2201
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto/16 :goto_0

    .line 2186
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 2188
    add-int/lit8 v11, v8, 0x1

    .line 2189
    .local v11, "size":I
    sub-int/2addr v11, v9

    .line 2191
    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 2192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 2193
    add-int/lit8 v12, v12, 0x1

    move v10, v9

    .end local v9    # "secStart":I
    .local v10, "secStart":I
    move v13, v12

    .line 2195
    .end local v12    # "start":I
    .restart local v13    # "start":I
    :goto_6
    if-ge v10, v8, :cond_8

    .line 2196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "start":I
    .restart local v12    # "start":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "secStart":I
    .restart local v9    # "secStart":I
    aget-object v14, p1, v10

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    move v10, v9

    .end local v9    # "secStart":I
    .restart local v10    # "secStart":I
    move v13, v12

    .end local v12    # "start":I
    .restart local v13    # "start":I
    goto :goto_6

    :cond_8
    move v9, v10

    .end local v10    # "secStart":I
    .restart local v9    # "secStart":I
    move v12, v13

    .end local v13    # "start":I
    .restart local v12    # "start":I
    goto :goto_5

    .end local v11    # "size":I
    .end local v12    # "start":I
    .restart local v1    # "cloneCnt":[I
    .restart local v4    # "j":I
    .restart local v5    # "length":I
    .restart local v13    # "start":I
    :cond_9
    move v12, v13

    .end local v13    # "start":I
    .restart local v12    # "start":I
    goto :goto_4
.end method

.method public setTouchBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1744
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .line 1137
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 3
    .param p1, "unionEnable"    # Z

    .prologue
    .line 1752
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v1, p1, :cond_0

    .line 1753
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 1763
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1765
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1770
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1772
    .end local v0    # "region":Ljava/lang/String;
    :cond_0
    return-void

    .line 1767
    .restart local v0    # "region":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public startPostDelayed()V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method
