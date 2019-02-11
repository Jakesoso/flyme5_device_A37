.class Lcom/color/widget/ColorResolverPagerAdapter;
.super Lcom/color/widget/ColorPagerAdapter;
.source "ColorResolverPagerAdapter.java"

# interfaces
.implements Lcom/color/widget/ColorGridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;
    }
.end annotation


# static fields
.field public static PAGE_SIZE:I


# instance fields
.field private colorGridList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorGridView;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mContext:Landroid/content/Context;

.field private mIsChecked:Z

.field private mIsRegistered:Z

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "[[",
            "Lcom/color/widget/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginIntent:Landroid/content/Intent;

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

.field private mSafeForwardingMode:Z

.field private pageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "pagecount"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "mCheckbox"    # Landroid/widget/CheckBox;
    .param p7, "alertDialog"    # Landroid/app/AlertDialog;
    .param p8, "safeForwardingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorGridView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Landroid/app/AlertDialog;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "listColorGridView":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorGridView;>;"
    .local p3, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/color/widget/ColorPagerAdapter;-><init>()V

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsChecked:Z

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 75
    new-instance v2, Lcom/color/widget/ColorResolverPagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorResolverPagerAdapter$1;-><init>(Lcom/color/widget/ColorResolverPagerAdapter;)V

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->executor:Ljava/util/concurrent/ExecutorService;

    move-object v2, p1

    .line 86
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->colorGridList:Ljava/util/List;

    .line 88
    invoke-direct {p0}, Lcom/color/widget/ColorResolverPagerAdapter;->setCache()V

    .line 89
    iput p4, p0, Lcom/color/widget/ColorResolverPagerAdapter;->pageCount:I

    .line 90
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    .line 92
    iput-object p5, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 93
    iput-object p7, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    .line 94
    iput-boolean p8, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mSafeForwardingMode:Z

    .line 95
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 97
    const/4 v2, 0x4

    sput v2, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    .line 101
    :goto_0
    if-eqz p6, :cond_0

    .line 102
    new-instance v2, Lcom/color/widget/ColorResolverPagerAdapter$2;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorResolverPagerAdapter$2;-><init>(Lcom/color/widget/ColorResolverPagerAdapter;)V

    invoke-virtual {p6, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsRegistered:Z

    .line 114
    return-void

    .line 99
    .end local v1    # "packageFilter":Landroid/content/IntentFilter;
    :cond_1
    const/16 v2, 0x8

    sput v2, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/color/widget/ColorResolverPagerAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorResolverPagerAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/widget/ColorResolverPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorResolverPagerAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorResolverPagerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorResolverPagerAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isInLockTaskMode()Z
    .locals 2

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 364
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCache()V
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 141
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 142
    .local v0, "cacheSize":I
    new-instance v2, Lcom/color/widget/ColorResolverPagerAdapter$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/color/widget/ColorResolverPagerAdapter$3;-><init>(Lcom/color/widget/ColorResolverPagerAdapter;II)V

    iput-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mMemoryCache:Landroid/util/LruCache;

    .line 149
    return-void
.end method


# virtual methods
.method public OnItemClick(I)V
    .locals 27
    .param p1, "position"    # I

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;->OnItemClick(I)V

    .line 317
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v12, "filter":Landroid/content/IntentFilter;
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 228
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v24, 0x3000000

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 231
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v24, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/color/widget/ColorResolverPagerAdapter;->isInLockTaskMode()Z

    move-result v24

    if-nez v24, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mSafeForwardingMode:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v15, v1, v2}, Lcom/color/widget/ColorResolverPagerAdapter;->safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    const v25, 0xc0a000c

    const v26, 0xc0a0010

    invoke-virtual/range {v24 .. v26}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 239
    .local v22, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsChecked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 240
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 241
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    :cond_2
    invoke-virtual {v15}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 244
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 245
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 246
    .local v8, "cat":Ljava/lang/String;
    invoke-virtual {v12, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    .end local v8    # "cat":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v24, "android.intent.category.DEFAULT"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v24, v0

    const/high16 v25, 0xfff0000

    and-int v8, v24, v25

    .line 252
    .local v8, "cat":I
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 253
    .local v10, "data":Landroid/net/Uri;
    const/high16 v24, 0x600000

    move/from16 v0, v24

    if-ne v8, v0, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 257
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v16    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 267
    const/high16 v24, 0x600000

    move/from16 v0, v24

    if-ne v8, v0, :cond_5

    const-string v24, "file"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    const-string v24, "content"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 270
    :cond_5
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 275
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 276
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_7

    .line 277
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 279
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v24

    if-ltz v24, :cond_6

    .line 280
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v20

    .line 281
    .local v20, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v25

    if-ltz v20, :cond_b

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v20    # "port":I
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 288
    .local v18, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v18, :cond_9

    .line 289
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 290
    .local v19, "path":Ljava/lang/String;
    :cond_8
    if-eqz v19, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 291
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PatternMatcher;

    .line 292
    .local v17, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 293
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 301
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v17    # "p":Landroid/os/PatternMatcher;
    .end local v18    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v19    # "path":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    .line 302
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v23, v0

    .line 303
    .local v23, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 304
    .local v7, "bestMatch":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v3, :cond_c

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 306
    .local v21, "r":Landroid/content/pm/ResolveInfo;
    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v24, v23, v13

    .line 308
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v7, :cond_a

    .line 309
    move-object/from16 v0, v21

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 304
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 258
    .end local v3    # "N":I
    .end local v7    # "bestMatch":I
    .end local v13    # "i":I
    .end local v21    # "r":Landroid/content/pm/ResolveInfo;
    .end local v23    # "set":[Landroid/content/ComponentName;
    .restart local v16    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 259
    .local v11, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 281
    .end local v11    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v16    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "port":I
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 312
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "port":I
    .restart local v3    # "N":I
    .restart local v7    # "bestMatch":I
    .restart local v13    # "i":I
    .restart local v23    # "set":[Landroid/content/ComponentName;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 315
    .end local v3    # "N":I
    .end local v7    # "bestMatch":I
    .end local v8    # "cat":I
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "data":Landroid/net/Uri;
    .end local v13    # "i":I
    .end local v23    # "set":[Landroid/content/ComponentName;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorResolverPagerAdapter;->dismiss()V

    goto/16 :goto_0
.end method

.method public OnItemLongClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 323
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    invoke-interface {v2, p1}, Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;->OnItemLongClick(I)V

    .line 340
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 328
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "package"

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 332
    .local v1, "in":Landroid/content/Intent;
    invoke-static {}, Lcom/color/widget/ColorResolverPagerAdapter;->isInLockTaskMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverPagerAdapter;->dismiss()V

    goto :goto_0
.end method

.method public addBitmapToMemoryCache(Ljava/lang/Integer;[[Lcom/color/widget/ColorItem;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "appinfo"    # [[Lcom/color/widget/ColorItem;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorResolverPagerAdapter;->getBitmapFromMemCache(Ljava/lang/Integer;)[[Lcom/color/widget/ColorItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Lcom/color/widget/ColorResolverDialogViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    check-cast p3, Lcom/color/widget/ColorGridView;

    .end local p3    # "arg2":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/color/widget/ColorResolverDialogViewPager;->removeView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverPagerAdapter;->unRegister()V

    .line 348
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/Integer;)[[Lcom/color/widget/ColorItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/color/widget/ColorItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->pageCount:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 128
    new-instance v0, Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/widget/ColorGridView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "oppoGridView":Lcom/color/widget/ColorGridView;
    check-cast p1, Lcom/color/widget/ColorResolverDialogViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Lcom/color/widget/ColorResolverDialogViewPager;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0, p2, v0}, Lcom/color/widget/ColorResolverPagerAdapter;->loadBitmap(ILcom/color/widget/ColorGridView;)V

    .line 131
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 123
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(ILcom/color/widget/ColorGridView;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "colorGridView"    # Lcom/color/widget/ColorGridView;

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/color/widget/ColorResolverPagerAdapter;->getBitmapFromMemCache(Ljava/lang/Integer;)[[Lcom/color/widget/ColorItem;

    move-result-object v1

    .line 154
    .local v1, "appinfo":[[Lcom/color/widget/ColorItem;
    if-nez v1, :cond_0

    .line 156
    new-instance v2, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;

    invoke-direct {v2, p0, p1}, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;-><init>(Lcom/color/widget/ColorResolverPagerAdapter;I)V

    .line 158
    .local v2, "bTask":Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;
    :try_start_0
    iget-object v6, p0, Lcom/color/widget/ColorResolverPagerAdapter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [[Lcom/color/widget/ColorItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .end local v2    # "bTask":Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p2, v1}, Lcom/color/widget/ColorGridView;->setAppInfo([[Lcom/color/widget/ColorItem;)V

    .line 170
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p2, v6}, Lcom/color/widget/ColorGridView;->setPageCount(I)V

    .line 171
    invoke-virtual {p2, p0}, Lcom/color/widget/ColorGridView;->setOnItemClickListener(Lcom/color/widget/ColorGridView$OnItemClickListener;)V

    .line 173
    :cond_1
    return-void

    .line 159
    .restart local v2    # "bTask":Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;
    :catch_0
    move-exception v3

    .line 160
    .local v3, "ce":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v3}, Ljava/util/concurrent/CancellationException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v3    # "ce":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v4

    .line 162
    .local v4, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v4    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v5

    .line 164
    .local v5, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method onActivityStarted(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 397
    .local v6, "target":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 400
    .local v3, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v6    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 401
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v6    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "safeForwardingMode"    # Z

    .prologue
    .line 369
    if-nez p3, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_1
    invoke-virtual {p2, p1, v3, v4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    .line 386
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 390
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 388
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setChosenComponentSender(Landroid/content/IntentSender;)V
    .locals 0
    .param p1, "is"    # Landroid/content/IntentSender;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 409
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorResolverPagerAdapter;->mIsRegistered:Z

    .line 358
    :cond_0
    return-void
.end method
