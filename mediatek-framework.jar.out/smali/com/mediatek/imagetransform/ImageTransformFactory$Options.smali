.class public Lcom/mediatek/imagetransform/ImageTransformFactory$Options;
.super Ljava/lang/Object;
.source "ImageTransformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/imagetransform/ImageTransformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Options"
.end annotation


# instance fields
.field private cropRoi:Landroid/graphics/Rect;

.field private dither:Z

.field private encodingQuality:I

.field private flip:Ljava/lang/String;

.field private rotation:I

.field private sharpness:I

.field final synthetic this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;


# direct methods
.method public constructor <init>(Lcom/mediatek/imagetransform/ImageTransformFactory;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/imagetransform/ImageTransformFactory$Options;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/imagetransform/ImageTransformFactory$Options;

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I

    return v0
.end method


# virtual methods
.method public getCropRoi()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEncodingQuality()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I

    return v0
.end method

.method public getFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I

    return v0
.end method

.method public getSharpness()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I

    return v0
.end method

.method public isDither()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z

    return v0
.end method

.method public setCropRoi(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cropRoi"    # Landroid/graphics/Rect;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->cropRoi:Landroid/graphics/Rect;

    .line 189
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->dither:Z

    .line 253
    return-void
.end method

.method public setEncodingQuality(I)V
    .locals 0
    .param p1, "encodingQuality"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->encodingQuality:I

    .line 237
    return-void
.end method

.method public setFlip(Ljava/lang/String;)V
    .locals 0
    .param p1, "flip"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->flip:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->rotation:I

    .line 221
    return-void
.end method

.method public setSharpness(I)V
    .locals 0
    .param p1, "sharpness"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$Options;->sharpness:I

    .line 269
    return-void
.end method
