.class public Lcom/oppo/widget/OppoOptionMenuBar;
.super Landroid/widget/FrameLayout;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;,
        Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_MORE_ID:I = 0x7fffffff

.field private static final DEFAULT_FILL_LAYOUT_SPACE:Z = true

.field public static final DEFAULT_MAJOR_OPERATION_COUNT:I = 0x4

.field private static final FOURCHILD:I = 0x4

.field private static final LAYOUT_WEIGHT_DEFAULT:F = 1.0f

.field private static final LAYOUT_WEIGHT_ONE_WITH_ONE:F = 4.375f

.field private static final LAYOUT_WEIGHT_THREE_WITH_ONE:F = 1.458333f

.field private static final LAYOUT_WEIGHT_TWO_WITH_ONE:F = 2.1875f

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_INVALIDATE:Z = false

.field private static final MAX_MAJOR_OPERTION_COUNT_IF_MORE_ENABLED:I = 0x3

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBar"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private final MSG_REFRESH_VIEWS:I

.field private QE_LOG:Z

.field private final REFRESH_VIEWS_DELAY_MILLIS:J

.field private isCurrentTopVisible:Z

.field private isCustomized:Z

.field private isFillLayoutSpace:Z

.field private isFlowMenu:Z

.field private isGallery:Z

.field private isInflated:Z

.field private isMoreOperationGroupScrolling:Z

.field private isMoreOperationsEnabled:Z

.field private isMoreOperationsGroupExpanded:Z

.field private isMusic:Z

.field private isNeedDelayCall:Z

.field private isRefreshGallery:Z

.field private isStepIntoNewActivity:Z

.field private isViewPager:Z

.field private mClickDuration:J

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:[Landroid/animation/Animator;

.field private mDecorMask:Landroid/widget/ImageView;

.field private mDecorView:Landroid/view/View;

.field private mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

.field private mElementItemHeight:I

.field private mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemIdArray:[I

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mItemMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftItemTextColor:Landroid/content/res/ColorStateList;

.field private mMajorHopeCount:I

.field private mMajorOperationBg:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationClickListener:Landroid/view/View$OnClickListener;

.field private mMajorOperationCount:I

.field private mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationHeight:I

.field private mMajorOperationsGroup:Landroid/widget/LinearLayout;

.field private mMajorOperationsLayout:Landroid/widget/LinearLayout;

.field private mMajorOpertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

.field private mMajorTextSize:F

.field private mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleItemTextColor:Landroid/content/res/ColorStateList;

.field private mMoreOpertationsGroup:Landroid/widget/Gallery;

.field private mMoreOptionMenuBarHeight:I

.field private mNavBarHeight:I

.field private mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

.field private mPreviousClickUpTime:J

.field private mRightItemTextColor:Landroid/content/res/ColorStateList;

.field private mScrollAnimationDuration:J

.field private mVisibleMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisiblity:I

.field private mWm:Landroid/view/IWindowManager;

.field private offsetHeight:I

.field private offsetedDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->onFinishInflate()V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 231
    const v0, 0xc010426

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 235
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 98
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 101
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 107
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 109
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 111
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 112
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 114
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 116
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 118
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    .line 119
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 121
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 122
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 123
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 125
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 126
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 128
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 131
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 133
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 134
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 136
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 137
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 138
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 139
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 141
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 143
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 144
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 146
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 149
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 151
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 153
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 155
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 158
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 161
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 168
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    .line 169
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    .line 170
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    .line 179
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 188
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 190
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 193
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 194
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 195
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 201
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 202
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 206
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    .line 484
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    .line 526
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$2;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 1787
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_REFRESH_VIEWS:I

    .line 1789
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->REFRESH_VIEWS_DELAY_MILLIS:J

    .line 1791
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$4;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    .line 1809
    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 1887
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1888
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 2687
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2731
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 2732
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    .line 2737
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    .line 237
    const-string v14, "persist.sys.assert.panic"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x112005b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050012

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 245
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    if-nez v14, :cond_0

    .line 246
    const-string v14, "window"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    .line 248
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc05041d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 256
    .local v7, "defHeight":I
    move v11, v7

    .line 259
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc05041f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 261
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 262
    sget-object v14, Loppo/R$styleable;->OppoOptionMenuBar:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 265
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    .line 267
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 270
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    const/4 v14, 0x5

    invoke-virtual {v4, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 283
    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 293
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 295
    const/16 v14, 0x9

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    :cond_1
    if-gtz v11, :cond_2

    .line 333
    move v11, v7

    .line 335
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc050458

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 341
    sget-object v14, Landroid/R$styleable;->Theme:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 343
    .local v5, "b":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_4

    .line 344
    const/16 v14, 0x24

    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 345
    .local v13, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_3

    .line 346
    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    .end local v13    # "windowBackground":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/oppo/widget/OppoOptionMenuBar;->init(Landroid/content/Context;)V

    .line 357
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoOptionMenuBar;->setMotionEventSplittingEnabled(Z)V

    .line 364
    const-string v9, "com.oppo.filemanager"

    .line 365
    .local v9, "fileManager":Ljava/lang/String;
    const-string v6, "com.oppo.alarmclock"

    .line 366
    .local v6, "clock":Ljava/lang/String;
    const-string v12, "com.oppo.music"

    .line 367
    .local v12, "music":Ljava/lang/String;
    const-string v10, "com.oppo.gallery3d"

    .line 369
    .local v10, "gallery":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 372
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 374
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 375
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 377
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 378
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 382
    :cond_8
    return-void

    .line 250
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "b":Landroid/content/res/TypedArray;
    .end local v6    # "clock":Ljava/lang/String;
    .end local v7    # "defHeight":I
    .end local v9    # "fileManager":Ljava/lang/String;
    .end local v10    # "gallery":Ljava/lang/String;
    .end local v11    # "height":I
    .end local v12    # "music":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 251
    .local v8, "e":Landroid/os/RemoteException;
    const-string v14, "OppoOptionMenuBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IWindowManager RemoteException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2732
    nop

    :array_0
    .array-data 4
        0xc020462
        0xc020463
        0xc020464
        0xc020465
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return v0
.end method

.method static synthetic access$1202(Lcom/oppo/widget/OppoOptionMenuBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    return-void
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    return p1
.end method

.method private dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 2341
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2342
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2343
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 2342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2345
    :cond_0
    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 2112
    const/4 v1, 0x0

    .line 2115
    .local v1, "decorView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2116
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2121
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 2117
    :catch_0
    move-exception v2

    .line 2118
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getOffsetViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2242
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2243
    .local v0, "offsetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2244
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 2256
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2260
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 2261
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_2
    return-object v1
.end method

.method private hasTranslucentNavBar()Z
    .locals 1

    .prologue
    .line 2103
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMajorOperationView()V
    .locals 3

    .prologue
    .line 640
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 642
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 644
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 647
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    return-void
.end method

.method private inflateMoreOperationView()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Lcom/oppo/widget/OppoMenuInflater;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMoreOperationView()V

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setFocusableInTouchMode(Z)V

    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 409
    return-void
.end method

.method private invalidateOptionMenuBar(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v1, 0x2

    .line 1264
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1276
    :cond_1
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2107
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

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

.method private refreshGallery()V
    .locals 4

    .prologue
    .line 997
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    if-nez v1, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1010
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setGalleryItems(Ljava/util/List;)V

    .line 1011
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoOptionMenuBar"

    const-string v2, "mMoreOpertationsGroup is null! If you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 12

    .prologue
    .line 754
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 756
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 757
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 758
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 760
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 762
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v10, :cond_0

    .line 763
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 767
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 770
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMenuItem;

    .line 771
    .local v1, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v1}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 772
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    .end local v1    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 778
    .local v4, "menuItemsSize":I
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 780
    .local v9, "visibleMenuItemsSize":I
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-le v9, v10, :cond_6

    .line 781
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 792
    :goto_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 793
    const/4 v10, 0x3

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 802
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 804
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v10, :pswitch_data_0

    .line 900
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_d

    .line 902
    new-instance v5, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 904
    .local v5, "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    .line 905
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 906
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 912
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 914
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 916
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 918
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_c

    .line 919
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 783
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_6
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 785
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    goto :goto_1

    .line 806
    :pswitch_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 807
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 808
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 809
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_2

    .line 814
    :pswitch_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 815
    .local v8, "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 816
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 817
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 818
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 821
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 822
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 829
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_2
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 830
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 831
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 832
    .local v6, "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 833
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 834
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 837
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_7

    .line 838
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 840
    :cond_7
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 841
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 848
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 849
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 850
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 851
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 852
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 853
    .local v7, "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 854
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 857
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_8

    .line 858
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 860
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_9

    .line 861
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 863
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 864
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 871
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 872
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 873
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 874
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 875
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 876
    .restart local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 877
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMenuItem;

    .line 878
    .restart local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 879
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->disableItemMoreAnimation()V

    .line 882
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_a

    .line 883
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 885
    :cond_a
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_b

    .line 886
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 887
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 889
    :cond_b
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 890
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 927
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .restart local v2    # "i":I
    :cond_c
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v10, :cond_d

    .line 928
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 947
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_d
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-nez v10, :cond_12

    .line 951
    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    .line 952
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 953
    .local v1, "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 955
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_f
    const/4 v10, 0x1

    if-le v0, v10, :cond_14

    .line 956
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 957
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 959
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    if-nez v2, :cond_10

    .line 960
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 956
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 961
    :cond_10
    add-int/lit8 v10, v0, -0x1

    if-ne v2, v10, :cond_11

    .line 962
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 965
    :cond_11
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 972
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    .end local v2    # "i":I
    :cond_12
    const/4 v10, 0x1

    if-ne v0, v10, :cond_13

    .line 973
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 974
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 976
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_13
    const/4 v10, 0x2

    if-ne v0, v10, :cond_15

    .line 977
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 978
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 991
    :cond_14
    :goto_8
    return-void

    .line 979
    :cond_15
    const/4 v10, 0x3

    if-ne v0, v10, :cond_16

    .line 980
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 981
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 983
    :cond_16
    const/4 v10, 0x4

    if-ne v0, v10, :cond_14

    .line 984
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 985
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 986
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetPositionToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2417
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v1, :cond_1

    .line 2418
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v0

    .line 2420
    .local v0, "height":I
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffsetToDefault(I)V

    .line 2424
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 2427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 2429
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2433
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v1, :cond_1

    .line 2434
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2437
    .end local v0    # "height":I
    :cond_1
    return-void
.end method

.method private resolveKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2287
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2288
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 2290
    .local v2, "longPressed":Z
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v4, :cond_0

    .line 2291
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on key up...enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scrolling="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "canceled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v4, :cond_7

    .line 2299
    :cond_2
    const/4 v4, 0x4

    if-ne v4, v1, :cond_5

    .line 2300
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-eqz v4, :cond_4

    .line 2328
    :cond_3
    :goto_0
    return v3

    .line 2302
    :cond_4
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_5

    .line 2304
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2309
    :cond_5
    const/16 v4, 0x52

    if-ne v4, v1, :cond_7

    .line 2310
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2312
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 2315
    :cond_6
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2317
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2328
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scrollView(Z)V
    .locals 5
    .param p1, "isScrollDown"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1895
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1896
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_0

    .line 1897
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1905
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    .line 1906
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_2

    .line 1907
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null again when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_2
    :goto_0
    return-void

    .line 1913
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1916
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1917
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1921
    :cond_4
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1922
    .local v0, "offsetAnim":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1923
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1925
    if-eqz p1, :cond_5

    .line 1926
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1952
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1953
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$6;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$6;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1974
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$7;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$7;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2089
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1942
    :cond_5
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$5;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$5;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private setElementItemAnimationDown(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    .line 2816
    if-eqz p1, :cond_1

    .line 2817
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 2818
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2820
    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2821
    .local v1, "objectAnimatorX":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2822
    .local v2, "objectAnimatorY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2823
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2824
    iget-wide v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2825
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2826
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$9;

    invoke-direct {v3, p0, p2}, Lcom/oppo/widget/OppoOptionMenuBar$9;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;I)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2832
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2833
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v3, p2

    .line 2835
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "objectAnimatorX":Landroid/animation/ObjectAnimator;
    .end local v2    # "objectAnimatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 2820
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2821
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setElementItemAnimationUp(Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 2753
    if-eqz p1, :cond_1

    .line 2754
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 2755
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 2757
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    int-to-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2758
    .local v0, "offsetAnim":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2759
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2760
    mul-int/lit8 v1, p2, 0x3c

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2761
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2763
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/widget/OppoOptionMenuBar$8;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2809
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2810
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v1, p2

    .line 2812
    .end local v0    # "offsetAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V
    .locals 4
    .param p1, "itemView"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "item"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 1053
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemId(I)V

    .line 1054
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    :cond_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    .line 1062
    :goto_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 1063
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemVisible(Z)V

    .line 1065
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getWeight()F

    move-result v0

    .line 1071
    .local v0, "layoutWeight":F
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1073
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v2, :cond_2

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    .line 1074
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v2, :pswitch_data_0

    .line 1091
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1098
    :goto_1
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    return-void

    .line 1059
    .end local v0    # "layoutWeight":F
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1076
    .restart local v0    # "layoutWeight":F
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/high16 v2, 0x408c0000    # 4.375f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1081
    :pswitch_1
    const/high16 v2, 0x400c0000    # 2.1875f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1086
    :pswitch_2
    const v2, 0x3fbaaaa8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1095
    :cond_2
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1074
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "item"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    if-eqz p2, :cond_1

    .line 1029
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupDecorMask()V
    .locals 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    if-eqz v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 588
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 591
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$3;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$3;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    return-void
.end method

.method public collapseMenu()V
    .locals 1

    .prologue
    .line 2659
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 2660
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 2663
    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 6
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p2, "refreshMore"    # Z

    .prologue
    .line 1555
    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1556
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V

    .line 1557
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorHopeCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1558
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOptionMenuBarHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationMenuBarHeight(I)V

    .line 1559
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1561
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextSize(F)V

    .line 1562
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1570
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1571
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 1572
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1574
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1575
    return-void
.end method

.method public disableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2693
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2269
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    if-nez v1, :cond_1

    .line 2270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2279
    :cond_0
    :goto_0
    return v0

    .line 2272
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2273
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2279
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2699
    :cond_0
    return-void
.end method

.method public expandMenu()V
    .locals 1

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v0, :cond_0

    .line 2643
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    .line 2646
    :cond_0
    return-void
.end method

.method public findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1118
    const/4 v2, 0x0

    .line 1120
    .local v2, "item":Lcom/oppo/widget/OppoMenuItem;
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1121
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1122
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v0}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1123
    move-object v2, v0

    goto :goto_0

    .line 1128
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1591
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClickDuration()J
    .locals 2

    .prologue
    .line 2682
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method public getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorHopeCount()I
    .locals 1

    .prologue
    .line 1510
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    return v0
.end method

.method public getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorOperationTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMajorOperationTextSize()F
    .locals 1

    .prologue
    .line 1503
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    return v0
.end method

.method public getMajorOperationVisibility()I
    .locals 1

    .prologue
    .line 1635
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    return v0
.end method

.method public getMajorOperationsGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOperationsLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 1403
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 1515
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method public getMoreOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 1419
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 1423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionMenuBar()V
    .locals 2

    .prologue
    .line 1257
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1258
    return-void
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1697
    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isMoreOperaionsEnabled()Z
    .locals 1

    .prologue
    .line 2601
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method public isMoreOperationGroupScrolling()Z
    .locals 1

    .prologue
    .line 2597
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method public isMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 2605
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x0

    .line 1702
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 1703
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1707
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1708
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1713
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v7, :cond_2

    .line 1714
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1715
    .local v3, "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1716
    .local v5, "more":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1717
    .local v4, "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, 0x2

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_4

    .line 1718
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1719
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1728
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1733
    .end local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "more":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1756
    iget-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v7, :cond_3

    .line 1757
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 1758
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1761
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1762
    return-void

    .line 1720
    .restart local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "more":Landroid/view/View;
    :cond_4
    const/4 v7, 0x3

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_5

    .line 1721
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1722
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1723
    :cond_5
    const/4 v7, 0x1

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_1

    .line 1724
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1725
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 413
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 415
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    if-nez v2, :cond_2

    .line 416
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 417
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMajorOperationView()V

    .line 422
    const v2, 0xc020468

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 423
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v2, 0xc020469

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 426
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v2, 0xc02046a

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 429
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v2, 0xc02046b

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 432
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v2, 0xc02046c

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 436
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 439
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0xc02046d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarGallery;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 442
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-nez v2, :cond_0

    .line 443
    const-string v2, "OppoOptionMenuBar"

    const-string v3, "Can\'t find the More Operation View in DecorViw when init;if you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 450
    .local v1, "more":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 451
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 452
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "more":Landroid/view/View;
    :cond_1
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 457
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V

    .line 482
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2444
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2446
    if-eqz p1, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2448
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2478
    :cond_0
    :goto_0
    return-void

    .line 2472
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2474
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2373
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildCount()I

    move-result v14

    .line 2375
    .local v14, "count":I
    const/16 v18, 0x0

    .line 2376
    .local v18, "maxHeight":I
    const/16 v19, 0x0

    .line 2377
    .local v19, "maxWidth":I
    const/4 v13, 0x0

    .line 2379
    .local v13, "childState":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 2381
    .local v15, "height":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 2382
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2383
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 2385
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2387
    const/high16 v20, 0x40000000    # 2.0f

    .line 2388
    .local v20, "mode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    sub-int v21, v15, v2

    .line 2389
    .local v21, "resizeHeight":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2391
    .local v6, "customHeightMeasureSpec":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2396
    .end local v6    # "customHeightMeasureSpec":I
    .end local v20    # "mode":I
    .end local v21    # "resizeHeight":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 2397
    .local v17, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2399
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2401
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->combineMeasuredStates(II)I

    move-result v13

    .line 2381
    .end local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2393
    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 2405
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v13, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMeasuredDimension(II)V

    .line 2410
    return-void
.end method

.method protected onOffset(II)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "offstedDistance"    # I

    .prologue
    const/4 v9, 0x0

    .line 2130
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 2132
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2133
    .local v1, "e":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2138
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2140
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 2141
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2147
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 2155
    const/4 v5, 0x0

    .line 2156
    .local v5, "screen":Landroid/view/View;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2157
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2158
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "screen":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 2160
    .restart local v5    # "screen":Landroid/view/View;
    :cond_0
    if-eqz v5, :cond_2

    .line 2161
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2143
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_1
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2163
    .restart local v0    # "content":Landroid/view/View;
    .restart local v5    # "screen":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2167
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_3
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2174
    .end local v1    # "e":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2175
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2176
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez p1, :cond_9

    .line 2177
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v7

    sub-int v4, p2, v7

    .line 2178
    .local v4, "margin":I
    if-lez v4, :cond_7

    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ge v4, v7, :cond_7

    .line 2179
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2200
    .end local v4    # "margin":I
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2204
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidate()V

    .line 2205
    return-void

    .line 2180
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "margin":I
    :cond_7
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ne v4, v7, :cond_8

    .line 2181
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2182
    :cond_8
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-le v4, v7, :cond_5

    .line 2183
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2185
    .end local v4    # "margin":I
    :cond_9
    if-gez p1, :cond_5

    .line 2186
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v7, p1

    .line 2187
    .restart local v4    # "margin":I
    if-lez v4, :cond_a

    .line 2188
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2189
    :cond_a
    if-nez v4, :cond_b

    .line 2190
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2191
    :cond_b
    if-gez v4, :cond_5

    .line 2192
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method protected onOffsetToDefault(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 2208
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 2210
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2211
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2216
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2218
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 2219
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 2221
    :cond_0
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2230
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2231
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2232
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2233
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2236
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 2237
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 2517
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2518
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2525
    if-nez p1, :cond_1

    .line 2526
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-nez v0, :cond_0

    .line 2527
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2544
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2545
    return-void

    .line 2537
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-eqz v0, :cond_0

    .line 2538
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 2481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2488
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2492
    :cond_0
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2337
    return-void
.end method

.method public resetTheme()V
    .locals 6

    .prologue
    .line 2841
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 2844
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050458

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2845
    .local v1, "defMajorTextSize":I
    int-to-float v3, v1

    iput v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 2848
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05041d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2849
    .local v0, "defHeight":I
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 2851
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050428

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2852
    .local v2, "defaultGroupPadding":I
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 2853
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2857
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080478

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 2864
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2865
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2866
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2867
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2869
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0804cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 2872
    return-void
.end method

.method public setAllMenuItemsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1216
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1217
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1218
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1221
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setAllMenuItemsIcon(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p1, "icons":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    .line 1184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1186
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1188
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setAllMenuItemsTitle(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 1153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1155
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1157
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1279
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1284
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1285
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1286
    .local v0, "hasPadding":Z
    const/4 v2, 0x0

    .line 1287
    .local v2, "paddingLeft":I
    const/4 v4, 0x0

    .line 1288
    .local v4, "paddingTop":I
    const/4 v3, 0x0

    .line 1289
    .local v3, "paddingRight":I
    const/4 v1, 0x0

    .line 1291
    .local v1, "paddingBottom":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1292
    const/4 v0, 0x1

    .line 1293
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 1294
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 1295
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 1296
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 1301
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1304
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    if-eqz v0, :cond_1

    .line 1307
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1312
    .end local v0    # "hasPadding":Z
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingTop":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public setClickDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 2671
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2672
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 2674
    :cond_0
    return-void
.end method

.method public setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 1550
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1551
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1677
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1679
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1689
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1692
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 1595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1596
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1603
    if-eqz p2, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1606
    :cond_0
    return-void
.end method

.method public setFlowMenuFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2610
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 2611
    return-void
.end method

.method public setItemMoreIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1645
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 1646
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1648
    :cond_0
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1321
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1322
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bgDefault"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgLeft"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgMiddle"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bgRight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 1328
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1336
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1337
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1338
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1339
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1352
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1354
    return-void
.end method

.method public setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 1666
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1669
    :cond_0
    return-void
.end method

.method public setMajorOperationCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1363
    return-void
.end method

.method public setMajorOperationMenuBarHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1371
    if-lez p1, :cond_0

    .line 1372
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 1374
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1375
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1377
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1380
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1433
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1434
    return-void
.end method

.method public setMajorOperationTextColor(IIII)V
    .locals 4
    .param p1, "defaultColor"    # I
    .param p2, "leftColor"    # I
    .param p3, "middleColor"    # I
    .param p4, "rightColor"    # I

    .prologue
    .line 1458
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1461
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1444
    if-eqz p1, :cond_0

    .line 1445
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1447
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1448
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1449
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1450
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1452
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "defaultColor"    # Landroid/content/res/ColorStateList;
    .param p2, "leftColor"    # Landroid/content/res/ColorStateList;
    .param p3, "middleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "rightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1465
    if-eqz p1, :cond_0

    .line 1466
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1469
    :cond_0
    if-eqz p2, :cond_1

    .line 1470
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 1473
    :cond_1
    if-eqz p3, :cond_2

    .line 1474
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 1477
    :cond_2
    if-eqz p4, :cond_3

    .line 1478
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 1480
    :cond_3
    return-void
.end method

.method public setMajorOperationTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 1493
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 1494
    return-void
.end method

.method public setMajorOperationVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1615
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 1617
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    if-eqz v0, :cond_0

    .line 1618
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1626
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1627
    return-void
.end method

.method public setMenuItemEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1203
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1204
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1206
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1172
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1173
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1175
    :cond_0
    return-void
.end method

.method public setMenuItemTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1139
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1141
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1142
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1144
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1232
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1233
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1235
    :cond_0
    return-void
.end method

.method public setMenuItems(I)V
    .locals 1
    .param p1, "menuRes"    # I

    .prologue
    .line 673
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(II)V

    .line 674
    return-void
.end method

.method public setMenuItems(II)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I

    .prologue
    .line 677
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 678
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 681
    return-void
.end method

.method public setMenuItems(IIZ)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z

    .prologue
    .line 713
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 714
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 716
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 717
    return-void
.end method

.method public setMenuItems(IZ)V
    .locals 1
    .param p1, "menuRes"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 709
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(IIZ)V

    .line 710
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 685
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 691
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 692
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 697
    :goto_0
    if-eqz p1, :cond_0

    .line 698
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 703
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 706
    :cond_0
    return-void

    .line 694
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 727
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 728
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 733
    :goto_0
    if-eqz p1, :cond_0

    .line 734
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 740
    if-eqz p3, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 744
    :cond_0
    return-void

    .line 730
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 721
    return-void
.end method

.method public setMenuItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1243
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1244
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1245
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1248
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setOnOptionsItemSelectedListener(Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 1777
    return-void
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 2718
    return-void
.end method

.method public startElementItemAnimationDown()V
    .locals 3

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2749
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationDown(Landroid/widget/TextView;I)V

    .line 2748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2751
    :cond_0
    return-void
.end method

.method public startElementItemAnimationUp()V
    .locals 3

    .prologue
    .line 2740
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2742
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2744
    :cond_0
    return-void
.end method

.method protected startScrollDown()V
    .locals 1

    .prologue
    .line 1854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1855
    return-void
.end method

.method protected startScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1812
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocus()Z

    .line 1815
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocusFromTouch()Z

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1823
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1826
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-eqz v0, :cond_2

    .line 1827
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 1830
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1834
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1836
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 1837
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1845
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_5

    .line 1846
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 1850
    :cond_5
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1851
    return-void
.end method

.method public unRegister()V
    .locals 4

    .prologue
    .line 2495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2502
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2506
    :cond_0
    return-void
.end method
