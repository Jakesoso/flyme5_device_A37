.class final Lcom/color/widget/ColorViewPager$1;
.super Ljava/lang/Object;
.source "ColorViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/color/widget/ColorViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/color/widget/ColorViewPager$ItemInfo;Lcom/color/widget/ColorViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/color/widget/ColorViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/color/widget/ColorViewPager$ItemInfo;

    .prologue
    .line 116
    iget v0, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/color/widget/ColorViewPager$ItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorViewPager$1;->compare(Lcom/color/widget/ColorViewPager$ItemInfo;Lcom/color/widget/ColorViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
