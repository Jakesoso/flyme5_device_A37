.class Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;
.super Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarAnimListener"
.end annotation


# instance fields
.field private mIsCancel:Z

.field private final mIsShow:Z

.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V
    .locals 1
    .param p2, "isShow"    # Z

    .prologue
    .line 725
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Lcom/color/widget/ColorSearchViewChangeAnim$1;)V

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->mIsCancel:Z

    .line 726
    iput-boolean p2, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->mIsShow:Z

    .line 727
    return-void
.end method


# virtual methods
.method isCancel()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->mIsCancel:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->mIsCancel:Z

    .line 732
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->mIsCancel:Z

    .line 737
    return-void
.end method
