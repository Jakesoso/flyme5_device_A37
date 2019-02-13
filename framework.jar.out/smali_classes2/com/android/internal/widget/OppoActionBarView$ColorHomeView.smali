.class Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;
.super Lcom/android/internal/widget/ActionBarView$HomeView;
.source "OppoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorHomeView"
.end annotation


# instance fields
.field private final mIsOppoStyle:Z

.field private mTitlePaddingLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 976
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 977
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 980
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 973
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mTitlePaddingLeft:I

    .line 981
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mIsOppoStyle:Z

    .line 982
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05041a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mTitlePaddingLeft:I

    goto :goto_0
.end method


# virtual methods
.method public getUpWidth()I
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 991
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v0

    .line 993
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;->mTitlePaddingLeft:I

    goto :goto_0
.end method
