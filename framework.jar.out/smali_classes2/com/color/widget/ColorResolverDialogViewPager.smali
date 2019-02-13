.class public Lcom/color/widget/ColorResolverDialogViewPager;
.super Lcom/color/widget/ColorViewPager;
.source "ColorResolverDialogViewPager.java"


# static fields
.field public static PAGE_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorResolverDialogViewPager"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mColorGridViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorGridView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

.field private mContext:Landroid/content/Context;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorResolverDialogViewPager;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    .line 54
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    .line 59
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/color/widget/ColorViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 66
    const/4 v1, 0x4

    sput v1, Lcom/color/widget/ColorResolverDialogViewPager;->PAGE_SIZE:I

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mRiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v2, v1

    sget v1, Lcom/color/widget/ColorResolverDialogViewPager;->PAGE_SIZE:I

    int-to-double v6, v1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v4, v2

    .line 71
    .local v4, "count":I
    new-instance v0, Lcom/color/widget/ColorResolverPagerAdapter;

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorGridViewList:Ljava/util/List;

    iget-object v3, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mRiList:Ljava/util/List;

    iget-object v5, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mOriginIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/color/widget/ColorResolverPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Z)V

    .line 74
    .local v0, "mPagerAdapter":Lcom/color/widget/ColorResolverPagerAdapter;
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorResolverPagerAdapter;->setColorResolverItemEventListener(Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;)V

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorResolverDialogViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 79
    return-void

    .line 68
    .end local v0    # "mPagerAdapter":Lcom/color/widget/ColorResolverPagerAdapter;
    .end local v4    # "count":I
    :cond_1
    const/16 v1, 0x8

    sput v1, Lcom/color/widget/ColorResolverDialogViewPager;->PAGE_SIZE:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverDialogViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 95
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorResolverDialogViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "child":Landroid/view/View;
    const v4, 0x1fffffff

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 98
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 99
    move v2, v1

    .line 94
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 103
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorViewPager;->onMeasure(II)V

    .line 104
    return-void
.end method

.method public setColorGridViewList(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V
    .locals 0
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "checkbox"    # Landroid/widget/CheckBox;
    .param p5, "alertDialog"    # Landroid/app/AlertDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorGridView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Landroid/app/AlertDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "listColorGridView":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorGridView;>;"
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorGridViewList:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mRiList:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mOriginIntent:Landroid/content/Intent;

    .line 111
    iput-object p4, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mCheckBox:Landroid/widget/CheckBox;

    .line 112
    iput-object p5, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 113
    return-void
.end method

.method public setColorResolverItemEventListener(Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    .line 86
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverDialogViewPager;->getAdapter()Lcom/color/widget/ColorPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverDialogViewPager;->getAdapter()Lcom/color/widget/ColorPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorResolverDialogViewPager;->mColorResolverItemEventListener:Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerAdapter;->setColorResolverItemEventListener(Lcom/color/widget/ColorPagerAdapter$ColorResolverItemEventListener;)V

    .line 89
    :cond_0
    return-void
.end method
