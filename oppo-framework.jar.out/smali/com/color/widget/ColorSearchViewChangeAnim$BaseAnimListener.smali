.class abstract Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseAnimListener"
.end annotation


# instance fields
.field private mIsCancel:Z

.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V
    .locals 1

    .prologue
    .line 635
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;->mIsCancel:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;Lcom/color/widget/ColorSearchViewChangeAnim$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;
    .param p2, "x1"    # Lcom/color/widget/ColorSearchViewChangeAnim$1;

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    return-void
.end method


# virtual methods
.method isCancel()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;->mIsCancel:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;->mIsCancel:Z

    .line 642
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;->mIsCancel:Z

    .line 647
    return-void
.end method
