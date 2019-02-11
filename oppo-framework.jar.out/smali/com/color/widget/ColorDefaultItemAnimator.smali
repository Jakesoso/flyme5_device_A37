.class public Lcom/color/widget/ColorDefaultItemAnimator;
.super Lcom/color/widget/ColorRecyclerView$ItemAnimator;
.source "ColorDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;,
        Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/color/widget/ColorDefaultItemAnimator;->animateMoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;
    .param p1, "x1"    # Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->animateChangeImpl(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->animateAddImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/color/widget/ColorDefaultItemAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorDefaultItemAnimator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animateAddImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 233
    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 234
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 235
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/color/widget/ColorDefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/color/widget/ColorDefaultItemAnimator$5;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 261
    return-void
.end method

.method private animateChangeImpl(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    .line 355
    iget-object v0, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 356
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 357
    .local v5, "view":Landroid/view/View;
    iget-object v1, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 358
    .local v1, "newHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 359
    .local v2, "newView":Landroid/view/View;
    :goto_0
    if-eqz v5, :cond_0

    .line 361
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 363
    .local v4, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget v6, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 365
    iget v6, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 366
    invoke-virtual {v4, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/color/widget/ColorDefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4, v5}, Lcom/color/widget/ColorDefaultItemAnimator$7;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 393
    .end local v4    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_0
    if-eqz v2, :cond_1

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 395
    .local v3, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/color/widget/ColorDefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/color/widget/ColorDefaultItemAnimator$8;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 425
    .end local v3    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_1
    return-void

    .line 358
    .end local v2    # "newView":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private animateMoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    .locals 8
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v4, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 288
    .local v4, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 289
    .local v3, "deltaX":I
    sub-int v5, p5, p3

    .line 290
    .local v5, "deltaY":I
    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 293
    :cond_0
    if-eqz v5, :cond_1

    .line 294
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 299
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 300
    .local v6, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/color/widget/ColorDefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/color/widget/ColorDefaultItemAnimator$6;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 328
    return-void
.end method

.method private animateRemoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 194
    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 195
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/color/widget/ColorDefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/color/widget/ColorDefaultItemAnimator$4;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 569
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    .line 430
    .local v0, "changeInfo":Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, v0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 432
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 436
    .end local v0    # "changeInfo":Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    .prologue
    .line 439
    iget-object v0, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    .line 442
    :cond_0
    iget-object v0, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    .line 445
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 449
    iput-object v2, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 456
    :goto_0
    iget-object v1, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 457
    iget-object v1, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 458
    iget-object v1, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 459
    invoke-virtual {p0, p2, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V

    .line 460
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 450
    :cond_0
    iget-object v1, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 451
    iput-object v2, p1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 452
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public animateAdd(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 227
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "oldHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 333
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 334
    .local v12, "prevTranslationX":F
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 335
    .local v13, "prevTranslationY":F
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 336
    .local v11, "prevAlpha":F
    invoke-virtual/range {p0 .. p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 337
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v9, v1

    .line 338
    .local v9, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v10, v1

    .line 340
    .local v10, "deltaY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 341
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 343
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 345
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 346
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v9

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 347
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v10

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    :cond_0
    iget-object v14, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIIILcom/color/widget/ColorDefaultItemAnimator$1;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v1, 0x1

    return v1
.end method

.method public animateMove(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z
    .locals 11
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 266
    iget-object v9, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 267
    .local v9, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 268
    int-to-float v0, p3

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 269
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 270
    sub-int v7, p4, p2

    .line 271
    .local v7, "deltaX":I
    sub-int v8, p5, p3

    .line 272
    .local v8, "deltaY":I
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 274
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 276
    :cond_0
    if-eqz v7, :cond_1

    .line 277
    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 279
    :cond_1
    if-eqz v8, :cond_2

    .line 280
    neg-int v0, v8

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 282
    :cond_2
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIIILcom/color/widget/ColorDefaultItemAnimator$1;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public animateRemove(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 189
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 659
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 465
    iget-object v6, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 467
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 469
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 470
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    .line 471
    .local v4, "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 472
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 474
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 475
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 469
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 478
    .end local v4    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 479
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 480
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 481
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 483
    :cond_2
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 484
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 488
    :cond_3
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 489
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 490
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 491
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 492
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 495
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 496
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 497
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 498
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    .line 499
    .restart local v4    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 500
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 501
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 502
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 503
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 504
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 505
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    .end local v4    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 497
    .restart local v4    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 511
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 512
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 513
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 514
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 517
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 511
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 523
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 528
    :cond_b
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 533
    :cond_c
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 538
    :cond_d
    iget-object v7, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 542
    :cond_e
    invoke-direct {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 543
    return-void
.end method

.method public endAnimations()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 573
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 574
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 575
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    .line 576
    .local v4, "item":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    iget-object v10, v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v9, v10, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 577
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 578
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 579
    iget-object v10, v4, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 580
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 582
    .end local v4    # "item":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_0
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 583
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 584
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 585
    .local v4, "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 586
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 588
    .end local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 589
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 590
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 591
    .restart local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 592
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v12}, Landroid/view/View;->setAlpha(F)V

    .line 593
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 594
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 596
    .end local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 597
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 598
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V

    .line 597
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 600
    :cond_3
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 601
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->isRunning()Z

    move-result v10

    if-nez v10, :cond_4

    .line 655
    :goto_4
    return-void

    .line 605
    :cond_4
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 606
    .local v6, "listCount":I
    add-int/lit8 v3, v6, -0x1

    :goto_5
    if-ltz v3, :cond_7

    .line 607
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 608
    .local v8, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 609
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_6
    if-ltz v5, :cond_6

    .line 610
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    .line 611
    .local v7, "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    iget-object v4, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 612
    .restart local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 613
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 614
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 615
    iget-object v10, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 616
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 617
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 618
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 606
    .end local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v7    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 622
    .end local v5    # "j":I
    .end local v8    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 623
    add-int/lit8 v3, v6, -0x1

    :goto_7
    if-ltz v3, :cond_a

    .line 624
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 625
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 626
    add-int/lit8 v5, v2, -0x1

    .restart local v5    # "j":I
    :goto_8
    if-ltz v5, :cond_9

    .line 627
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 628
    .restart local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 629
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v12}, Landroid/view/View;->setAlpha(F)V

    .line 630
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 631
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 633
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 623
    .end local v4    # "item":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 637
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_a
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 638
    add-int/lit8 v3, v6, -0x1

    :goto_9
    if-ltz v3, :cond_d

    .line 639
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 640
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 641
    add-int/lit8 v5, v2, -0x1

    .restart local v5    # "j":I
    :goto_a
    if-ltz v5, :cond_c

    .line 642
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V

    .line 643
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 644
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 641
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 638
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 649
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    .end local v5    # "j":I
    :cond_d
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 650
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 651
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 652
    iget-object v10, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/color/widget/ColorDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 654
    invoke-virtual {p0}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchAnimationsFinished()V

    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1

    const/16 v19, 0x1

    .line 99
    .local v19, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_2

    const/16 v18, 0x1

    .line 100
    .local v18, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    const/4 v11, 0x1

    .line 101
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    const/4 v6, 0x1

    .line 102
    .local v6, "additionsPending":Z
    :goto_3
    if-nez v19, :cond_5

    if-nez v18, :cond_5

    if-nez v6, :cond_5

    if-nez v11, :cond_5

    .line 184
    :cond_0
    :goto_4
    return-void

    .line 98
    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v18    # "movesPending":Z
    .end local v19    # "removalsPending":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 99
    .restart local v19    # "removalsPending":Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 100
    .restart local v18    # "movesPending":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 101
    .restart local v11    # "changesPending":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 107
    .restart local v6    # "additionsPending":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 108
    .local v12, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/color/widget/ColorDefaultItemAnimator;->animateRemoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_5

    .line 110
    .end local v12    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 112
    if-eqz v18, :cond_7

    .line 113
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v16, Lcom/color/widget/ColorDefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorDefaultItemAnimator$1;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 128
    .local v16, "mover":Ljava/lang/Runnable;
    if-eqz v19, :cond_a

    .line 129
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 130
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 136
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_7
    :goto_6
    if-eqz v11, :cond_8

    .line 137
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 141
    new-instance v7, Lcom/color/widget/ColorDefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/color/widget/ColorDefaultItemAnimator$2;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 151
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v19, :cond_b

    .line 152
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 153
    .restart local v12    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v0, v12, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 159
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_8
    :goto_7
    if-eqz v6, :cond_0

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v4, Lcom/color/widget/ColorDefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/color/widget/ColorDefaultItemAnimator$3;-><init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 173
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v19, :cond_9

    if-nez v18, :cond_9

    if-eqz v11, :cond_f

    .line 174
    :cond_9
    if-eqz v19, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    .line 175
    .local v20, "removeDuration":J
    :goto_8
    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    .line 176
    .local v14, "moveDuration":J
    :goto_9
    if-eqz v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 177
    .local v8, "changeDuration":J
    :goto_a
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .line 178
    .local v22, "totalDelay":J
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 179
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 132
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    .restart local v16    # "mover":Ljava/lang/Runnable;
    .restart local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 155
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    :cond_b
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    .line 174
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :cond_c
    const-wide/16 v20, 0x0

    goto :goto_8

    .line 175
    .restart local v20    # "removeDuration":J
    :cond_d
    const-wide/16 v14, 0x0

    goto :goto_9

    .line 176
    .restart local v14    # "moveDuration":J
    :cond_e
    const-wide/16 v8, 0x0

    goto :goto_a

    .line 181
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    :cond_f
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method
