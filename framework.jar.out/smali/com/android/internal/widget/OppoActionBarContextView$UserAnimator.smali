.class Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;
.super Ljava/lang/Object;
.source "OppoActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserAnimator"
.end annotation


# instance fields
.field private mAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/widget/OppoActionBarContextView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoActionBarContextView;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mAnimList:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mAnimWrapperList:Ljava/util/List;

    .line 600
    iput-object p2, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mTag:Ljava/lang/String;

    .line 601
    return-void
.end method


# virtual methods
.method public getAnimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mAnimList:Ljava/util/List;

    return-object v0
.end method

.method public getAnimWrapperList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mAnimWrapperList:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->mTag:Ljava/lang/String;

    return-object v0
.end method
