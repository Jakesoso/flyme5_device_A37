.class public Lcom/color/widget/ColorTimePicker;
.super Landroid/widget/FrameLayout;
.source "ColorTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorTimePicker$mFormat;,
        Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final HOURS_OF_A_DAY:I = 0x17

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field private static final MILLISECOND_A_DAY:J = 0x5265c00L

.field private static final MINUTES_OF_A_HOUR:I = 0x3b

.field private static final START_YEAR:I = 0x76c

.field private static final TAG:Ljava/lang/String; = "ColorTimePicker"

.field private static final TOTAL_YEAR:I = 0x64

.field private static final YEAR_AMOUNT_LEAP:I = 0x16e

.field private static final YEAR_AMOUNT_NOT_LEAP:I = 0x16d

.field private static ampm:I

.field private static day:I

.field private static endDate:Ljava/util/Date;

.field private static endDay:I

.field private static endMonth:I

.field private static endYear:I

.field private static hour:I

.field private static informatter:Ljava/text/SimpleDateFormat;

.field private static mCalendar:Ljava/util/Calendar;

.field private static mDateAmount:I

.field private static mDateNamesTemp:[Ljava/lang/String;

.field private static mDefaultCalendar:Ljava/util/Calendar;

.field private static mTodayCalendar:Ljava/util/Calendar;

.field private static minute:I

.field private static month:I

.field private static outformatter:Ljava/text/SimpleDateFormat;

.field private static startTime:J

.field private static todayDate:I

.field private static todayIndex:I

.field private static todayMonth:I

.field private static todayYear:I

.field private static year:I


# instance fields
.field private mAMPM:[Ljava/lang/String;

.field private mAmPm:I

.field private mColorTimePicker:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDateNames:[Ljava/lang/String;

.field private mDay:Ljava/lang/String;

.field private mIsMinuteFiveStep:Z

.field private mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

.field private mSetYear:I

.field private mToday:Ljava/lang/String;

.field private pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

.field private pickerDate:Lcom/oppo/widget/OppoNumberPicker;

.field private pickerHour:Lcom/oppo/widget/OppoNumberPicker;

.field private pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

.field private start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 63
    sput v1, Lcom/color/widget/ColorTimePicker;->todayIndex:I

    sput v0, Lcom/color/widget/ColorTimePicker;->year:I

    sput v0, Lcom/color/widget/ColorTimePicker;->month:I

    sput v0, Lcom/color/widget/ColorTimePicker;->day:I

    sput v0, Lcom/color/widget/ColorTimePicker;->hour:I

    sput v1, Lcom/color/widget/ColorTimePicker;->minute:I

    sput v1, Lcom/color/widget/ColorTimePicker;->ampm:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorTimePicker;->mAmPm:I

    .line 91
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc07040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->mAMPM:[Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc040550

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->mToday:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc040551

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->mDay:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 97
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->todayYear:I

    .line 98
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->todayMonth:I

    .line 99
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->todayDate:I

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy MMM dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/ColorTimePicker;->mDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/widget/ColorTimePicker;->outformatter:Ljava/text/SimpleDateFormat;

    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/widget/ColorTimePicker;->informatter:Ljava/text/SimpleDateFormat;

    .line 102
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090461

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->mColorTimePicker:Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mColorTimePicker:Landroid/view/ViewGroup;

    const v1, 0xc0204e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    .line 105
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mColorTimePicker:Landroid/view/ViewGroup;

    const v1, 0xc0204df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    .line 106
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mColorTimePicker:Landroid/view/ViewGroup;

    const v1, 0xc0204de

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    .line 107
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mColorTimePicker:Landroid/view/ViewGroup;

    const v1, 0xc0204dd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget v0, p0, Lcom/color/widget/ColorTimePicker;->mAmPm:I

    return v0
.end method

.method static synthetic access$002(Lcom/color/widget/ColorTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/color/widget/ColorTimePicker;->mAmPm:I

    return p1
.end method

.method static synthetic access$100()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/color/widget/ColorTimePicker;->todayIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/color/widget/ColorTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mToday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/color/widget/ColorTimePicker;->is24Hours()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/color/widget/ColorTimePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/color/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    return v0
.end method

.method static synthetic access$600(Lcom/color/widget/ColorTimePicker;I)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/color/widget/ColorTimePicker;->getDateFromValue(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lcom/color/widget/ColorTimePicker;->getDateYMDW(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/color/widget/ColorTimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorTimePicker;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;

    return-object v0
.end method

.method private getDateFromValue(I)Ljava/util/Date;
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 348
    sget-object v3, Lcom/color/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    add-int/lit8 v4, p1, -0x1

    aget-object v0, v3, v4

    .line 349
    .local v0, "date":Ljava/lang/String;
    const/4 v2, 0x0

    .line 351
    .local v2, "res":Ljava/util/Date;
    :try_start_0
    sget-object v3, Lcom/color/widget/ColorTimePicker;->outformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 355
    :goto_0
    return-object v2

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDateYMDW(I)Ljava/lang/String;
    .locals 8
    .param p0, "elapsetime"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    sget-wide v2, Lcom/color/widget/ColorTimePicker;->startTime:J

    int-to-long v4, p0

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 324
    sget-object v0, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    sput v0, Lcom/color/widget/ColorTimePicker;->endYear:I

    .line 325
    sget-object v0, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->endMonth:I

    .line 326
    sget-object v0, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->endDay:I

    .line 327
    sget v0, Lcom/color/widget/ColorTimePicker;->endYear:I

    sget v1, Lcom/color/widget/ColorTimePicker;->endMonth:I

    sget v2, Lcom/color/widget/ColorTimePicker;->endDay:I

    invoke-static {v0, v1, v2}, Lcom/color/widget/ColorTimePicker;->isToday(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sput p0, Lcom/color/widget/ColorTimePicker;->todayIndex:I

    .line 332
    :goto_0
    sget-object v0, Lcom/color/widget/ColorTimePicker;->outformatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/color/widget/ColorTimePicker;->todayIndex:I

    goto :goto_0
.end method

.method private static getDaysAmountOfYear(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 303
    invoke-static {p0}, Lcom/color/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private is24Hours()Z
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "strTimeFormat":Ljava/lang/String;
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 344
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToday(III)Z
    .locals 1
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # I

    .prologue
    .line 336
    sget v0, Lcom/color/widget/ColorTimePicker;->todayYear:I

    if-ne p0, v0, :cond_0

    sget v0, Lcom/color/widget/ColorTimePicker;->todayMonth:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/color/widget/ColorTimePicker;->todayDate:I

    if-ne p2, v0, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColorTimePicker()Landroid/view/View;
    .locals 13

    .prologue
    .line 129
    const/4 v6, 0x0

    .line 130
    .local v6, "defaultCalendar":Ljava/util/Calendar;
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 131
    sget-object v6, Lcom/color/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 132
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->year:I

    .line 138
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/color/widget/ColorTimePicker;->month:I

    .line 139
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->day:I

    .line 140
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->hour:I

    .line 141
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->ampm:I

    .line 142
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->minute:I

    .line 143
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    sget v1, Lcom/color/widget/ColorTimePicker;->year:I

    sget v2, Lcom/color/widget/ColorTimePicker;->month:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/color/widget/ColorTimePicker;->day:I

    sget v4, Lcom/color/widget/ColorTimePicker;->hour:I

    sget v5, Lcom/color/widget/ColorTimePicker;->minute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 145
    const v0, 0x8e94

    sput v0, Lcom/color/widget/ColorTimePicker;->mDateAmount:I

    .line 146
    const/4 v9, 0x0

    .line 147
    .local v9, "half":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/16 v0, 0x64

    if-ge v10, v0, :cond_1

    .line 148
    sget v0, Lcom/color/widget/ColorTimePicker;->mDateAmount:I

    sget v1, Lcom/color/widget/ColorTimePicker;->year:I

    add-int/lit8 v1, v1, -0x32

    add-int/2addr v1, v10

    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->getDaysAmountOfYear(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/color/widget/ColorTimePicker;->mDateAmount:I

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 134
    .end local v9    # "half":I
    .end local v10    # "i":I
    :cond_0
    sget-object v6, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 135
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/color/widget/ColorTimePicker;->year:I

    goto :goto_0

    .line 151
    .restart local v9    # "half":I
    .restart local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    :goto_2
    const/16 v0, 0x32

    if-ge v10, v0, :cond_2

    .line 152
    sget v0, Lcom/color/widget/ColorTimePicker;->year:I

    add-int/lit8 v0, v0, -0x32

    add-int/2addr v0, v10

    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->getDaysAmountOfYear(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 151
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 155
    :cond_2
    sget v0, Lcom/color/widget/ColorTimePicker;->mDateAmount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/color/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    .line 158
    sget v0, Lcom/color/widget/ColorTimePicker;->month:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    sget v0, Lcom/color/widget/ColorTimePicker;->year:I

    add-int/lit8 v0, v0, -0x32

    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/color/widget/ColorTimePicker;->year:I

    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    add-int/lit8 v9, v9, 0x1

    .line 161
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/color/widget/ColorTimePicker;->year:I

    add-int/lit8 v1, v1, -0x32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/color/widget/ColorTimePicker;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/color/widget/ColorTimePicker;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorTimePicker;->start:Ljava/lang/String;

    .line 164
    :try_start_0
    sget-object v0, Lcom/color/widget/ColorTimePicker;->informatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/color/widget/ColorTimePicker;->start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/color/widget/ColorTimePicker;->startTime:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/color/widget/ColorTimePicker;->endDate:Ljava/util/Date;

    .line 171
    invoke-direct {p0}, Lcom/color/widget/ColorTimePicker;->is24Hours()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 173
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 183
    :goto_4
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v1, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 184
    sget v0, Lcom/color/widget/ColorTimePicker;->hour:I

    if-ltz v0, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/color/widget/ColorTimePicker;->is24Hours()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->hour:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 197
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v1, Lcom/color/widget/ColorTimePicker$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorTimePicker$1;-><init>(Lcom/color/widget/ColorTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v1, Lcom/color/widget/ColorTimePicker$2;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorTimePicker$2;-><init>(Lcom/color/widget/ColorTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 235
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v1, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 236
    iget-boolean v0, p0, Lcom/color/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    if-eqz v0, :cond_b

    .line 237
    const/16 v11, 0xc

    .line 238
    .local v11, "len":I
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 239
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 240
    new-array v12, v11, [Ljava/lang/String;

    .line 241
    .local v12, "minutes":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v11, :cond_9

    .line 242
    mul-int/lit8 v0, v10, 0x5

    const/16 v1, 0xa

    if-ge v0, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, v10, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    aput-object v0, v12, v10

    .line 241
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 165
    .end local v11    # "len":I
    .end local v12    # "minutes":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 166
    .local v7, "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 175
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_5
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 176
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 177
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v1, p0, Lcom/color/widget/ColorTimePicker;->mAMPM:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 178
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 179
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v1, p0, Lcom/color/widget/ColorTimePicker;->mAMPM:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setVisibility(I)V

    goto/16 :goto_4

    .line 188
    :cond_6
    sget v0, Lcom/color/widget/ColorTimePicker;->ampm:I

    if-lez v0, :cond_7

    .line 189
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->hour:I

    add-int/lit8 v1, v1, -0xc

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 193
    :goto_8
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->ampm:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 194
    sget v0, Lcom/color/widget/ColorTimePicker;->ampm:I

    iput v0, p0, Lcom/color/widget/ColorTimePicker;->mAmPm:I

    goto/16 :goto_5

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerHour:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->hour:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    goto :goto_8

    .line 242
    .restart local v11    # "len":I
    .restart local v12    # "minutes":[Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, v10, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v12}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 245
    sget v0, Lcom/color/widget/ColorTimePicker;->minute:I

    div-int/lit8 v0, v0, 0x5

    if-lez v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->minute:I

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 247
    sget-object v0, Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    sget v2, Lcom/color/widget/ColorTimePicker;->minute:I

    div-int/lit8 v2, v2, 0x5

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 255
    .end local v11    # "len":I
    .end local v12    # "minutes":[Ljava/lang/String;
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v1, Lcom/color/widget/ColorTimePicker$3;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorTimePicker$3;-><init>(Lcom/color/widget/ColorTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 272
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->mDateAmount:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 273
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 274
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v9}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 275
    new-instance v8, Lcom/color/widget/ColorTimePicker$mFormat;

    invoke-direct {v8, p0}, Lcom/color/widget/ColorTimePicker$mFormat;-><init>(Lcom/color/widget/ColorTimePicker;)V

    .line 276
    .local v8, "f":Lcom/color/widget/ColorTimePicker$mFormat;
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v8}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 277
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerDate:Lcom/oppo/widget/OppoNumberPicker;

    new-instance v1, Lcom/color/widget/ColorTimePicker$4;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorTimePicker$4;-><init>(Lcom/color/widget/ColorTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 289
    return-object p0

    .line 250
    .end local v8    # "f":Lcom/color/widget/ColorTimePicker$mFormat;
    :cond_b
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 251
    sget v0, Lcom/color/widget/ColorTimePicker;->minute:I

    if-lez v0, :cond_a

    .line 252
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker;->pickerMinute:Lcom/oppo/widget/OppoNumberPicker;

    sget v1, Lcom/color/widget/ColorTimePicker;->minute:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    goto :goto_9
.end method

.method public setColorTimePicker(ILjava/util/Calendar;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "defaultCalendar"    # Ljava/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iput p1, p0, Lcom/color/widget/ColorTimePicker;->mSetYear:I

    .line 113
    sput-object p2, Lcom/color/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 114
    invoke-virtual {p0}, Lcom/color/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;

    .line 115
    return-void
.end method

.method public setColorTimePicker(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "defaultCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 118
    sput-object p1, Lcom/color/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 119
    invoke-virtual {p0}, Lcom/color/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;

    .line 120
    return-void
.end method

.method public setMinuteStepToFive()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    .line 361
    return-void
.end method

.method public setOnTimeChangeListener(Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;)V
    .locals 0
    .param p1, "e"    # Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    .line 79
    return-void
.end method
