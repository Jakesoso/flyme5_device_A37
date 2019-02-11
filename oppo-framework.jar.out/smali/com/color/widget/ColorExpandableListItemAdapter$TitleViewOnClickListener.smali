.class Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;
.super Ljava/lang/Object;
.source "ColorExpandableListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleViewOnClickListener"
.end annotation


# instance fields
.field private mContentParent:Landroid/view/View;

.field final synthetic this$0:Lcom/color/widget/ColorExpandableListItemAdapter;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorExpandableListItemAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "contentParent"    # Landroid/view/View;

    .prologue
    .line 271
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>.TitleViewOnClickListener;"
    iput-object p1, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorExpandableListItemAdapter;Landroid/view/View;Lcom/color/widget/ColorExpandableListItemAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorExpandableListItemAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/color/widget/ColorExpandableListItemAdapter$1;

    .prologue
    .line 267
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>.TitleViewOnClickListener;"
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;-><init>(Lcom/color/widget/ColorExpandableListItemAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;, "Lcom/color/widget/ColorExpandableListItemAdapter<TT;>.TitleViewOnClickListener;"
    const/4 v6, 0x0

    .line 277
    sget-boolean v7, Lcom/color/widget/ColorExpandCollapseHelper;->isCollapsing:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/color/widget/ColorExpandCollapseHelper;->isExpanding:Z

    if-eqz v7, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x1

    .line 281
    .local v4, "isVisible":Z
    :goto_1
    if-nez v4, :cond_3

    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$200(Lcom/color/widget/ColorExpandableListItemAdapter;)I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I
    invoke-static {v8}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$200(Lcom/color/widget/ColorExpandableListItemAdapter;)I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 282
    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 283
    .local v2, "firstId":Ljava/lang/Long;
    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$400(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 284
    .local v1, "firstEV":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;

    .line 286
    .local v3, "firstVH":Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    iget-object v0, v3, Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;->contentParent:Landroid/view/ViewGroup;

    .line 287
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/color/widget/ColorExpandCollapseHelper;->animateCollapsing(Landroid/view/View;)V

    .line 288
    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$400(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v8}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v0    # "contentParent":Landroid/view/ViewGroup;
    .end local v3    # "firstVH":Lcom/color/widget/ColorExpandableListItemAdapter$ViewHolder;
    :cond_2
    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v7}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v8}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    .end local v1    # "firstEV":Landroid/view/View;
    .end local v2    # "firstId":Ljava/lang/Long;
    :cond_3
    if-eqz v4, :cond_6

    .line 294
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-static {v6}, Lcom/color/widget/ColorExpandCollapseHelper;->animateCollapsing(Landroid/view/View;)V

    .line 295
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$400(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mOnExpandGroupClickListener:Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$500(Lcom/color/widget/ColorExpandableListItemAdapter;)Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 307
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mOnExpandGroupClickListener:Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$500(Lcom/color/widget/ColorExpandableListItemAdapter;)Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/color/widget/ColorExpandableListItemAdapter$OnExpandGroupClickListener;->onExpandGroupClick(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v4    # "isVisible":Z
    :cond_5
    move v4, v6

    .line 280
    goto/16 :goto_1

    .line 298
    .restart local v4    # "isVisible":Z
    :cond_6
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-static {v6}, Lcom/color/widget/ColorExpandCollapseHelper;->animateExpanding(Landroid/view/View;)V

    .line 299
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mVisibleIds:Ljava/util/List;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$300(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/List;

    move-result-object v7

    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mLimit:I
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$200(Lcom/color/widget/ColorExpandableListItemAdapter;)I

    move-result v6

    if-lez v6, :cond_4

    .line 302
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 303
    .local v5, "parent":Landroid/view/View;
    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->this$0:Lcom/color/widget/ColorExpandableListItemAdapter;

    # getter for: Lcom/color/widget/ColorExpandableListItemAdapter;->mExpandedViews:Ljava/util/Map;
    invoke-static {v6}, Lcom/color/widget/ColorExpandableListItemAdapter;->access$400(Lcom/color/widget/ColorExpandableListItemAdapter;)Ljava/util/Map;

    move-result-object v7

    iget-object v6, p0, Lcom/color/widget/ColorExpandableListItemAdapter$TitleViewOnClickListener;->mContentParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
