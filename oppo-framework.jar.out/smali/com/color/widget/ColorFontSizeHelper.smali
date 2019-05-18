.class public Lcom/color/widget/ColorFontSizeHelper;
.super Ljava/lang/Object;
.source "ColorFontSizeHelper.java"


# instance fields
.field private mLeft:I

.field private mRight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/color/widget/ColorFontSizeHelper;->mLeft:I

    .line 23
    iput v0, p0, Lcom/color/widget/ColorFontSizeHelper;->mRight:I

    .line 26
    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/color/widget/ColorFontSizeHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/color/widget/ColorFontSizeHelper;->mRight:I

    return v0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/color/widget/ColorFontSizeHelper;->mLeft:I

    .line 30
    return-void
.end method

.method public setRight(I)V
    .locals 0
    .param p1, "right"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/color/widget/ColorFontSizeHelper;->mRight:I

    .line 38
    return-void
.end method
