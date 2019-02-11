.class public Lcom/color/widget/ColorItem$Builder;
.super Ljava/lang/Object;
.source "ColorItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ci:Lcom/color/widget/ColorItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/color/widget/ColorItem;

    invoke-direct {v0}, Lcom/color/widget/ColorItem;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    .line 52
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    # setter for: Lcom/color/widget/ColorItem;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/color/widget/ColorItem;->access$002(Lcom/color/widget/ColorItem;Landroid/content/Context;)Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public create()Lcom/color/widget/ColorItem;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    return-object v0
.end method

.method public setBackgroud(I)Lcom/color/widget/ColorItem$Builder;
    .locals 2
    .param p1, "bgResId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    iget-object v1, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    invoke-virtual {v1}, Lcom/color/widget/ColorItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/color/widget/ColorItem;->mBackgroud:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/color/widget/ColorItem;->access$302(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 82
    return-object p0
.end method

.method public setBackgroud(Landroid/graphics/drawable/Drawable;)Lcom/color/widget/ColorItem$Builder;
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    # setter for: Lcom/color/widget/ColorItem;->mBackgroud:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/color/widget/ColorItem;->access$302(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 77
    return-object p0
.end method

.method public setIcon(I)Lcom/color/widget/ColorItem$Builder;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    iget-object v1, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    invoke-virtual {v1}, Lcom/color/widget/ColorItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/color/widget/ColorItem;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/color/widget/ColorItem;->access$202(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 72
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/color/widget/ColorItem$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    # setter for: Lcom/color/widget/ColorItem;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/color/widget/ColorItem;->access$202(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 67
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/color/widget/ColorItem$OnItemClickListener;)Lcom/color/widget/ColorItem$Builder;
    .locals 1
    .param p1, "e"    # Lcom/color/widget/ColorItem$OnItemClickListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    # setter for: Lcom/color/widget/ColorItem;->mOnItemClickListener:Lcom/color/widget/ColorItem$OnItemClickListener;
    invoke-static {v0, p1}, Lcom/color/widget/ColorItem;->access$402(Lcom/color/widget/ColorItem;Lcom/color/widget/ColorItem$OnItemClickListener;)Lcom/color/widget/ColorItem$OnItemClickListener;

    .line 87
    return-object p0
.end method

.method public setText(I)Lcom/color/widget/ColorItem$Builder;
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    iget-object v1, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    invoke-virtual {v1}, Lcom/color/widget/ColorItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/color/widget/ColorItem;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/color/widget/ColorItem;->access$102(Lcom/color/widget/ColorItem;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/color/widget/ColorItem$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/color/widget/ColorItem$Builder;->ci:Lcom/color/widget/ColorItem;

    # setter for: Lcom/color/widget/ColorItem;->mText:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/color/widget/ColorItem;->access$102(Lcom/color/widget/ColorItem;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    return-object p0
.end method
