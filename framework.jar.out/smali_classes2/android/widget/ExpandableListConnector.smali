.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;,
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private mColorExpandListRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDuration:J
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2016-01-07 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAnimationEnabled:Z
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mHeightOffset:F
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mMaxExpGroupCount:I

.field mPositionMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mTotalExpChildrenCount:I

.field tmpCollapseGroupPos:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field tmpExpandGroupPos:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 81
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1145
    iput v1, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    .line 1151
    iput v1, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    .line 1187
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 90
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ExpandableListConnector;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/ExpandableListConnector;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mHeightOffset:F

    return p1
.end method

.method private getAnimationDuration(IIII)J
    .locals 2
    .param p1, "count"    # I
    .param p2, "min"    # I
    .param p3, "middle"    # I
    .param p4, "max"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2016-01-07 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 1215
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    int-to-long v0, v0

    .line 1219
    :goto_0
    return-wide v0

    .line 1216
    :cond_0
    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    .line 1217
    int-to-long v0, p4

    goto :goto_0

    .line 1219
    :cond_1
    sub-int v0, p4, p3

    add-int/lit8 v1, p1, -0x5

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, p3

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getCollapseDuration(I)J
    .locals 3
    .param p1, "count"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2016-01-07 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1206
    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x190

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ExpandableListConnector;->getAnimationDuration(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getExpandDuration(I)J
    .locals 3
    .param p1, "count"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2016-01-07 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1198
    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x258

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ExpandableListConnector;->getAnimationDuration(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v12, -0x1

    .line 556
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 557
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 558
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 561
    .local v0, "curFlPos":I
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 563
    if-eqz p2, :cond_3

    .line 565
    const/4 v8, 0x0

    .line 567
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 568
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 569
    .local v1, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v10, v11, v9}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 570
    .local v7, "newGPos":I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 571
    if-ne v7, v12, :cond_0

    .line 573
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v3, v3, -0x1

    .line 577
    :cond_0
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 578
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 567
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 582
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    .line 584
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 589
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    .line 590
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 592
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 598
    .restart local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 599
    :cond_4
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 608
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 615
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 616
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 619
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 620
    add-int/2addr v0, v4

    .line 621
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 590
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 604
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    .line 623
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method calChildrenBottomPosition(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1285
    iget v5, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-eq v5, v6, :cond_1

    :cond_0
    if-lez p2, :cond_1

    .line 1286
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 1287
    .local v4, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 1288
    .local v2, "grouppos":I
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v5, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 1289
    .local v1, "childpos":I
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 1290
    .local v0, "childCount":I
    const/16 v5, 0x64

    if-lt v0, v5, :cond_2

    .line 1307
    .end local v0    # "childCount":I
    .end local v1    # "childpos":I
    .end local v2    # "grouppos":I
    .end local v4    # "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local p2    # "height":I
    :cond_1
    :goto_0
    return p2

    .line 1293
    .restart local v0    # "childCount":I
    .restart local v1    # "childpos":I
    .restart local v2    # "grouppos":I
    .restart local v4    # "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .restart local p2    # "height":I
    :cond_2
    iget v5, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    if-eq v2, v5, :cond_3

    iget v5, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-ne v2, v5, :cond_1

    .line 1297
    :cond_3
    iget v5, p0, Landroid/widget/ExpandableListConnector;->mHeightOffset:F

    add-int/lit8 v6, v1, 0x1

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v7, v8, v7

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1299
    iget v5, p0, Landroid/widget/ExpandableListConnector;->mHeightOffset:F

    int-to-float v6, v1

    int-to-float v7, v0

    div-float v7, v8, v7

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 1300
    const/4 p2, 0x0

    goto :goto_0

    .line 1303
    :cond_4
    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ExpandableListConnector;->mHeightOffset:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    int-to-float v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .local v3, "h":I
    move p2, v3

    .line 1304
    goto :goto_0
.end method

.method collapseGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 635
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 637
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 638
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 639
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 650
    :cond_0
    :goto_0
    return v2

    .line 641
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 646
    .local v2, "retValue":Z
    iget-boolean v3, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-nez v3, :cond_0

    .line 647
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 6
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 667
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v3, :cond_0

    .line 709
    :goto_0
    return v1

    .line 670
    :cond_0
    iget-boolean v3, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-eqz v3, :cond_3

    .line 671
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mPositionMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 672
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    .line 673
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iput v1, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    .line 674
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    invoke-interface {v1, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 675
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListConnector;->getCollapseDuration(I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    .line 676
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 677
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v3}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 678
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 681
    :cond_1
    new-instance v1, Landroid/widget/ExpandableListConnector$1;

    invoke-direct {v1, p0}, Landroid/widget/ExpandableListConnector$1;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v1, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    .line 692
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    move v1, v2

    .line 693
    goto :goto_0

    .line 698
    .end local v0    # "childCount":I
    :cond_3
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 701
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 704
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 707
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v3}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    move v1, v2

    .line 709
    goto :goto_0
.end method

.method colorCollapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 6
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1256
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v4, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-ltz v3, :cond_3

    .line 1258
    :cond_0
    iget v3, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-ltz v3, :cond_1

    .line 1259
    const/4 v3, 0x2

    iget v4, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    invoke-static {v3, v4, v5, v5}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 1261
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1262
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1263
    if-nez v1, :cond_2

    .line 1276
    .end local v0    # "elGroupPos":Landroid/widget/ExpandableListPosition;
    .end local v1    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    :goto_0
    return v2

    .line 1266
    .restart local v0    # "elGroupPos":Landroid/widget/ExpandableListPosition;
    .restart local v1    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    move-object p1, v1

    .line 1272
    .end local v0    # "elGroupPos":Landroid/widget/ExpandableListPosition;
    .end local v1    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_3
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1273
    invoke-direct {p0, v2, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1274
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 1275
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1276
    const/4 v2, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 719
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 721
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 722
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 723
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 724
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 725
    return v2
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 11
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 737
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-gez v5, :cond_0

    .line 739
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Need group"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_0
    iget v5, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v5, :cond_2

    .line 805
    :cond_1
    :goto_0
    return v4

    .line 745
    :cond_2
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v5, :cond_1

    .line 749
    iget-boolean v5, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-eqz v5, :cond_4

    .line 750
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    iput v5, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    .line 751
    iput v10, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    .line 752
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    .line 753
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 755
    :cond_3
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v6, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 756
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListConnector;->getExpandDuration(I)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    .line 757
    new-instance v5, Landroid/widget/ExpandableListConnector$2;

    invoke-direct {v5, p0}, Landroid/widget/ExpandableListConnector$2;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v5, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    .line 766
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;

    iget-wide v8, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 772
    .end local v0    # "childCount":I
    :cond_4
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v5, v6, :cond_5

    .line 776
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 778
    .local v1, "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 780
    .local v2, "collapsedIndex":I
    iget v5, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v5}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 783
    iget v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v5, v2, :cond_5

    .line 784
    iget v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 788
    .end local v1    # "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v2    # "collapsedIndex":I
    :cond_5
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v6

    invoke-static {v10, v10, v5, v6, v7}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v3

    .line 794
    .local v3, "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 797
    invoke-direct {p0, v4, v4}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 800
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 803
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v5, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 805
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 19
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    .line 890
    .local v3, "count":I
    if-nez v3, :cond_0

    .line 891
    const/4 v11, -0x1

    .line 960
    :goto_0
    return v11

    .line 895
    :cond_0
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v11, p1, v14

    if-nez v11, :cond_1

    .line 896
    const/4 v11, -0x1

    goto :goto_0

    .line 900
    :cond_1
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 901
    add-int/lit8 v11, v3, -0x1

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 903
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    add-long v4, v14, v16

    .line 908
    .local v4, "endTime":J
    move/from16 v6, p3

    .line 911
    .local v6, "first":I
    move/from16 v9, p3

    .line 914
    .local v9, "last":I
    const/4 v10, 0x0

    .line 924
    .local v10, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 925
    .local v2, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_4

    .line 926
    const/4 v11, -0x1

    goto :goto_0

    .line 944
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v12, "rowId":J
    :cond_2
    if-nez v7, :cond_3

    if-eqz v10, :cond_9

    if-nez v8, :cond_9

    .line 946
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 947
    move/from16 p3, v9

    .line 949
    const/4 v10, 0x0

    .line 929
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v11, v14, v4

    if-gtz v11, :cond_6

    .line 930
    move/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v12

    .line 931
    .restart local v12    # "rowId":J
    cmp-long v11, v12, p1

    if-nez v11, :cond_5

    move/from16 v11, p3

    .line 933
    goto :goto_0

    .line 936
    :cond_5
    add-int/lit8 v11, v3, -0x1

    if-ne v9, v11, :cond_7

    const/4 v8, 0x1

    .line 937
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 939
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 960
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_6
    const/4 v11, -0x1

    goto :goto_0

    .line 936
    .restart local v12    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 937
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 950
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v10, :cond_4

    if-nez v7, :cond_4

    .line 952
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 953
    move/from16 p3, v6

    .line 955
    const/4 v10, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 839
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 840
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 842
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 25
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 271
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 274
    .local v23, "numExpGroups":I
    const/4 v13, 0x0

    .line 275
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v23, -0x1

    .line 276
    .local v19, "rightExpGroupIndex":I
    const/16 v22, 0x0

    .line 279
    .local v22, "midExpGroupIndex":I
    if-nez v23, :cond_9

    .line 285
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 375
    .end local v22    # "midExpGroupIndex":I
    .local v7, "midExpGroupIndex":I
    :goto_0
    return-object v2

    .line 294
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 295
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 296
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 298
    .local v6, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 302
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 303
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 307
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 308
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 313
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 315
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 319
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 323
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 332
    .end local v6    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 334
    const/4 v2, 0x0

    goto :goto_0

    .line 342
    :cond_6
    if-le v13, v7, :cond_7

    .line 353
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 354
    .local v21, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 358
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 360
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 368
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 369
    .local v24, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 372
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 375
    .end local v8    # "flPos":I
    .end local v24    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7    # "midExpGroupIndex":I
    .restart local v22    # "midExpGroupIndex":I
    :cond_9
    move/from16 v7, v22

    .end local v22    # "midExpGroupIndex":I
    .restart local v7    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 415
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 416
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 428
    return-object v1

    .line 418
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 419
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 423
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 433
    .local v4, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v5, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 436
    .local v2, "groupId":J
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 437
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v6

    .line 447
    .local v6, "retValue":J
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 449
    return-wide v6

    .line 438
    .end local v6    # "retValue":J
    :cond_0
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 439
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v5, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 441
    .local v0, "childId":J
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v6

    .line 442
    .restart local v6    # "retValue":J
    goto :goto_0

    .line 444
    .end local v0    # "childId":J
    .end local v6    # "retValue":J
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v6, 0x2

    .line 501
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 502
    .local v2, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 505
    .local v3, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v5, :cond_1

    .line 506
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 508
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v5, v6, :cond_0

    .line 509
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v4

    .line 522
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v4, "retValue":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 524
    return v4

    .line 511
    .end local v4    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v3, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 512
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v5

    add-int v4, v5, v1

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 515
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v4    # "retValue":I
    :cond_1
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v5, v6, :cond_2

    .line 516
    const/4 v4, 0x0

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 518
    .end local v4    # "retValue":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 20
    .param p1, "flPos"    # I

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 121
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 124
    .local v17, "numExpGroups":I
    const/4 v15, 0x0

    .line 125
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v19, v17, -0x1

    .line 126
    .local v19, "rightExpGroupIndex":I
    const/16 v16, 0x0

    .line 129
    .local v16, "midExpGroupIndex":I
    if-nez v17, :cond_7

    .line 135
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 254
    .end local v16    # "midExpGroupIndex":I
    .local v6, "midExpGroupIndex":I
    :goto_0
    return-object v1

    .line 151
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 152
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 155
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 157
    .local v5, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 162
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 163
    :cond_1
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 168
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 169
    :cond_2
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 174
    const/4 v2, 0x2

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_3
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 186
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 187
    .local v4, "childPos":I
    const/4 v2, 0x1

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 203
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 206
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 213
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    .line 221
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 223
    .local v14, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 229
    iget v1, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 254
    .end local v14    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 231
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 238
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 240
    .local v18, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 248
    move-object/from16 v0, v18

    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 249
    goto :goto_2

    .line 251
    .end local v18    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6    # "midExpGroupIndex":I
    .end local v9    # "groupPos":I
    .end local v12    # "insertPosition":I
    .restart local v16    # "midExpGroupIndex":I
    :cond_7
    move/from16 v6, v16

    .end local v16    # "midExpGroupIndex":I
    .restart local v6    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK : 2015-06-24 : Modify for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 456
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 459
    .local v8, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 494
    .local v9, "retValue":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 496
    return-object v9

    .line 462
    .end local v9    # "retValue":Landroid/view/View;
    :cond_1
    iget-object v0, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v10, :cond_5

    .line 463
    iget-object v0, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_3

    move v3, v10

    .line 465
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 470
    .restart local v9    # "retValue":Landroid/view/View;
    if-eqz v9, :cond_0

    iget-boolean v0, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 472
    const/4 v7, 0x0

    .line 474
    .local v7, "isfirst":Z
    iget-object v0, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    if-nez v0, :cond_2

    .line 475
    const/4 v7, 0x1

    .line 477
    :cond_2
    iget v0, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    iget-object v1, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ne v0, v1, :cond_4

    .line 478
    new-instance v6, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    invoke-direct {v6, p0, v9, v10, v7}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;-><init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;IZ)V

    .line 479
    .local v6, "animation":Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;
    iget-wide v0, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 480
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->start()V

    goto :goto_0

    .end local v3    # "isLastChild":Z
    .end local v6    # "animation":Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;
    .end local v7    # "isfirst":Z
    .end local v9    # "retValue":Landroid/view/View;
    :cond_3
    move v3, v11

    .line 463
    goto :goto_1

    .line 481
    .restart local v3    # "isLastChild":Z
    .restart local v7    # "isfirst":Z
    .restart local v9    # "retValue":Landroid/view/View;
    :cond_4
    iget v0, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    iget-object v1, v8, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ne v0, v1, :cond_0

    .line 482
    new-instance v6, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;

    invoke-direct {v6, p0, v9, v11, v7}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;-><init>(Landroid/widget/ExpandableListConnector;Landroid/view/View;IZ)V

    .line 483
    .restart local v6    # "animation":Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;
    iget-wide v0, p0, Landroid/widget/ExpandableListConnector;->mDuration:J

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 484
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;->start()V

    goto :goto_0

    .line 491
    .end local v3    # "isLastChild":Z
    .end local v6    # "animation":Landroid/widget/ExpandableListConnector$ColorExpandListAnimation;
    .end local v7    # "isfirst":Z
    .end local v9    # "retValue":Landroid/view/View;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 530
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 532
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 534
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method isCollapsingGroup(I)Z
    .locals 1
    .param p1, "grouppos"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1342
    iget v0, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 872
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 873
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "flatListPos"    # I

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 387
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 390
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget v3, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 391
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 397
    .local v2, "retValue":Z
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 399
    return v2

    .line 394
    .end local v2    # "retValue":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "retValue":Z
    goto :goto_0
.end method

.method public isExpandAnimationEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1228
    iget-boolean v0, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    return v0
.end method

.method isExpandCollapse(I)Z
    .locals 5
    .param p1, "position"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1315
    iget-boolean v4, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-nez v4, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return v3

    .line 1318
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1319
    .local v2, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    const/4 v1, 0x0

    .line 1320
    .local v1, "isExpand":Z
    if-eqz v2, :cond_0

    .line 1321
    iget-object v4, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 1322
    .local v0, "grouppos":I
    iget v4, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    if-eq v0, v4, :cond_2

    iget v4, p0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    if-ne v4, v0, :cond_0

    .line 1323
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isExpandingGroup(I)Z
    .locals 1
    .param p1, "grouppos"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1334
    iget v0, p0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 815
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 816
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 818
    .local v0, "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 819
    const/4 v2, 0x1

    .line 823
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 815
    .restart local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 823
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandAnimationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "XiaoKang.Feng@Plf.SDK, 2015-06-24 : Add for color style expandable list"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1236
    iget-boolean v1, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1237
    iput-boolean p1, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    .line 1238
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ExpandableListConnector;->mExpandAnimationEnabled:Z

    if-eqz v1, :cond_0

    .line 1240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 1241
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    .line 1249
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    :goto_0
    return-void

    .line 1242
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1243
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1245
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ExpandableListConnector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 103
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 859
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 860
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 866
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 867
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 830
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 831
    return-void
.end method
