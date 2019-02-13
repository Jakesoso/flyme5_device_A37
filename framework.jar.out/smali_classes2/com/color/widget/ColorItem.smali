.class public Lcom/color/widget/ColorItem;
.super Ljava/lang/Object;
.source "ColorItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorItem$Builder;,
        Lcom/color/widget/ColorItem$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final ITEM_FIFTH:I = 0x4

.field public static final ITEM_FIRST:I = 0x0

.field public static final ITEM_FOURTH:I = 0x3

.field public static final ITEM_SECOND:I = 0x1

.field public static final ITEM_THIRD:I = 0x2


# instance fields
.field private mBackgroud:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mOnItemClickListener:Lcom/color/widget/ColorItem$OnItemClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/widget/ColorItem;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorItem;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lcom/color/widget/ColorItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/color/widget/ColorItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/color/widget/ColorItem;Lcom/color/widget/ColorItem$OnItemClickListener;)Lcom/color/widget/ColorItem$OnItemClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorItem;
    .param p1, "x1"    # Lcom/color/widget/ColorItem$OnItemClickListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mOnItemClickListener:Lcom/color/widget/ColorItem$OnItemClickListener;

    return-object p1
.end method


# virtual methods
.method public getBackgroud()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/color/widget/ColorItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/color/widget/ColorItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/color/widget/ColorItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/color/widget/ColorItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/color/widget/ColorItem;->mOnItemClickListener:Lcom/color/widget/ColorItem$OnItemClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/color/widget/ColorItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroud"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 109
    return-void
.end method

.method public setOnItemClickListener(Lcom/color/widget/ColorItem$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/color/widget/ColorItem$OnItemClickListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mOnItemClickListener:Lcom/color/widget/ColorItem$OnItemClickListener;

    .line 133
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mText"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/color/widget/ColorItem;->mText:Ljava/lang/String;

    .line 101
    return-void
.end method
