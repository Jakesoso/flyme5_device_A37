.class Lcom/color/widget/ColorSearchViewChangeAnim$5;
.super Ljava/lang/Object;
.source "ColorSearchViewChangeAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$5;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$5;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # invokes: Lcom/color/widget/ColorSearchViewChangeAnim;->showSoftInput()V
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$700(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    .line 147
    return-void
.end method