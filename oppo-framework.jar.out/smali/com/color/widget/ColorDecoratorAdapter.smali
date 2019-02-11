.class public abstract Lcom/color/widget/ColorDecoratorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorDecoratorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorDecoratorAdapter"


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field private mIsFilterable:Z


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mIsFilterable:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    .line 56
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorDecoratorAdapter;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 57
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 85
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 70
    return-void
.end method

.method setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    .line 162
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mIsFilterable:Z

    .line 163
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/ColorDecoratorAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    return-void
.end method
