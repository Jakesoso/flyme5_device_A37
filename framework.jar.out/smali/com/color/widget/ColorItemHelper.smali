.class public Lcom/color/widget/ColorItemHelper;
.super Ljava/lang/Object;
.source "ColorItemHelper.java"


# static fields
.field private static bluetooth:Ljava/lang/String;

.field private static email:Ljava/lang/String;

.field private static mColumnCounts:I

.field private static mRowCounts:I

.field private static message:Ljava/lang/String;

.field private static nfc:Ljava/lang/String;

.field private static oppocommunity:Ljava/lang/String;

.field private static prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    .line 52
    const-string v0, "com.tencent"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->prefix:Ljava/lang/String;

    .line 53
    const-string v0, "com.android.mms"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->message:Ljava/lang/String;

    .line 54
    const-string v0, "com.android.email"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->email:Ljava/lang/String;

    .line 55
    const-string v0, "com.android.bluetooth"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->bluetooth:Ljava/lang/String;

    .line 56
    const-string v0, "com.oppo.community"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->oppocommunity:Ljava/lang/String;

    .line 57
    const-string v0, "com.android.nfc"

    sput-object v0, Lcom/color/widget/ColorItemHelper;->nfc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ListToArray(Ljava/util/List;)[[Landroid/content/pm/ResolveInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[[",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    sget v8, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    sput v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    .line 37
    sget v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    sget v7, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Landroid/content/pm/ResolveInfo;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/content/pm/ResolveInfo;

    .line 38
    .local v0, "array":[[Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .line 39
    .local v5, "start":I
    sget v6, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    add-int v1, v5, v6

    .line 40
    .local v1, "end":I
    const/4 v2, 0x0

    .line 41
    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    sget v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    if-ge v2, v6, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    move v4, v1

    .line 43
    .local v4, "lend":I
    :goto_1
    invoke-interface {p0, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 44
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    aget-object v7, v0, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    move v5, v1

    .line 46
    sget v6, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    add-int v1, v5, v6

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 42
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "lend":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 49
    :cond_1
    return-object v0
.end method

.method private static add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "r"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public static adjustPosition(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p1, "priorPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, "prior":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v5, "priorSort":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v6, "rest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 143
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 145
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 147
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 153
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v2    # "k":I
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 160
    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-interface {p0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    return-void
.end method

.method public static getAppInfo(Ljava/util/List;Landroid/content/pm/PackageManager;)[[Lcom/color/widget/ColorItem;
    .locals 8
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")[[",
            "Lcom/color/widget/ColorItem;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Lcom/color/widget/ColorItemHelper;->ListToArray(Ljava/util/List;)[[Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 105
    .local v5, "resolveInfoArray":[[Landroid/content/pm/ResolveInfo;
    sget v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    sget v7, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Lcom/color/widget/ColorItem;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/color/widget/ColorItem;

    .line 106
    .local v3, "mAppInfo":[[Lcom/color/widget/ColorItem;
    sget v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    sget v7, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Integer;

    .line 107
    .local v2, "mAppIcons":[[Ljava/lang/Integer;
    sget v6, Lcom/color/widget/ColorItemHelper;->mRowCounts:I

    sget v7, Lcom/color/widget/ColorItemHelper;->mColumnCounts:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 108
    .local v4, "mAppNames":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 109
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v6, v5, v0

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 110
    aget-object v6, v5, v0

    aget-object v6, v6, v1

    if-eqz v6, :cond_0

    .line 111
    aget-object v6, v3, v0

    new-instance v7, Lcom/color/widget/ColorItem;

    invoke-direct {v7}, Lcom/color/widget/ColorItem;-><init>()V

    aput-object v7, v6, v1

    .line 112
    aget-object v6, v3, v0

    aget-object v6, v6, v1

    aget-object v7, v5, v0

    aget-object v7, v7, v1

    invoke-virtual {v7, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/color/widget/ColorItem;->setText(Ljava/lang/String;)V

    .line 113
    aget-object v6, v3, v0

    aget-object v6, v6, v1

    aget-object v7, v5, v0

    aget-object v7, v7, v1

    invoke-static {v7, p1}, Lcom/color/widget/ColorItemHelper;->oppoLoadIconForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/color/widget/ColorItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "j":I
    :cond_2
    return-object v3
.end method

.method static oppoLoadIconForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/ResolveInfo;->icon:I

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 135
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 129
    .local v1, "iconRes":I
    if-eqz v1, :cond_2

    .line 130
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v2, v1, v3, v5}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 135
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static reSortResolveInfoList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 61
    .local v6, "rmessage":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 62
    .local v4, "remail":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 63
    .local v3, "rbluetooth":Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    .line 64
    .local v8, "roppocommunity":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 65
    .local v7, "rnfc":Landroid/content/pm/ResolveInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "afterSort":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v9, "rtencent":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, "rest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .local v2, "packageName":Ljava/lang/String;
    sget-object v10, Lcom/color/widget/ColorItemHelper;->message:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 71
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "rmessage":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 68
    .restart local v6    # "rmessage":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    sget-object v10, Lcom/color/widget/ColorItemHelper;->email:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 73
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "remail":Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .restart local v4    # "remail":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 74
    :cond_1
    sget-object v10, Lcom/color/widget/ColorItemHelper;->bluetooth:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 75
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rbluetooth":Landroid/content/pm/ResolveInfo;
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .restart local v3    # "rbluetooth":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 76
    :cond_2
    sget-object v10, Lcom/color/widget/ColorItemHelper;->oppocommunity:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 77
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "roppocommunity":Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .restart local v8    # "roppocommunity":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 78
    :cond_3
    sget-object v10, Lcom/color/widget/ColorItemHelper;->nfc:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 79
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "rnfc":Landroid/content/pm/ResolveInfo;
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .restart local v7    # "rnfc":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 80
    :cond_4
    sget-object v10, Lcom/color/widget/ColorItemHelper;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 81
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 88
    invoke-static {p0, v6}, Lcom/color/widget/ColorItemHelper;->add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    .line 89
    invoke-static {p0, v4}, Lcom/color/widget/ColorItemHelper;->add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    .line 90
    invoke-static {p0, v3}, Lcom/color/widget/ColorItemHelper;->add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    .line 91
    invoke-static {p0, v8}, Lcom/color/widget/ColorItemHelper;->add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    .line 92
    invoke-static {p0, v7}, Lcom/color/widget/ColorItemHelper;->add(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    .line 93
    invoke-interface {p0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    return-void
.end method
