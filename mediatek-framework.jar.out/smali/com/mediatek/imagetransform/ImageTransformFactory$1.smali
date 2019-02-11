.class Lcom/mediatek/imagetransform/ImageTransformFactory$1;
.super Ljava/lang/Object;
.source "ImageTransformFactory.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/imagetransform/ImageTransformFactory;->prepareImageReader(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;


# direct methods
.method constructor <init>(Lcom/mediatek/imagetransform/ImageTransformFactory;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$1;->this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 333
    .local v0, "image":Landroid/media/Image;
    const-string v1, "ImageTransformFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onImageAvailable], imageReader, image:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$1;->this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;

    # setter for: Lcom/mediatek/imagetransform/ImageTransformFactory;->mDstImage:Landroid/media/Image;
    invoke-static {v1, v0}, Lcom/mediatek/imagetransform/ImageTransformFactory;->access$602(Lcom/mediatek/imagetransform/ImageTransformFactory;Landroid/media/Image;)Landroid/media/Image;

    .line 335
    iget-object v1, p0, Lcom/mediatek/imagetransform/ImageTransformFactory$1;->this$0:Lcom/mediatek/imagetransform/ImageTransformFactory;

    # getter for: Lcom/mediatek/imagetransform/ImageTransformFactory;->mImageReadyVariable:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/mediatek/imagetransform/ImageTransformFactory;->access$700(Lcom/mediatek/imagetransform/ImageTransformFactory;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 336
    return-void
.end method
