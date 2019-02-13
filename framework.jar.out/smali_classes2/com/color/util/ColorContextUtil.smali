.class public Lcom/color/util/ColorContextUtil;
.super Ljava/lang/Object;
.source "ColorContextUtil.java"


# static fields
.field private static final METADATA_STYLE_TITLE:Ljava/lang/String; = "color.support.options"

.field private static final METADATA_STYLE_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "ColorContextUtil"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/util/ColorContextUtil;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/color/util/ColorContextUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/color/util/ColorContextUtil;->mContext:Landroid/content/Context;

    .line 49
    :cond_0
    return-void
.end method

.method public static getOppoThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0xc030002

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 77
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 78
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static isColorStyle(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 87
    invoke-static {p0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 132
    .end local p0    # "context":Landroid/content/Context;
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    return v5

    .line 92
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    if-eqz p0, :cond_1

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 95
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 96
    const-string/jumbo v5, "true"

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "color.support.options"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 97
    goto :goto_0

    .line 101
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ColorContextUtil"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    :try_start_1
    instance-of v5, p0, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_2

    .line 109
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 120
    :cond_2
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 123
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 124
    const-string/jumbo v5, "true"

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "color.support.options"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    .line 125
    goto :goto_0

    .line 112
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 113
    .local v2, "ctx":Landroid/content/Context;
    if-eq p0, v2, :cond_2

    .line 116
    move-object p0, v2

    .line 118
    goto :goto_1

    .line 129
    .end local v2    # "ctx":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v3

    .line 130
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v5, "ColorContextUtil"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isOppoStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "isOppoTheme":Z
    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Loppo/R$styleable;->OppoTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v1
.end method


# virtual methods
.method public isOppoStyle()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/color/util/ColorContextUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/color/util/ColorContextUtil;->mContext:Landroid/content/Context;

    .line 55
    :cond_0
    return-void
.end method
