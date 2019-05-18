.class Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;
.super Landroid/animation/ValueAnimator;
.source "ExpandableListConnector.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorExpandListAnimation"
.end annotation


# instance fields
.field final COLLAPSE_ANIMATION:I

.field final EXPAND_ANIMATION:I

.field private mAnimatedView:Landroid/view/View;

.field private mChageOffset:Z

.field private mType:I

.field final synthetic this$0:Landroid/widget/ExpandableListConnector;


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;I)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 1356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;-><init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;IZ)V

    .line 1357
    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;IZ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "type"    # I
    .param p4, "changeOffset"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1358
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 1350
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->COLLAPSE_ANIMATION:I

    .line 1351
    iput v5, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->EXPAND_ANIMATION:I

    .line 1353
    iput v5, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mType:I

    .line 1359
    iput-object p2, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mAnimatedView:Landroid/view/View;

    .line 1360
    iput p3, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mType:I

    .line 1361
    iput-boolean p4, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mChageOffset:Z

    .line 1362
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e083127    # 0.133f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1363
    .local v0, "mInterpolator":Landroid/view/animation/PathInterpolator;
    iget v1, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mType:I

    if-ne v1, v5, :cond_1

    .line 1364
    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->setFloatValues([F)V

    .line 1368
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1369
    new-instance v1, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation$1;-><init>(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;Landroid/widget/ExpandableListConnector;)V

    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1380
    return-void

    .line 1365
    :cond_1
    iget v1, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mType:I

    if-nez v1, :cond_0

    .line 1366
    new-array v1, v6, [F

    fill-array-data v1, :array_1

    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->setFloatValues([F)V

    goto :goto_0

    .line 1364
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1366
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$200(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    .prologue
    .line 1349
    iget-boolean v0, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mChageOffset:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->mAnimatedView:Landroid/view/View;

    return-object v0
.end method
