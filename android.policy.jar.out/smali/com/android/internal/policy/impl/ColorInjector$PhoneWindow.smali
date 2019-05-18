.class Lcom/android/internal/policy/impl/ColorInjector$PhoneWindow;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneWindow"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorInjector.PhoneWindow"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMaskView(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p0, "decor"    # Landroid/view/ViewGroup;
    .param p1, "hasMaskView"    # Z

    .prologue
    const/4 v2, -0x1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "maskView":Landroid/widget/ImageView;
    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 115
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .end local v0    # "maskView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method static hasMaskView(Landroid/view/ViewGroup;Z)Z
    .locals 5
    .param p0, "decor"    # Landroid/view/ViewGroup;
    .param p1, "isFloating"    # Z

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Loppo/R$styleable;->OppoWindow:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 104
    .local v1, "hasMaskView":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0xc09043b

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    :cond_0
    return v1
.end method

.method static newActionBarContextView(Landroid/content/Context;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static newActionMode(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)Lcom/android/internal/view/StandaloneActionMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "isFocusable"    # Z

    .prologue
    .line 74
    invoke-static {p0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/internal/view/OppoStandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/OppoStandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    goto :goto_0
.end method

.method static overlayStartingLayout(Landroid/view/Window;I)I
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "layoutResource"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    .end local p1    # "layoutResource":I
    :cond_0
    :goto_0
    return p1

    .line 90
    .restart local p1    # "layoutResource":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 93
    .local v1, "displayOptions":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    .line 95
    const p1, 0xc090444

    goto :goto_0
.end method

.method static setActionModeLayout(Landroid/view/ViewStub;)V
    .locals 1
    .param p0, "stub"    # Landroid/view/ViewStub;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const v0, 0xc090445

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 84
    :cond_0
    return-void
.end method
