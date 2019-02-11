.class public Lcom/oppo/widget/OppoNumberPicker;
.super Landroid/widget/LinearLayout;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoNumberPicker$CustomEditText;,
        Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;,
        Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;,
        Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;,
        Lcom/oppo/widget/OppoNumberPicker$Formatter;,
        Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;,
        Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_DIR:Ljava/lang/String; = "/data/thaicalendar/"

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_FILE:Ljava/lang/String; = "enable_state.properties"

.field public static final KEY_THAI_CALENDAR_ENABLE_STATE:Ljava/lang/String; = "key_thai_calendar_enable_state"

.field private static final LOG_TAG:Ljava/lang/String; = "OppoNumberPicker"

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field mBlueEnd:I

.field mBlueStart:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeIndexDistance:I

.field private mCheckBeginEditOnUpEvent:Z

.field private mClickSoundId:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

.field mGreenEnd:I

.field mGreenStart:I

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field mIsBold:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private mLunarLeap11:Ljava/lang/String;

.field private mLunarLeap12:Ljava/lang/String;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNumberPickerPaddingLeft:I

.field private mNumberPickerPaddingRight:I

.field private mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field mRedEnd:I

.field mRedStart:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mTempRect:Landroid/graphics/Rect;

.field mTextEnd:I

.field private final mTextSize:I

.field mTextStart:I

.field private mThaiCalendarState:Z

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "OppoNumberPicker"

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TAG:Ljava/lang/String;

    .line 166
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 232
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    .line 248
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoNumberPicker$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    return-void

    .line 232
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 611
    const v0, 0xc010401

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 612
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 622
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/16 v18, 0x4a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 111
    const/16 v18, 0x4a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 112
    const/16 v18, 0x4a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 114
    const/16 v18, 0xb

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 115
    const/16 v18, 0x98

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 116
    const/16 v18, 0x4a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 118
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 119
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 352
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 357
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 362
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 379
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 507
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 512
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 2263
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 625
    sget-object v18, Landroid/R$styleable;->NumberPicker:[I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 627
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    .line 631
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    .line 633
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 636
    new-instance v18, Landroid/media/SoundPool;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x3

    invoke-direct/range {v18 .. v21}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    .line 637
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/media/audio/ui/numberpicker_click.ogg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    .line 643
    sget-object v18, Loppo/R$styleable;->OppoNumberPicker:[I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 648
    .local v13, "oppoAttributesArray":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingLeft:I

    .line 650
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingRight:I

    .line 668
    const/16 v18, 0x4

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    .line 670
    const/16 v18, 0x5

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 674
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "minHeight > maxHeight"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 676
    :cond_0
    const/16 v18, 0x6

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    .line 678
    const/16 v18, 0x7

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 681
    const/16 v18, 0x8

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    .line 683
    const/16 v18, 0xa

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 685
    const/16 v18, 0x9

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 687
    const/16 v18, 0xb

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIsBold:Z

    .line 690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 691
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "minWidth > maxWidth"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    .line 694
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10e0002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 704
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 705
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 709
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v18, 0xc090400

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 711
    new-instance v11, Lcom/oppo/widget/OppoNumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/oppo/widget/OppoNumberPicker$2;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 727
    .local v11, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v12, Lcom/oppo/widget/OppoNumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oppo/widget/OppoNumberPicker$3;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 741
    .local v12, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->isThaiCalendarEnabled()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 744
    const v18, 0xc020426

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 749
    const v18, 0xc020427

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 754
    const v18, 0xc020428

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;

    invoke-direct/range {v21 .. v22}, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 763
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 764
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    .line 765
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    .line 766
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v18

    div-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    .line 771
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040402

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040403

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    .line 774
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 775
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 776
    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 781
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc060400

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 782
    .local v8, "endColor":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc060408

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 786
    .local v17, "startColor":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc0504b7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mChangeIndexDistance:I

    .line 788
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 789
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 791
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 792
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 794
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 795
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 797
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 799
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 800
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 803
    const-string v18, "selectorPaintAlpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 807
    .local v16, "showIncrementButton":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 809
    .local v15, "showDecrementButton":Landroid/animation/ObjectAnimator;
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v16, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    new-instance v19, Lcom/oppo/widget/OppoNumberPicker$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/oppo/widget/OppoNumberPicker$4;-><init>(Lcom/oppo/widget/OppoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 837
    new-instance v18, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v18 .. v21}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 838
    new-instance v18, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v21, 0x40200000    # 2.5f

    invoke-direct/range {v20 .. v21}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v18 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 843
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 845
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 854
    :cond_2
    :goto_1
    return-void

    .line 693
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    .end local v8    # "endColor":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "showDecrementButton":Landroid/animation/ObjectAnimator;
    .end local v16    # "showIncrementButton":Landroid/animation/ObjectAnimator;
    .end local v17    # "startColor":I
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 850
    .restart local v7    # "configuration":Landroid/view/ViewConfiguration;
    .restart local v8    # "endColor":I
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "showDecrementButton":Landroid/animation/ObjectAnimator;
    .restart local v16    # "showIncrementButton":Landroid/animation/ObjectAnimator;
    .restart local v17    # "startColor":I
    :cond_4
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_1

    .line 362
    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
    .end array-data

    .line 803
    :array_1
    .array-data 4
        0xff
        0xff
    .end array-data

    .line 805
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 807
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoNumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoNumberPicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoNumberPicker;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoNumberPicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoNumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoNumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .param p1, "current"    # I

    .prologue
    .line 1656
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1668
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1661
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1663
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1664
    .local v0, "previous":I
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 1665
    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->notifyChange(II)V

    .line 1666
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->playSoundEffect()V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1677
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1679
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1681
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1682
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1683
    if-eqz p1, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1690
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1698
    :goto_1
    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1692
    :cond_1
    if-eqz p1, :cond_2

    .line 1693
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1695
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1905
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1906
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1905
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1908
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1909
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1910
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1912
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1913
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1914
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1923
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1924
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1927
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_3

    .line 1928
    :cond_1
    const-string v2, ""

    .line 1942
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1930
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1931
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1933
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v1, :cond_2

    .line 1935
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_1

    .line 1939
    .end local v1    # "displayedValueIndex":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1853
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1854
    return-void
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1811
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1813
    if-lez p1, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1819
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1820
    return-void

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1706
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1707
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1708
    .local v1, "yBeforeAbort":I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1709
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1710
    .local v2, "yDelta":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1712
    .end local v1    # "yBeforeAbort":I
    .end local v2    # "yDelta":I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1948
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 1950
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1952
    add-int/lit16 p1, p1, 0x21f

    .line 1956
    .end local v0    # "region":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2045
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2047
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2071
    :goto_0
    return v1

    .line 2052
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2054
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2055
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2056
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2052
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2065
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2048
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2071
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_0

    .line 2066
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1876
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1877
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1881
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1878
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1879
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private gradualChange(IIF)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "distance"    # F

    .prologue
    .line 1500
    float-to-double v0, p3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    int-to-double v2, v2

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    int-to-double v2, v2

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1502
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int p1, p2, v0

    .line 1506
    .end local p1    # "start":I
    :cond_0
    return p1
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1826
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1827
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1828
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1829
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1830
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1890
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1893
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1894
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1896
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1897
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1898
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1772
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1773
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setFadingEdgeLength(I)V

    .line 1774
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1757
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1758
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1759
    .local v4, "totalTextHeight":I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mBottom:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1760
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1761
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    .line 1762
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    .line 1764
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1765
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 1767
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1768
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1769
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1635
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1636
    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1637
    .local v2, "selectorIdices":[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    .line 1638
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1639
    add-int/lit8 v4, v1, -0x2

    add-int v3, v0, v4

    .line 1640
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1641
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1643
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1644
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1646
    .end local v3    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1728
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1730
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThaiCalendarEnabled()Z
    .locals 9

    .prologue
    .line 2275
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2276
    .local v4, "prop":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 2277
    .local v2, "fis":Ljava/io/FileInputStream;
    const-string v5, "false"

    .line 2279
    .local v5, "state":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/thaicalendar/enable_state.properties"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2281
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2282
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2283
    const-string v6, "key_thai_calendar_enable_state"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 2287
    if-eqz v3, :cond_3

    .line 2289
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2298
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v6, "OppoNumberPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 2290
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 2295
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 2284
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2285
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2287
    if-eqz v2, :cond_0

    .line 2289
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2290
    :catch_2
    move-exception v0

    .line 2293
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2287
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_1

    .line 2289
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2295
    :cond_1
    :goto_4
    throw v6

    .line 2290
    :catch_3
    move-exception v0

    .line 2293
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2299
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2287
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2284
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1596
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1607
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1599
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1600
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1601
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1609
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1605
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1607
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1601
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;->onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 2009
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1798
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 1802
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oppo/widget/OppoNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v2, 0x0

    .line 1780
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1781
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1782
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1783
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1792
    :goto_0
    return-void

    .line 1785
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1786
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1789
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1790
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 4
    .param p1, "delayMillis"    # I

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2095
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    .line 2099
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2100
    return-void

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .param p1, "increment"    # Z

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2018
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 2019
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2023
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2024
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2080
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    .line 2084
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    # setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$602(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2085
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    # setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$702(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2086
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2087
    return-void

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 2034
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2037
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2039
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1623
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1624
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1625
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1627
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1721
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1722
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .param p1, "selectorWheelState"    # I

    .prologue
    const/4 v3, 0x2

    .line 1739
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    .line 1740
    if-ne p1, v3, :cond_0

    .line 1741
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1744
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1746
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1747
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    const v2, 0xc040459

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1750
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1751
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1753
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 1839
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1841
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1842
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1843
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1250
    iget-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    const/4 v4, 0x0

    .line 1254
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1255
    const/4 v3, 0x0

    .line 1256
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1257
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1258
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1259
    move v3, v1

    .line 1256
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1262
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1263
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1264
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1265
    add-int/lit8 v5, v5, 0x1

    .line 1266
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1268
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1278
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1279
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1280
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1281
    iput v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 1285
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1270
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1271
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1272
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1273
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1274
    float-to-int v4, v6

    .line 1271
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1283
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1860
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1865
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1866
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1870
    :goto_1
    return-void

    .line 1863
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1988
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1989
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1995
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    const v2, 0xc04045a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2000
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1991
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1081
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1085
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1086
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1087
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1091
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1092
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1093
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 1094
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1096
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1097
    iput v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1098
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1099
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1107
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1470
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1063
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1064
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1067
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1044
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1058
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1047
    :pswitch_0
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1049
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 1055
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1073
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1076
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1482
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1486
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1489
    .local v2, "drawTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1490
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1491
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1489
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1497
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "drawTime":J
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1447
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1441
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1453
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1456
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 1460
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 897
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 898
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1465
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1523
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v12, :cond_0

    .line 1580
    :goto_0
    return-void

    .line 1527
    :cond_0
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mRight:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1528
    .local v10, "x":F
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1532
    .local v11, "y":F
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingLeft:I

    if-eqz v12, :cond_1

    .line 1534
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingLeft:I

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 1536
    :cond_1
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingRight:I

    if-eqz v12, :cond_2

    .line 1538
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingRight:I

    int-to-float v12, v12

    sub-float/2addr v10, v12

    .line 1542
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1545
    .local v6, "restoreCount":I
    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1546
    .local v9, "selectorIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v9

    if-ge v4, v12, :cond_7

    .line 1547
    aget v8, v9, v4

    .line 1548
    .local v8, "selectorIndex":I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1553
    .local v7, "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x2

    if-ne v4, v12, :cond_3

    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_5

    .line 1555
    :cond_3
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v5

    .line 1556
    .local v5, "red":I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v3

    .line 1557
    .local v3, "green":I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v0

    .line 1558
    .local v0, "blue":I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v2

    .line 1560
    .local v2, "f":I
    invoke-static {v5, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 1561
    .local v1, "color":I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1563
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1565
    :cond_4
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-int/lit8 v13, v2, 0x3

    div-int/lit8 v13, v13, 0x4

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1571
    :goto_2
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1573
    .end local v0    # "blue":I
    .end local v1    # "color":I
    .end local v2    # "f":I
    .end local v3    # "green":I
    .end local v5    # "red":I
    :cond_5
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1546
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1567
    .restart local v0    # "blue":I
    .restart local v1    # "color":I
    .restart local v2    # "f":I
    .restart local v3    # "green":I
    .restart local v5    # "red":I
    :cond_6
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v13, v2

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .line 1578
    .end local v0    # "blue":I
    .end local v1    # "color":I
    .end local v2    # "f":I
    .end local v3    # "green":I
    .end local v5    # "red":I
    .end local v7    # "scrollSelectorValue":Ljava/lang/String;
    .end local v8    # "selectorIndex":I
    :cond_7
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 923
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 970
    :goto_0
    return v3

    .line 926
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 970
    goto :goto_0

    .line 928
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    .line 929
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 930
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 931
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 932
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 933
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 934
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 935
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 936
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 938
    .local v2, "scrollersFinished":Z
    :goto_1
    if-nez v2, :cond_3

    .line 939
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 940
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 941
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 943
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 944
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 945
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2    # "scrollersFinished":Z
    :cond_4
    move v2, v4

    .line 936
    goto :goto_1

    .line 948
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 950
    goto :goto_0

    .line 952
    :cond_7
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 953
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 954
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .line 958
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 959
    .local v0, "currentMoveY":F
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 960
    .local v1, "deltaDownY":I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 961
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 962
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 963
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 964
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 859
    .local v20, "msrdWdth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 862
    .local v19, "msrdHght":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 863
    .local v5, "decrBtnMsrdWdth":I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 864
    .local v4, "decrBtnLeft":I
    const/4 v7, 0x0

    .line 865
    .local v7, "decrBtnTop":I
    add-int v6, v4, v5

    .line 866
    .local v6, "decrBtnRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v3, v21, 0x0

    .line 867
    .local v3, "decrBtnBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 871
    .local v16, "inptTxtMsrdWdth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 872
    .local v15, "inptTxtMsrdHght":I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 873
    .local v14, "inptTxtLeft":I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 874
    .local v18, "inptTxtTop":I
    add-int v17, v14, v16

    .line 875
    .local v17, "inptTxtRight":I
    add-int v13, v18, v15

    .line 876
    .local v13, "inptTxtBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 880
    .local v12, "inctBtnMsrdWdth":I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 881
    .local v9, "incrBtnLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v11, v19, v21

    .line 882
    .local v11, "incrBtnTop":I
    add-int v10, v9, v5

    .line 883
    .local v10, "incrBtnRight":I
    move/from16 v8, v19

    .line 884
    .local v8, "incrBtnBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v11, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 886
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 887
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheel()V

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeFadingEdges()V

    .line 892
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 903
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 904
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 905
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 909
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v4

    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingRight:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingLeft:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 912
    .local v3, "widthSize":I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 914
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/oppo/widget/OppoNumberPicker;->setMeasuredDimension(II)V

    .line 919
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 975
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1038
    :goto_0
    return v8

    .line 978
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 979
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 981
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 983
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v8, v9

    .line 1038
    goto :goto_0

    .line 985
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 986
    .local v1, "currentMoveY":F
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v10, :cond_2

    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-eq v10, v9, :cond_3

    .line 988
    :cond_2
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 989
    .local v2, "deltaDownY":I
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 990
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 991
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 994
    .end local v2    # "deltaDownY":I
    :cond_3
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 995
    .local v3, "deltaMoveY":I
    invoke-virtual {p0, v8, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 996
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 997
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 1000
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v10, :cond_4

    .line 1001
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v10, v12

    .line 1003
    .local v4, "deltaTapTimeMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_4

    .line 1004
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 1005
    iget-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    move v8, v9

    .line 1012
    goto :goto_0

    .line 1015
    .end local v4    # "deltaTapTimeMillis":J
    :cond_4
    iget-object v7, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1016
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1017
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 1018
    .local v6, "initialVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 1021
    mul-int/lit8 v8, v6, 0x3

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->fling(I)V

    .line 1023
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1033
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 1034
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 1025
    :cond_6
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v10, :cond_7

    .line 1026
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1027
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 1030
    :cond_7
    sget v8, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2256
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2258
    return-void
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x2

    .line 1122
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1126
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v4

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1128
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1131
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v4

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1133
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1136
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1139
    :cond_4
    :goto_1
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeIndexDistance:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_5

    .line 1140
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1141
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->decrementSelectorIndices([I)V

    .line 1142
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1143
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v4

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1144
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1147
    :cond_5
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeIndexDistance:I

    add-int/2addr v2, v3

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1148
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1149
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->incrementSelectorIndices([I)V

    .line 1150
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1151
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v4

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1152
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1586
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1437
    :goto_0
    return-void

    .line 1426
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1434
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1435
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1436
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1115
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1116
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1117
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1118
    return-void
.end method

.method public setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/oppo/widget/OppoNumberPicker$Formatter;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1196
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    .line 1197
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1198
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1391
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1394
    :cond_0
    if-gez p1, :cond_1

    .line 1395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1398
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1399
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1401
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1402
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1403
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1404
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1405
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1401
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1359
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1374
    :goto_0
    return-void

    .line 1362
    :cond_0
    if-gez p1, :cond_1

    .line 1363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1366
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1367
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1369
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1370
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1371
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1372
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1373
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1369
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setNumberPickerPaddingLeft(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1513
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingLeft:I

    .line 1514
    return-void
.end method

.method public setNumberPickerPaddingRight(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1517
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mNumberPickerPaddingRight:I

    .line 1518
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1332
    iput-wide p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 1333
    return-void
.end method

.method public setOnScrollListener(Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    .line 1179
    return-void
.end method

.method public setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    .line 1170
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1230
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1234
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1236
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1237
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1239
    :cond_2
    :goto_2
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1240
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1241
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1242
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1243
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1234
    :cond_3
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1237
    :cond_4
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1312
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1316
    iput-boolean p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    .line 1317
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1319
    :cond_1
    return-void
.end method
