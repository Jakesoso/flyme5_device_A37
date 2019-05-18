.class public Lcom/oppo/widget/OppoEmptyBottle;
.super Lcom/color/widget/ColorEmptyPage;
.source "OppoEmptyBottle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEmptyBottle"


# instance fields
.field private mContentWidth:I

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextView:Ljava/lang/String;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextMarginTop:I

.field protected mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field protected mTextView:Ljava/lang/String;

.field private mUserColor:I

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserTextView:Ljava/lang/String;

.field private mViewMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoEmptyBottle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0xc010477

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoEmptyBottle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorEmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mDefaultColor:I

    .line 56
    iput v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mUserColor:I

    .line 58
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mTextPaint:Landroid/text/TextPaint;

    .line 59
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mDefaultTextView:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mUserTextView:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mTextView:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iput v2, p0, Lcom/oppo/widget/OppoEmptyBottle;->mViewMarginTop:I

    .line 66
    iput v2, p0, Lcom/oppo/widget/OppoEmptyBottle;->mContentWidth:I

    .line 101
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/color/widget/ColorEmptyPage;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorEmptyPage;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/color/widget/ColorEmptyPage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setMessage(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/color/widget/ColorEmptyPage;->setMessage(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/color/widget/ColorEmptyPage;->setTextColor(I)V

    .line 212
    return-void
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public useDeepColorStyle(Z)V
    .locals 2
    .param p1, "deepColorStyle"    # Z

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    const-string v0, "OppoEmptyBottle"

    const-string v1, "Please don\'t use deepColorStyle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method
