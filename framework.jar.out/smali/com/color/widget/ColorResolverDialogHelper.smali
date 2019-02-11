.class public Lcom/color/widget/ColorResolverDialogHelper;
.super Ljava/lang/Object;
.source "ColorResolverDialogHelper.java"


# static fields
.field public static PAGE_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorResolverDialogHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlwaysUseOption:Z

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mColorItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mColorMenuView:Lcom/color/widget/ColorMenuView;

.field private mContext:Landroid/content/Context;

.field private mDotView:Lcom/color/widget/ColorDotView;

.field private mIntent:Landroid/content/Intent;

.field private mIsChecked:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListColorGridView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorGridView;",
            ">;"
        }
    .end annotation
.end field

.field private mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOriginIntent:Landroid/content/Intent;

.field public mPageCount:I

.field private mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

.field private mResolveView:Landroid/view/View;

.field private mRiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Lcom/color/widget/ColorResolverDialogViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/color/widget/ColorResolverDialogHelper;-><init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z

    .prologue
    const/4 v3, 0x0

    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorResolverDialogHelper;-><init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;ZLjava/util/List;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;ZLjava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "displayResolverlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorItemList:Ljava/util/List;

    .line 100
    iput-boolean v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIsChecked:Z

    .line 164
    iput-boolean v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlwaysUseOption:Z

    .line 283
    iput-object v4, p0, Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 284
    iput-object v4, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    .line 176
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mActivity:Landroid/app/Activity;

    .line 177
    iput-object p2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 179
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 180
    const/4 v3, 0x4

    sput v3, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    .line 184
    :goto_0
    if-eqz p5, :cond_1

    .line 185
    iput-object p5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 199
    :goto_1
    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-static {v2}, Lcom/color/widget/ColorItemHelper;->reSortResolveInfoList(Ljava/util/List;)V

    .line 200
    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    sget v4, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPageCount:I

    .line 202
    return-void

    .line 182
    :cond_0
    const/16 v3, 0x8

    sput v3, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 188
    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v1, "in":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 194
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    if-eqz p4, :cond_5

    const/16 v2, 0x40

    :cond_5
    or-int/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 197
    .end local v1    # "in":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, p3}, Lcom/color/widget/ColorResolverDialogHelper;->addInitiaIntents([Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorItemList:Ljava/util/List;

    .line 100
    iput-boolean v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIsChecked:Z

    .line 164
    iput-boolean v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlwaysUseOption:Z

    .line 283
    iput-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 284
    iput-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 105
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090460

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mResolveView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mResolveView:Landroid/view/View;

    const v1, 0xc0204cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorResolverDialogViewPager;

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mViewPager:Lcom/color/widget/ColorResolverDialogViewPager;

    .line 109
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mResolveView:Landroid/view/View;

    const v1, 0xc0204cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorDotView;

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mDotView:Lcom/color/widget/ColorDotView;

    .line 110
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mResolveView:Landroid/view/View;

    const v1, 0xc0204cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorMenuView;

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorMenuView:Lcom/color/widget/ColorMenuView;

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0xc040547

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorResolverDialogHelper;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/color/widget/ColorResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorResolverDialogHelper;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorResolverDialogHelper;)Lcom/color/widget/ColorDotView;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorResolverDialogHelper;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mDotView:Lcom/color/widget/ColorDotView;

    return-object v0
.end method

.method private addInitiaIntents([Landroid/content/Intent;)V
    .locals 8
    .param p1, "initialIntents"    # [Landroid/content/Intent;

    .prologue
    .line 209
    if-eqz p1, :cond_3

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 211
    aget-object v2, p1, v1

    .line 212
    .local v2, "ii":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 210
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 216
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_1

    .line 217
    const-string v5, "ColorResolverDialogHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_1
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 221
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 222
    instance-of v5, v2, Landroid/content/pm/LabeledIntent;

    if-eqz v5, :cond_2

    move-object v3, v2

    .line 223
    check-cast v3, Landroid/content/pm/LabeledIntent;

    .line 224
    .local v3, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v5

    iput v5, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 226
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {v3}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v5

    iput v5, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 229
    .end local v3    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "i":I
    .end local v2    # "ii":Landroid/content/Intent;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method private create()V
    .locals 10

    .prologue
    .line 117
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 118
    .local v5, "targetParcelable":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    iput-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 119
    if-eqz v5, :cond_0

    instance-of v6, v5, Landroid/content/Intent;

    if-nez v6, :cond_0

    .line 120
    const-string v6, "ColorResolverDialogHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target is not an intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 122
    :cond_0
    if-nez v5, :cond_1

    .line 123
    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    :cond_1
    move-object v6, v5

    .line 125
    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    .line 126
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 127
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 128
    .local v4, "pa":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 129
    .local v3, "initialIntents":[Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 130
    array-length v6, v4

    new-array v3, v6, [Landroid/content/Intent;

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 132
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_2

    .line 133
    const-string v6, "ColorResolverDialogHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initial intent #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not an Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    aget-object v2, v4, v1

    check-cast v2, Landroid/content/Intent;

    .line 137
    .local v2, "in":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/color/widget/ColorResolverDialogHelper;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 138
    aput-object v2, v3, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0, v3}, Lcom/color/widget/ColorResolverDialogHelper;->addInitiaIntents([Landroid/content/Intent;)V

    .line 142
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-static {v6}, Lcom/color/widget/ColorItemHelper;->reSortResolveInfoList(Ljava/util/List;)V

    .line 143
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 144
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 145
    const/4 v6, 0x4

    sput v6, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    .line 150
    :goto_2
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    sget v8, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPageCount:I

    .line 152
    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/color/widget/ColorResolverDialogHelper;->getResolveView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 147
    :cond_4
    const/16 v6, 0x8

    sput v6, Lcom/color/widget/ColorResolverDialogHelper;->PAGE_SIZE:I

    goto :goto_2
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public adjustPosition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "priorPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/color/widget/ColorItemHelper;->adjustPosition(Ljava/util/List;Ljava/util/List;)V

    .line 386
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getResolveInforList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getResolveView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 295
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mDotView:Lcom/color/widget/ColorDotView;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorDotView;->setDotSize(I)V

    .line 296
    new-instance v0, Lcom/color/widget/ColorResolverPagerAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mListColorGridView:Ljava/util/List;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget v4, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPageCount:I

    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/color/widget/ColorResolverPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    .line 297
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mChosenComponentSender:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorResolverPagerAdapter;->setChosenComponentSender(Landroid/content/IntentSender;)V

    .line 298
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mViewPager:Lcom/color/widget/ColorResolverDialogViewPager;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorResolverDialogViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 299
    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mViewPager:Lcom/color/widget/ColorResolverDialogViewPager;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mListColorGridView:Ljava/util/List;

    iget-object v4, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v2 .. v7}, Lcom/color/widget/ColorResolverDialogViewPager;->setColorGridViewList(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    .line 300
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mViewPager:Lcom/color/widget/ColorResolverDialogViewPager;

    new-instance v1, Lcom/color/widget/ColorResolverDialogHelper$3;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorResolverDialogHelper$3;-><init>(Lcom/color/widget/ColorResolverDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorResolverDialogViewPager;->setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mResolveView:Landroid/view/View;

    return-object v0
.end method

.method public setColorMenuView(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "colorItems":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorItem;>;"
    const/4 v0, 0x0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorMenuView:Lcom/color/widget/ColorMenuView;

    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorItemList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorMenuView;->setColorItem(Ljava/util/List;)V

    .line 322
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorMenuView:Lcom/color/widget/ColorMenuView;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorMenuView;->setVisibility(I)V

    .line 323
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mColorMenuView:Lcom/color/widget/ColorMenuView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 291
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "longclickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mLongclickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 287
    return-void
.end method

.method public setResolveView(Lcom/color/widget/ColorResolverDialogViewPager;Lcom/color/widget/ColorDotView;Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "mViewPager"    # Lcom/color/widget/ColorResolverDialogViewPager;
    .param p2, "mDotView"    # Lcom/color/widget/ColorDotView;
    .param p3, "mCheckbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorResolverDialogHelper;->setResolveView(Lcom/color/widget/ColorResolverDialogViewPager;Lcom/color/widget/ColorDotView;Landroid/widget/CheckBox;Z)V

    .line 237
    return-void
.end method

.method public setResolveView(Lcom/color/widget/ColorResolverDialogViewPager;Lcom/color/widget/ColorDotView;Landroid/widget/CheckBox;Z)V
    .locals 9
    .param p1, "mViewPager"    # Lcom/color/widget/ColorResolverDialogViewPager;
    .param p2, "mDotView"    # Lcom/color/widget/ColorDotView;
    .param p3, "mCheckbox"    # Landroid/widget/CheckBox;
    .param p4, "safeForwardingMode"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/color/widget/ColorDotView;->setDotSize(I)V

    .line 241
    new-instance v0, Lcom/color/widget/ColorResolverPagerAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mListColorGridView:Ljava/util/List;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget v4, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPageCount:I

    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/color/widget/ColorResolverPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    .line 242
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorResolverDialogViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 245
    new-instance v0, Lcom/color/widget/ColorResolverDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorResolverDialogHelper$1;-><init>(Lcom/color/widget/ColorResolverDialogHelper;)V

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorResolverDialogViewPager;->setColorResolverItemEventListener(Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;)V

    .line 262
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mListColorGridView:Ljava/util/List;

    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    move-object v0, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorResolverDialogViewPager;->setColorGridViewList(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    .line 263
    new-instance v0, Lcom/color/widget/ColorResolverDialogHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/color/widget/ColorResolverDialogHelper$2;-><init>(Lcom/color/widget/ColorResolverDialogHelper;Lcom/color/widget/ColorDotView;)V

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorResolverDialogViewPager;->setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    .line 279
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 363
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/color/widget/ColorResolverDialogHelper;->create()V

    .line 346
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 349
    :cond_0
    return-void
.end method

.method public show(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogHelper;->mIntent:Landroid/content/Intent;

    .line 353
    invoke-direct {p0}, Lcom/color/widget/ColorResolverDialogHelper;->create()V

    .line 354
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 357
    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/color/widget/ColorResolverDialogHelper;->mPagerAdapter:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-virtual {v0}, Lcom/color/widget/ColorResolverPagerAdapter;->unRegister()V

    .line 376
    :cond_0
    return-void
.end method
