.class public abstract Lcom/color/widget/ColorExpandableListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ColorExpandableListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorExpandableListItemAdapter$1;,
        Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;,
        Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;,
        Lcom/color/widget/ColorExpandableListItemAdapter$RootView;,
        Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULTCONTENTPARENTRESID:I = 0x2711

.field private static final DEFAULTTITLEPARENTRESID:I = 0x2710


# instance fields
.field private mActionViewResId:I

.field private mContentParentResId:I

.field private mContext:Landroid/content/Context;

.field private mExpandedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private mOnExpandGroupClickListener:Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

.field private mTitleParentResId:I

.field private mViewLayoutResId:I

.field private mVisibleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorExpandableListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "titleParentResId"    # I
    .param p4, "contentParentResId"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorExpandableListItemAdapter;-><init>(Landroid/content/Context;IIILjava/util/List;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "titleParentResId"    # I
    .param p4, "contentParentResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 89
    iput-object p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mViewLayoutResId:I

    .line 91
    iput p3, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mTitleParentResId:I

    .line 92
    iput p4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContentParentResId:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    .line 96
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 65
    iput-object p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContext:Landroid/content/Context;

    .line 66
    const/16 v0, 0x2710

    iput v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mTitleParentResId:I

    .line 67
    const/16 v0, 0x2711

    iput v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContentParentResId:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/color/widget/ColorExpandableListItemAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorExpandableListItemAdapter;

    .prologue
    .line 37
    iget v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorExpandableListItemAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorExpandableListItemAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorExpandableListItemAdapter;)Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorExpandableListItemAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mOnExpandGroupClickListener:Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

    return-object v0
.end method

.method private createView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    iget v1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mViewLayoutResId:I

    if-nez v1, :cond_0

    .line 179
    new-instance v0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;

    iget-object v1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "view":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 181
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mViewLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "view":Landroid/view/ViewGroup;
    goto :goto_0
.end method


# virtual methods
.method public abstract getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    const/4 v8, 0x0

    .line 122
    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    .line 125
    .local v2, "view":Landroid/view/ViewGroup;
    if-nez v2, :cond_3

    .line 126
    invoke-direct {p0, p3}, Lcom/color/widget/ColorExpandableListItemAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 128
    new-instance v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;

    invoke-direct {v3, v8}, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;-><init>(Lcom/color/widget/ColorExpandableListItemAdapter$1;)V

    .line 129
    .local v3, "viewHolder":Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mTitleParentResId:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleParent:Landroid/view/ViewGroup;

    .line 130
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContentParentResId:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    .line 132
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 141
    :goto_0
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I

    if-lez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    :goto_1
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleView:Landroid/view/View;

    iget-object v5, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4, v5}, Lcom/color/widget/ColorExpandableListItemAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "titleView":Landroid/view/View;
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleView:Landroid/view/View;

    if-eq v1, v4, :cond_1

    .line 151
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mActionViewResId:I

    if-nez v4, :cond_5

    .line 155
    new-instance v4, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;

    iget-object v5, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-direct {v4, p0, v5, v8}, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;-><init>(Lcom/color/widget/ColorExpandableListItemAdapter;Landroid/view/View;Lcom/color/widget/ColorExpandableListItemAdapter$1;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_1
    :goto_2
    iput-object v1, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleView:Landroid/view/View;

    .line 162
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentView:Landroid/view/View;

    iget-object v5, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4, v5}, Lcom/color/widget/ColorExpandableListItemAdapter;->getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "contentView":Landroid/view/View;
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentView:Landroid/view/View;

    if-eq v0, v4, :cond_2

    .line 164
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 165
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    :cond_2
    iput-object v0, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentView:Landroid/view/View;

    .line 169
    iget-object v5, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 172
    return-object v2

    .line 134
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "titleView":Landroid/view/View;
    .end local v3    # "viewHolder":Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    :cond_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;

    .line 136
    .restart local v3    # "viewHolder":Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mTitleParentResId:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->titleParent:Landroid/view/ViewGroup;

    .line 137
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mContentParentResId:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 144
    :cond_4
    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 157
    .restart local v1    # "titleView":Landroid/view/View;
    :cond_5
    iget v4, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mActionViewResId:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;

    iget-object v6, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    invoke-direct {v5, p0, v6, v8}, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;-><init>(Lcom/color/widget/ColorExpandableListItemAdapter;Landroid/view/View;Lcom/color/widget/ColorExpandableListItemAdapter$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 169
    .restart local v0    # "contentView":Landroid/view/View;
    :cond_6
    const/16 v4, 0x8

    goto :goto_3
.end method

.method public isExpand(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 187
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setActionViewResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    iput p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mActionViewResId:I

    .line 107
    return-void
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 114
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    iput p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I

    .line 115
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    invoke-virtual {p0}, Lcom/color/widget/ColorExpandableListItemAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public setOnExpandGroupClickListener(Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;)V
    .locals 0
    .param p1, "onExpandGroupClickListener"    # Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

    .prologue
    .line 320
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter;->mOnExpandGroupClickListener:Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

    .line 321
    return-void
.end method
