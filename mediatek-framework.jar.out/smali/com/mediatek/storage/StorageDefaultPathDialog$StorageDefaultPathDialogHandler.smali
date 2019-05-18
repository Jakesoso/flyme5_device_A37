.class Lcom/mediatek/storage/StorageDefaultPathDialog$StorageDefaultPathDialogHandler;
.super Landroid/os/Handler;
.source "StorageDefaultPathDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/storage/StorageDefaultPathDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageDefaultPathDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/storage/StorageDefaultPathDialog;


# direct methods
.method public constructor <init>(Lcom/mediatek/storage/StorageDefaultPathDialog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog$StorageDefaultPathDialogHandler;->this$0:Lcom/mediatek/storage/StorageDefaultPathDialog;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    return-void
.end method
