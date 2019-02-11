.class Lcom/mediatek/internal/telephony/SvlteRadioManager$1;
.super Ljava/lang/Object;
.source "SvlteRadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # invokes: Lcom/mediatek/internal/telephony/SvlteRadioManager;->registerCIs()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$000(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    .line 133
    return-void
.end method
