.class Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;
.super Ljava/lang/Object;
.source "GaussianBlur.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/launcher/graphic/GaussianBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final core:I

.field private final cores:I

.field private final hasAlpha:Z

.field private final height:I

.field private final inout:[I

.field private final radius:I

.field private final step:I

.field final synthetic this$0:Lcom/oppo/launcher/graphic/GaussianBlur;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/oppo/launcher/graphic/GaussianBlur;[IIIIIIIZ)V
    .locals 0
    .param p2, "src"    # [I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "r"    # I
    .param p6, "totalCores"    # I
    .param p7, "coreIndex"    # I
    .param p8, "round"    # I
    .param p9, "alpha"    # Z

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->this$0:Lcom/oppo/launcher/graphic/GaussianBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->inout:[I

    .line 235
    iput p3, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->width:I

    .line 236
    iput p4, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->height:I

    .line 237
    iput p5, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->radius:I

    .line 238
    iput p6, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->cores:I

    .line 239
    iput p7, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->core:I

    .line 240
    iput p8, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->step:I

    .line 241
    iput-boolean p9, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->hasAlpha:Z

    .line 242
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->hasAlpha:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->this$0:Lcom/oppo/launcher/graphic/GaussianBlur;

    iget-object v1, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->inout:[I

    iget v2, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->width:I

    iget v3, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->height:I

    iget v4, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->radius:I

    iget v5, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->cores:I

    iget v6, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->core:I

    iget v7, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->step:I

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIterationAlpha_native([IIIIIII)V

    .line 251
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->this$0:Lcom/oppo/launcher/graphic/GaussianBlur;

    iget-object v1, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->inout:[I

    iget v2, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->width:I

    iget v3, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->height:I

    iget v4, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->radius:I

    iget v5, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->cores:I

    iget v6, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->core:I

    iget v7, p0, Lcom/oppo/launcher/graphic/GaussianBlur$BlurTask;->step:I

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurIteration_native([IIIIIII)V

    goto :goto_0
.end method
