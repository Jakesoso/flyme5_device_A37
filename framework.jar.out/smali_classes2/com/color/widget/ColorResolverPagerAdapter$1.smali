.class Lcom/color/widget/ColorResolverPagerAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorResolverPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorResolverPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorResolverPagerAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorResolverPagerAdapter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter$1;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter$1;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-virtual {v0}, Lcom/color/widget/ColorResolverPagerAdapter;->dismiss()V

    .line 80
    return-void
.end method
