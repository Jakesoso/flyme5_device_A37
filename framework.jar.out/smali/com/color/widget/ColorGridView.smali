.class public Lcom/color/widget/ColorGridView;
.super Landroid/view/View;
.source "ColorGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorGridView$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final COLUMN_SIZE:I = 0x4

.field private static final MAX_LENGTH:I = 0xc9

.field private static final NUM_WORDS:I = 0x5

.field public static PAGE_SIZE:I = 0x0

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "ColorGridView"


# instance fields
.field private dotViewHeight:I

.field private isSelected:Z

.field private mAppIcons:[[Ljava/lang/Integer;

.field private mAppInfos:[[Lcom/color/widget/ColorItem;

.field private mAppNameSize:I

.field private mAppNames:[[Ljava/lang/String;

.field private mCancelclickRunnable:Ljava/lang/Runnable;

.field private mColumnCounts:I

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasNavigationBar:Z

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsLandscape:Z

.field private mItemBgPaddingRight:I

.field private mItemCounts:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mNavBarHeight:I

.field private mOnItemClickListener:Lcom/color/widget/ColorGridView$OnItemClickListener;

.field private mOnclickRunnable:Ljava/lang/Runnable;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field public mPageNumber:I

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPrivateFlags:I

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCounts:I

.field private mSelectColor:I

.field private mSelectHeight:I

.field private mSelectWidth:I

.field private mTextColor:I

.field private mTextPaddingBottom:I

.field private mTextPaddingLeft:I

.field private mTotalHeight:I

.field private mTwoLineDistance:I

.field private selRect:Landroid/graphics/Rect;

.field private selRect2:Landroid/graphics/Rect;

.field private selectX:I

.field private selectY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v1, 0x4

    iput v1, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    .line 58
    const/4 v1, 0x2

    iput v1, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    .line 62
    iput v3, p0, Lcom/color/widget/ColorGridView;->mItemCounts:I

    .line 72
    iput v2, p0, Lcom/color/widget/ColorGridView;->mPageNumber:I

    .line 77
    iput-boolean v3, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->selRect2:Landroid/graphics/Rect;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->mResolveInfoList:Ljava/util/List;

    .line 89
    const/4 v1, 0x0

    check-cast v1, [[Lcom/color/widget/ColorItem;

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    .line 274
    new-instance v1, Lcom/color/widget/ColorGridView$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorGridView$1;-><init>(Lcom/color/widget/ColorGridView;)V

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->mOnclickRunnable:Ljava/lang/Runnable;

    .line 283
    new-instance v1, Lcom/color/widget/ColorGridView$2;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorGridView$2;-><init>(Lcom/color/widget/ColorGridView;)V

    iput-object v1, p0, Lcom/color/widget/ColorGridView;->mCancelclickRunnable:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorGridView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorGridView;->setFocusableInTouchMode(Z)V

    .line 128
    iput-object p1, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    .line 129
    iget-object v1, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 130
    .local v0, "cfg":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->initGetureDetecor()V

    .line 131
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/color/widget/ColorGridView;->mHasNavigationBar:Z

    .line 133
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mNavBarHeight:I

    .line 135
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mSelectColor:I

    .line 136
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060416

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mTextColor:I

    .line 137
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mAppNameSize:I

    .line 138
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050470

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->dotViewHeight:I

    .line 139
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/color/widget/ColorGridView;->dotViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    .line 140
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mSelectHeight:I

    .line 141
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050468

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mSelectWidth:I

    .line 142
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    .line 143
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mPaddingTop:I

    .line 144
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050475

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mIconHeight:I

    .line 145
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mIconWidth:I

    .line 146
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mItemBgPaddingRight:I

    .line 147
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    .line 148
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->mTwoLineDistance:I

    .line 150
    return-void
.end method

.method static synthetic access$076(Lcom/color/widget/ColorGridView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    return v0
.end method

.method static synthetic access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorGridView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mOnclickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/color/widget/ColorGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/color/widget/ColorGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget v0, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget v0, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/color/widget/ColorGridView;IILandroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Rect;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorGridView;->select(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/color/widget/ColorGridView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/color/widget/ColorGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 54
    iget v0, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    return v0
.end method

.method static synthetic access$900(Lcom/color/widget/ColorGridView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorGridView;->click(IZ)V

    return-void
.end method

.method private click(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isLongClick"    # Z

    .prologue
    .line 371
    iget v0, p0, Lcom/color/widget/ColorGridView;->mItemCounts:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 372
    sget v0, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    iget v1, p0, Lcom/color/widget/ColorGridView;->mPageNumber:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 373
    if-nez p2, :cond_1

    .line 374
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mOnItemClickListener:Lcom/color/widget/ColorGridView$OnItemClickListener;

    sget v1, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    iget v2, p0, Lcom/color/widget/ColorGridView;->mPageNumber:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/color/widget/ColorGridView$OnItemClickListener;->OnItemClick(I)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mOnItemClickListener:Lcom/color/widget/ColorGridView$OnItemClickListener;

    sget v1, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    iget v2, p0, Lcom/color/widget/ColorGridView;->mPageNumber:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/color/widget/ColorGridView$OnItemClickListener;->OnItemLongClick(I)V

    goto :goto_0
.end method

.method private drawEnglish(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 223
    iget-object v1, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x43490000    # 201.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 224
    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 227
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 228
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTwoLineDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTwoLineDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    const/4 v5, 0x5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 209
    invoke-static {p2}, Lcom/color/widget/ColorGridView;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v1, v1, p3

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/color/widget/ColorItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/widget/ColorGridView;->getNum(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "num":I
    if-gt v0, v5, :cond_0

    .line 212
    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    .end local v0    # "num":I
    :goto_0
    return-void

    .line 214
    .restart local v0    # "num":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    int-to-double v2, p4

    add-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorGridView;->mTwoLineDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 218
    .end local v0    # "num":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/widget/ColorGridView;->drawEnglish(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static get2DimenArrayCounts([[Lcom/color/widget/ColorItem;)I
    .locals 4
    .param p0, "AppInfos"    # [[Lcom/color/widget/ColorItem;

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "counts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 508
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 509
    aget-object v3, p0, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 510
    add-int/lit8 v0, v0, 0x1

    .line 508
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 507
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "j":I
    :cond_2
    return v0
.end method

.method public static getNum(Ljava/lang/String;)I
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string v0, "^[\u4e00-\u9fa5]{1}$"

    .line 519
    .local v0, "Reg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 520
    .local v5, "result":I
    const/4 v3, 0x0

    .line 521
    .local v3, "english":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 522
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 524
    add-int/lit8 v5, v5, 0x1

    .line 526
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 527
    .local v2, "c":C
    const/16 v6, 0x61

    if-lt v2, v6, :cond_1

    const/16 v6, 0x7a

    if-le v2, v6, :cond_2

    :cond_1
    const/16 v6, 0x41

    if-lt v2, v6, :cond_3

    const/16 v6, 0x5a

    if-gt v2, v6, :cond_3

    .line 528
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 521
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "b":Ljava/lang/String;
    .end local v2    # "c":C
    :cond_4
    int-to-double v6, v5

    div-int/lit8 v8, v3, 0x2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 532
    return v5
.end method

.method private getRect(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 417
    iget-boolean v4, p0, Lcom/color/widget/ColorGridView;->mIsLandscape:Z

    if-eqz v4, :cond_0

    .line 418
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    mul-int/2addr v4, p1

    iget v5, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/color/widget/ColorGridView;->mItemBgPaddingRight:I

    sub-int v1, v4, v5

    .line 423
    .local v1, "left":I
    :goto_0
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v4, p2

    iget v5, p0, Lcom/color/widget/ColorGridView;->mPaddingTop:I

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 424
    .local v3, "top":I
    iget v4, p0, Lcom/color/widget/ColorGridView;->mSelectWidth:I

    add-int v2, v1, v4

    .line 425
    .local v2, "right":I
    iget v4, p0, Lcom/color/widget/ColorGridView;->mSelectHeight:I

    add-int v0, v3, v4

    .line 426
    .local v0, "bottom":I
    invoke-virtual {p3, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    return-void

    .line 420
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    mul-int/2addr v4, p1

    iget v5, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/color/widget/ColorGridView;->mItemBgPaddingRight:I

    sub-int v1, v4, v5

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method private getRect2(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 436
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    mul-int/2addr v4, p1

    iget v5, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    add-int v1, v4, v5

    .line 437
    .local v1, "left":I
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    mul-int/2addr v4, p2

    iget v5, p0, Lcom/color/widget/ColorGridView;->mPaddingTop:I

    add-int v3, v4, v5

    .line 438
    .local v3, "top":I
    iget v4, p0, Lcom/color/widget/ColorGridView;->mIconWidth:I

    add-int v2, v1, v4

    .line 439
    .local v2, "right":I
    iget v4, p0, Lcom/color/widget/ColorGridView;->mIconHeight:I

    add-int v0, v3, v4

    .line 440
    .local v0, "bottom":I
    invoke-virtual {p3, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    return-void
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string v0, "^[\u4e00-\u9fa5]{1}$"

    .line 537
    .local v0, "Reg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 538
    .local v2, "chinese":I
    const/4 v3, 0x0

    .line 539
    .local v3, "english":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 540
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 542
    add-int/lit8 v2, v2, 0x1

    .line 539
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "b":Ljava/lang/String;
    :cond_1
    if-lez v2, :cond_2

    .line 546
    const/4 v5, 0x1

    .line 548
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 388
    iget v0, p0, Lcom/color/widget/ColorGridView;->mTotalHeight:I

    .line 389
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 390
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 391
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 392
    iget v0, p0, Lcom/color/widget/ColorGridView;->mTotalHeight:I

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 394
    iget v0, p0, Lcom/color/widget/ColorGridView;->mTotalHeight:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 402
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 403
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 404
    move v0, v2

    .line 406
    :cond_0
    return v0
.end method

.method private select(IILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 450
    iget v1, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->selectX:I

    .line 451
    iget v1, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView;->selectY:I

    .line 452
    iget v1, p0, Lcom/color/widget/ColorGridView;->selectY:I

    iget v2, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView;->selectX:I

    add-int v0, v1, v2

    .line 453
    .local v0, "position":I
    iget v1, p0, Lcom/color/widget/ColorGridView;->mItemCounts:I

    if-ge v0, v1, :cond_0

    .line 454
    iget v1, p0, Lcom/color/widget/ColorGridView;->selectX:I

    iget v2, p0, Lcom/color/widget/ColorGridView;->selectY:I

    invoke-direct {p0, v1, v2, p3}, Lcom/color/widget/ColorGridView;->getRect(IILandroid/graphics/Rect;)V

    .line 456
    :cond_0
    return-void
.end method

.method public static trancateText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "maxWordsPerLine"    # I

    .prologue
    .line 490
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "lines":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 493
    aget-object v1, v2, v0

    .line 494
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 495
    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 496
    const-string v4, "...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "hasNavigationBar":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 555
    .local v4, "rs":Landroid/content/res/Resources;
    const-string v6, "config_showNavigationBar"

    const-string v7, "bool"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 556
    .local v1, "id":I
    if-lez v1, :cond_0

    .line 557
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 560
    :cond_0
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 561
    .local v5, "systemPropertiesClass":Ljava/lang/Class;
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 562
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "qemu.hw.mainkeys"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "navBarOverride":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 564
    const/4 v0, 0x0

    .line 571
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "systemPropertiesClass":Ljava/lang/Class;
    :cond_1
    :goto_0
    return v0

    .line 565
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "navBarOverride":Ljava/lang/String;
    .restart local v5    # "systemPropertiesClass":Ljava/lang/Class;
    :cond_2
    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 566
    const/4 v0, 0x1

    goto :goto_0

    .line 568
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "systemPropertiesClass":Ljava/lang/Class;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getAppInfo()[[Lcom/color/widget/ColorItem;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    return-object v0
.end method

.method public initGetureDetecor()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/color/widget/ColorGridView$3;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorGridView$3;-><init>(Lcom/color/widget/ColorGridView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/color/widget/ColorGridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 368
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050473

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    .line 156
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050474

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/color/widget/ColorGridView;->mPaddingTop:I

    .line 157
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 158
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    .line 159
    iput v6, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    .line 160
    const/4 v4, 0x4

    sput v4, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    .line 161
    iput-boolean v6, p0, Lcom/color/widget/ColorGridView;->mIsLandscape:Z

    .line 168
    :goto_0
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorGridView;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/color/widget/ColorGridView;->mIsLandscape:Z

    if-eqz v4, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/color/widget/ColorGridView;->mNavBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    .line 171
    iget v4, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    iget v5, p0, Lcom/color/widget/ColorGridView;->mNavBarHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/color/widget/ColorGridView;->mPaddingLeft:I

    .line 172
    iget v4, p0, Lcom/color/widget/ColorGridView;->mNavBarHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    .line 178
    :goto_1
    iget v4, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    iget v5, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorGridView;->mPaddingBottom:I

    .line 179
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    .line 180
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    iget v5, p0, Lcom/color/widget/ColorGridView;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    iget v5, p0, Lcom/color/widget/ColorGridView;->mAppNameSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 183
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint1:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 185
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint2:Landroid/graphics/Paint;

    .line 186
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mPaint2:Landroid/graphics/Paint;

    iget v5, p0, Lcom/color/widget/ColorGridView;->mSelectColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-boolean v4, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    if-eqz v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/color/widget/ColorGridView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    :cond_0
    const/4 v3, 0x0

    .line 195
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    if-ge v1, v4, :cond_5

    .line 196
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 197
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->selRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1, v4}, Lcom/color/widget/ColorGridView;->getRect2(IILandroid/graphics/Rect;)V

    .line 198
    iget v4, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    add-int/lit8 v3, v4, 0x1

    .line 199
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/color/widget/ColorGridView;->selRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 201
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/color/widget/ColorItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/color/widget/ColorItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/color/widget/ColorGridView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 196
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "position":I
    :cond_2
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    array-length v4, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    .line 164
    const/16 v4, 0x8

    sput v4, Lcom/color/widget/ColorGridView;->PAGE_SIZE:I

    .line 165
    iput-boolean v7, p0, Lcom/color/widget/ColorGridView;->mIsLandscape:Z

    goto/16 :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/color/widget/ColorGridView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/color/widget/ColorGridView;->mColumnCounts:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/color/widget/ColorGridView;->mItemWidth:I

    .line 175
    iput v7, p0, Lcom/color/widget/ColorGridView;->mTextPaddingLeft:I

    goto/16 :goto_1

    .line 195
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "position":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    .end local v2    # "j":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/color/widget/ColorGridView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/color/widget/ColorGridView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorGridView;->setMeasuredDimension(II)V

    .line 385
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x2000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 243
    .local v0, "pointerCount":I
    iget-object v4, p0, Lcom/color/widget/ColorGridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return v2

    .line 246
    :pswitch_1
    iget v3, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    goto :goto_0

    .line 250
    :pswitch_2
    iput-boolean v3, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    .line 251
    iget-object v3, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    .line 252
    iget v3, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    const v4, -0x2000001

    or-int/2addr v3, v4

    iput v3, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    .line 253
    iget-object v3, p0, Lcom/color/widget/ColorGridView;->mOnclickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 257
    :pswitch_3
    iget v4, p0, Lcom/color/widget/ColorGridView;->mPrivateFlags:I

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    move v1, v2

    .line 258
    .local v1, "prepressed":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 259
    iput-boolean v2, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    .line 260
    iget-object v3, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    .line 265
    :goto_2
    iget-object v3, p0, Lcom/color/widget/ColorGridView;->mCancelclickRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/color/widget/ColorGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    goto :goto_0

    .end local v1    # "prepressed":Z
    :cond_0
    move v1, v3

    .line 257
    goto :goto_1

    .line 262
    .restart local v1    # "prepressed":Z
    :cond_1
    iput-boolean v3, p0, Lcom/color/widget/ColorGridView;->isSelected:Z

    .line 263
    iget-object v3, p0, Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAppInfo([[Lcom/color/widget/ColorItem;)V
    .locals 2
    .param p1, "AppInfos"    # [[Lcom/color/widget/ColorItem;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    .line 478
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    array-length v0, v0

    iput v0, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    .line 479
    iget v0, p0, Lcom/color/widget/ColorGridView;->mItemHeight:I

    iget v1, p0, Lcom/color/widget/ColorGridView;->mRowCounts:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/color/widget/ColorGridView;->dotViewHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorGridView;->mTotalHeight:I

    .line 480
    iget-object v0, p0, Lcom/color/widget/ColorGridView;->mAppInfos:[[Lcom/color/widget/ColorItem;

    invoke-static {v0}, Lcom/color/widget/ColorGridView;->get2DimenArrayCounts([[Lcom/color/widget/ColorItem;)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorGridView;->mItemCounts:I

    .line 483
    return-void
.end method

.method public setOnItemClickListener(Lcom/color/widget/ColorGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "e"    # Lcom/color/widget/ColorGridView$OnItemClickListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/color/widget/ColorGridView;->mOnItemClickListener:Lcom/color/widget/ColorGridView$OnItemClickListener;

    .line 466
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pagecount"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/color/widget/ColorGridView;->mPageNumber:I

    .line 460
    return-void
.end method
