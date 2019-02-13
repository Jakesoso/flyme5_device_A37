.class Lcom/oppo/RomUpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/RomUpdateHelper;->initUpdateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/RomUpdateHelper;


# direct methods
.method constructor <init>(Lcom/oppo/RomUpdateHelper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oppo/RomUpdateHelper$1;->this$0:Lcom/oppo/RomUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-eqz p2, :cond_0

    .line 96
    const-string v1, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/RomUpdateHelper$1;->this$0:Lcom/oppo/RomUpdateHelper;

    # getter for: Lcom/oppo/RomUpdateHelper;->mFilterName:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/RomUpdateHelper;->access$000(Lcom/oppo/RomUpdateHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/oppo/RomUpdateHelper$1;->this$0:Lcom/oppo/RomUpdateHelper;

    invoke-virtual {v1}, Lcom/oppo/RomUpdateHelper;->getUpdateFromProvider()V

    .line 101
    .end local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
