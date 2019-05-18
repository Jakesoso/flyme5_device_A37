.class Lcom/oppo/widget/OppoTouchSearchView$Key;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Key"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public keyOne:Ljava/lang/CharSequence;

.field public keyTwo:Ljava/lang/CharSequence;

.field public left:I

.field public mKeyLabel:Ljava/lang/CharSequence;

.field public text:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/oppo/widget/OppoTouchSearchView;

.field public top:I


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoTouchSearchView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1856
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 1847
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    .line 1850
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1851
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->text:Ljava/lang/String;

    .line 1852
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    .line 1858
    return-void
.end method

.method public constructor <init>(Lcom/oppo/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .param p2, "keydrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1859
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    .line 1847
    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    .line 1850
    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1851
    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->text:Ljava/lang/String;

    .line 1852
    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    .line 1860
    iput-object p2, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1861
    iput-object p3, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->text:Ljava/lang/String;

    .line 1862
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    .line 1863
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1864
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mUserTextSize:I
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$200(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v0

    .line 1865
    .local v0, "textSize":I
    if-nez v0, :cond_0

    .line 1866
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextSize:I
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$300(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v0

    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1869
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$500(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    # setter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->access$402(Lcom/oppo/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1870
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1871
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$600(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    # setter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->access$402(Lcom/oppo/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1873
    :cond_1
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$700(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1874
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/oppo/widget/OppoTouchSearchView;->access$700(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1876
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1904
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1917
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->left:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->text:Ljava/lang/String;

    .line 1910
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "height"    # I
    .param p4, "compare"    # Ljava/lang/CharSequence;

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1936
    :goto_0
    return-object v0

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1931
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->top:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->top:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_2

    .line 1932
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1933
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->top:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 1934
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1936
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1923
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->top:I

    return v0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 1914
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->left:I

    .line 1915
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 1920
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->top:I

    .line 1921
    return-void
.end method
