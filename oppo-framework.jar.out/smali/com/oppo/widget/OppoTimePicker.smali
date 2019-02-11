.class public Lcom/oppo/widget/OppoTimePicker;
.super Landroid/widget/FrameLayout;
.source "OppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTimePicker$SavedState;,
        Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mHourText:Landroid/widget/TextView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteText:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

.field private final mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mOppoAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mOppoHourSpinnerInput:Landroid/widget/EditText;

.field private final mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mOppoMinuteSpinnerInput:Landroid/widget/EditText;

.field private mPickerPadding:I

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/oppo/widget/OppoTimePicker$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTimePicker$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const v0, 0xc010402

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/widget/OppoTimePicker;->mIsEnabled:Z

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc0504a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTimePicker;->mPickerPadding:I

    .line 157
    sget-object v4, Landroid/R$styleable;->TimePicker:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 166
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    const v3, 0xc090403

    .line 169
    .local v3, "layoutResourceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 173
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 183
    const v4, 0xc0204e1

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    .line 184
    const v4, 0xc0204e2

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    .line 185
    const v4, 0xc02042b

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 186
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v5, Lcom/oppo/widget/OppoTimePicker$2;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoTimePicker$2;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 210
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v5, 0xc020428

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinnerInput:Landroid/widget/EditText;

    .line 211
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 220
    const v4, 0xc020429

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 221
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 222
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 223
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 224
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v5, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 225
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v5, Lcom/oppo/widget/OppoTimePicker$3;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoTimePicker$3;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 265
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v5, 0xc020428

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinnerInput:Landroid/widget/EditText;

    .line 267
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 270
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 273
    const v4, 0xc02042c

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "amPmView":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 275
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 276
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinnerInput:Landroid/widget/EditText;

    .line 277
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 278
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Lcom/oppo/widget/OppoTimePicker$4;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoTimePicker$4;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateHourControl()V

    .line 313
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V

    .line 315
    sget-object v4, Lcom/oppo/widget/OppoTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 318
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 319
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 321
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTimePicker;->setEnabled(Z)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->setContentDescriptions()V

    .line 327
    return-void

    .line 287
    .restart local v0    # "amPmView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 288
    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 289
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 290
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 291
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 292
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v5, Lcom/oppo/widget/OppoTimePicker$5;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoTimePicker$5;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 306
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v5, 0xc020428

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinnerInput:Landroid/widget/EditText;

    .line 308
    iget-object v4, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTimePicker;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 626
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimePicker;->sendAccessibilityEvent(I)V

    .line 627
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oppo/widget/OppoTimePicker;II)V

    .line 630
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 5

    .prologue
    const v4, 0xc020427

    const v3, 0xc020426

    .line 634
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040461

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040462

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040463

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040464

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 650
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 382
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setVisibility(I)V

    .line 622
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->sendAccessibilityEvent(I)V

    .line 623
    return-void

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 613
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 614
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    if-eqz v2, :cond_3

    .line 615
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v0}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 616
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v1}, Lcom/oppo/widget/OppoNumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 613
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 618
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 591
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 592
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v1, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 595
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 600
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v1, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 659
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 662
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 665
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 668
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 568
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    .line 462
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 467
    :goto_0
    return-object v1

    .line 464
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 465
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 467
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 370
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 575
    const/4 v0, 0x1

    .line 576
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 577
    or-int/lit16 v0, v0, 0x80

    .line 581
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 582
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 583
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    return-void

    .line 579
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 442
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoTimePicker$SavedState;

    .line 443
    .local v0, "ss":Lcom/oppo/widget/OppoTimePicker$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 444
    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 445
    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 446
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 436
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 437
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oppo/widget/OppoTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/oppo/widget/OppoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/oppo/widget/OppoTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 476
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 481
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    .line 483
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 492
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 495
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V

    goto :goto_0

    .line 487
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    .line 488
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 557
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 358
    :goto_1
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 504
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 533
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24HourView:Z

    .line 518
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateHourControl()V

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 521
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V

    .line 525
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 527
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mPickerPadding:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingLeft(I)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingLeft(I)V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    .line 455
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 331
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
