.class public Lcom/android/internal/widget/ColorActionBarSplitContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "ColorActionBarSplitContainer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorActionBarSplitContainer"


# instance fields
.field private final mIsOppoStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ColorActionBarSplitContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ColorActionBarSplitContainer;->mIsOppoStyle:Z

    .line 52
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/android/internal/widget/ColorActionBarSplitContainer;->mIsOppoStyle:Z

    if-nez v1, :cond_0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ColorActionBarSplitContainer;->mHeight:I

    .line 64
    .local v0, "tempHeight":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ColorActionBarSplitContainer;->mHeight:I

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 66
    iput v0, p0, Lcom/android/internal/widget/ColorActionBarSplitContainer;->mHeight:I

    goto :goto_0
.end method
