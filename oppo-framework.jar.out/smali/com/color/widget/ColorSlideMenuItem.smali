.class public Lcom/color/widget/ColorSlideMenuItem;
.super Ljava/lang/Object;
.source "ColorSlideMenuItem.java"


# static fields
.field public static final STYLE_HEAD:I = 0x0

.field public static final STYLE_MilDDLE:I = 0x1

.field public static final STYLE_TAIL:I = 0x2


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field mBackgroundStyleId:[I

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 53
    const v0, 0xc0804ec

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "drawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    const v0, 0xc0804ec

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "id"    # I

    .prologue
    .line 50
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "drawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x36

    iput v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mWidth:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mBackgroundStyleId:[I

    .line 37
    iput-object p1, p0, Lcom/color/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/color/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p2, p0, Lcom/color/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 40
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mWidth:I

    .line 41
    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0xc0804eb
        0xc0804ec
        0xc0804ed
    .end array-data
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mWidth:I

    return v0
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/color/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/widget/ColorSlideMenuItem;->mBackgroundStyleId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/color/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/color/widget/ColorSlideMenuItem;->mWidth:I

    .line 87
    return-void
.end method
