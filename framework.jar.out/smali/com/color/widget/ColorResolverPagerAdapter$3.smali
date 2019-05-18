.class Lcom/color/widget/ColorResolverPagerAdapter$3;
.super Landroid/util/LruCache;
.source "ColorResolverPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorResolverPagerAdapter;->setCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "[[",
        "Lcom/color/widget/ColorItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorResolverPagerAdapter;

.field final synthetic val$maxMemory:I


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverPagerAdapter;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter$3;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    iput p3, p0, Lcom/color/widget/ColorResolverPagerAdapter$3;->val$maxMemory:I

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Integer;[[Lcom/color/widget/ColorItem;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "appinfo"    # [[Lcom/color/widget/ColorItem;

    .prologue
    .line 146
    iget v0, p0, Lcom/color/widget/ColorResolverPagerAdapter$3;->val$maxMemory:I

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [[Lcom/color/widget/ColorItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorResolverPagerAdapter$3;->sizeOf(Ljava/lang/Integer;[[Lcom/color/widget/ColorItem;)I

    move-result v0

    return v0
.end method
