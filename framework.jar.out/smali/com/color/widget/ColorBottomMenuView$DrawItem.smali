.class public Lcom/color/widget/ColorBottomMenuView$DrawItem;
.super Ljava/lang/Object;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DrawItem"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDifferentSize:I

.field private mIconMarginTop:I

.field private mIconY:F

.field private mIsBoundsChanged:Z

.field private mMenuIconState:[I

.field private final mMenuItem:Landroid/view/MenuItem;

.field private mMenuPrivateFlags:I

.field private mMenuViewFlags:I

.field private mNewLinePos:I

.field private mPosition:I

.field private mTextMarginTop:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuView;Landroid/view/MenuItem;I)V
    .locals 5
    .param p2, "menuItem"    # Landroid/view/MenuItem;
    .param p3, "position"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1256
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    .line 1244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    .line 1245
    iput v4, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mPosition:I

    .line 1246
    iput v4, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mNewLinePos:I

    .line 1247
    iput v3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mDifferentSize:I

    .line 1248
    iput v3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconMarginTop:I

    .line 1249
    iput v3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextMarginTop:I

    .line 1250
    iput v3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    .line 1251
    iput v3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuViewFlags:I

    .line 1252
    # getter for: Lcom/color/widget/ColorBottomMenuView;->MENU_VIEW_STYLEABLE_LENGTH:I
    invoke-static {}, Lcom/color/widget/ColorBottomMenuView;->access$600()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuIconState:[I

    .line 1253
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I
    invoke-static {v1}, Lcom/color/widget/ColorBottomMenuView;->access$700(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconY:F

    .line 1254
    iput-boolean v2, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIsBoundsChanged:Z

    .line 1257
    iput-object p2, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuItem:Landroid/view/MenuItem;

    .line 1258
    iput p3, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mPosition:I

    .line 1259
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1260
    # getter for: Lcom/color/widget/ColorBottomMenuView;->mUserTextSize:I
    invoke-static {p1}, Lcom/color/widget/ColorBottomMenuView;->access$800(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v0

    .line 1261
    .local v0, "textSize":I
    if-nez v0, :cond_0

    .line 1262
    # getter for: Lcom/color/widget/ColorBottomMenuView;->mDefaultTextSize:I
    invoke-static {p1}, Lcom/color/widget/ColorBottomMenuView;->access$900(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v0

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1265
    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->mDensity:F
    invoke-static {p1}, Lcom/color/widget/ColorBottomMenuView;->access$1000(Lcom/color/widget/ColorBottomMenuView;)F

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->density:F

    .line 1266
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setTop(I)V

    .line 1267
    # getter for: Lcom/color/widget/ColorBottomMenuView;->mBackgroundHeight:I
    invoke-static {p1}, Lcom/color/widget/ColorBottomMenuView;->access$700(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setBottom(I)V

    .line 1268
    return-void
.end method

.method static synthetic access$300(Lcom/color/widget/ColorBottomMenuView$DrawItem;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuViewFlags(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/color/widget/ColorBottomMenuView$DrawItem;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;
    .param p1, "x1"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->hasMenuPrivateFlags(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method private hasMenuPrivateFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1394
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMenuViewFlags(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1374
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuViewFlags:I

    and-int/2addr v0, p2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMenuPrivateFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1386
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    .line 1387
    return-void
.end method

.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDifferentSize()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mDifferentSize:I

    return v0
.end method

.method public getIconMarginTop()I
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconMarginTop:I

    return v0
.end method

.method public getIconY()F
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconY:F

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMenuIconState()[I
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuIconState:[I

    return-object v0
.end method

.method public getMenuItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getMenuPrivateFlags()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    return v0
.end method

.method public getMenuViewFlags()I
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuViewFlags:I

    return v0
.end method

.method public getNewLinePos()I
    .locals 1

    .prologue
    .line 1338
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mNewLinePos:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mPosition:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTextMarginTop()I
    .locals 1

    .prologue
    .line 1362
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextMarginTop:I

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public isBoundsChanged()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIsBoundsChanged:Z

    return v0
.end method

.method public removeMenuPrivateFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1390
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    .line 1391
    return-void
.end method

.method public setBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1312
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1320
    return-void
.end method

.method public setBoundsChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 1410
    iput-boolean p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIsBoundsChanged:Z

    .line 1411
    return-void
.end method

.method public setDifferentSize(I)V
    .locals 0
    .param p1, "different"    # I

    .prologue
    .line 1342
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mDifferentSize:I

    .line 1343
    return-void
.end method

.method public setIconMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1350
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconMarginTop:I

    .line 1351
    return-void
.end method

.method public setIconY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 1327
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mIconY:F

    .line 1328
    return-void
.end method

.method public setLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 1288
    return-void
.end method

.method public setMenuIconState([I)V
    .locals 0
    .param p1, "state"    # [I

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuIconState:[I

    .line 1403
    return-void
.end method

.method public setMenuPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1382
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuPrivateFlags:I

    .line 1383
    return-void
.end method

.method public setMenuViewFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1370
    iget v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuViewFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mMenuViewFlags:I

    .line 1371
    return-void
.end method

.method public setNewLinePos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 1335
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mNewLinePos:I

    .line 1336
    return-void
.end method

.method public setRight(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1296
    return-void
.end method

.method public setTextMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1358
    iput p1, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mTextMarginTop:I

    .line 1359
    return-void
.end method

.method public setTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DrawItem;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 1304
    return-void
.end method
