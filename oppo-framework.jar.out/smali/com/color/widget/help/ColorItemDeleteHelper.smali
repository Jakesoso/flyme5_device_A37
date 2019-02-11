.class public Lcom/color/widget/help/ColorItemDeleteHelper;
.super Ljava/lang/Object;
.source "ColorItemDeleteHelper.java"


# instance fields
.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorDeleteAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecoverAnimations:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemDeleteHelper;
    .param p1, "x1"    # Lcom/color/widget/ColorDeleteAnimation;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/help/ColorItemDeleteHelper;->postDispatchSwipe(Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/widget/help/ColorItemDeleteHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemDeleteHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemDeleteHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method private hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 83
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorDeleteAnimation;

    iget-boolean v2, v2, Lcom/color/widget/ColorDeleteAnimation;->mEnded:Z

    if-nez v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 88
    :goto_1
    return v2

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private postDispatchSwipe(Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "anim"    # Lcom/color/widget/ColorDeleteAnimation;
    .param p2, "swipeDir"    # I
    .param p3, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    new-instance v1, Lcom/color/widget/help/ColorItemDeleteHelper$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/color/widget/help/ColorItemDeleteHelper$2;-><init>(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorDeleteAnimation;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public startDeleteAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFF)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    const/4 v3, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    .local v8, "currentTranslateX":F
    const/4 v9, 0x0

    .line 37
    .local v9, "currentTranslateY":F
    const/4 v6, 0x0

    .line 38
    .local v6, "targetTranslateY":F
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    .line 39
    .local v5, "targetTranslateX":F
    new-instance v0, Lcom/color/widget/help/ColorItemDeleteHelper$1;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/color/widget/help/ColorItemDeleteHelper$1;-><init>(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFFLcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 52
    .local v0, "rv":Lcom/color/widget/ColorDeleteAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/color/widget/ColorDeleteAnimation;->setDuration(J)V

    .line 53
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0}, Lcom/color/widget/ColorDeleteAnimation;->start()V

    .line 55
    return-void
.end method
