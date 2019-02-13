.class Lcom/color/widget/ColorViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ColorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorViewPager;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorViewPager;)V
    .locals 0

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/color/widget/ColorViewPager$PagerObserver;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorViewPager;Lcom/color/widget/ColorViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorViewPager;
    .param p2, "x1"    # Lcom/color/widget/ColorViewPager$1;

    .prologue
    .line 2832
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager$PagerObserver;-><init>(Lcom/color/widget/ColorViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$PagerObserver;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->dataSetChanged()V

    .line 2836
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/color/widget/ColorViewPager$PagerObserver;->this$0:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->dataSetChanged()V

    .line 2840
    return-void
.end method
