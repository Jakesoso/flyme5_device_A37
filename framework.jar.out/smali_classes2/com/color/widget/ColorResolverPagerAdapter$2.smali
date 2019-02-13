.class Lcom/color/widget/ColorResolverPagerAdapter$2;
.super Ljava/lang/Object;
.source "ColorResolverPagerAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorResolverPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Z)V
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
    .line 102
    iput-object p1, p0, Lcom/color/widget/ColorResolverPagerAdapter$2;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/color/widget/ColorResolverPagerAdapter$2;->this$0:Lcom/color/widget/ColorResolverPagerAdapter;

    # setter for: Lcom/color/widget/ColorResolverPagerAdapter;->mIsChecked:Z
    invoke-static {v0, p2}, Lcom/color/widget/ColorResolverPagerAdapter;->access$002(Lcom/color/widget/ColorResolverPagerAdapter;Z)Z

    .line 106
    return-void
.end method
