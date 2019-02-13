.class Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;
.super Ljava/lang/Object;
.source "ColorResolverPagerAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorResolverPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[[",
        "Lcom/color/widget/ColorItem;",
        ">;"
    }
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/color/widget/ColorResolverPagerAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverPagerAdapter;I)V
    .locals 0
    .param p2, "p"    # I

    .prologue
    .line 188
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p2, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->position:I

    .line 190
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->call()[[Lcom/color/widget/ColorItem;

    move-result-object v0

    return-object v0
.end method

.method public call()[[Lcom/color/widget/ColorItem;
    .locals 5

    .prologue
    .line 194
    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    # getter for: Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;
    invoke-static {v1}, Lcom/color/widget/ColorResolverPagerAdapter;->access$100(Lcom/color/widget/ColorResolverPagerAdapter;)Ljava/util/List;

    move-result-object v2

    iget v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->position:I

    sget v3, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    mul-int/2addr v3, v1

    iget v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->position:I

    add-int/lit8 v1, v1, 0x1

    sget v4, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    # getter for: Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;
    invoke-static {v4}, Lcom/color/widget/ColorResolverPagerAdapter;->access$100(Lcom/color/widget/ColorResolverPagerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    # getter for: Lcom/color/widget/ColorResolverPagerAdapter;->mRiList:Ljava/util/List;
    invoke-static {v1}, Lcom/color/widget/ColorResolverPagerAdapter;->access$100(Lcom/color/widget/ColorResolverPagerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    # getter for: Lcom/color/widget/ColorResolverPagerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/color/widget/ColorResolverPagerAdapter;->access$200(Lcom/color/widget/ColorResolverPagerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/widget/ColorItemHelper;->getAppInfo(Ljava/util/List;Landroid/content/pm/PackageManager;)[[Lcom/color/widget/ColorItem;

    move-result-object v0

    .line 199
    .local v0, "appinfo":[[Lcom/color/widget/ColorItem;
    iget-object v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    iget v2, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/color/widget/ColorResolverPagerAdapter;->addBitmapToMemoryCache(Ljava/lang/Integer;[[Lcom/color/widget/ColorItem;)V

    .line 200
    return-object v0

    .line 194
    .end local v0    # "appinfo":[[Lcom/color/widget/ColorItem;
    :cond_0
    iget v1, p0, Lcom/color/widget/ColorResolverPagerAdapter$BitmapTask;->position:I

    add-int/lit8 v1, v1, 0x1

    sget v4, Lcom/color/widget/ColorResolverPagerAdapter;->PAGE_SIZE:I

    mul-int/2addr v1, v4

    goto :goto_0
.end method
