.class Lcom/android/server/wifi/WifiNetworkAvailable$3;
.super Ljava/lang/Object;
.source "WifiNetworkAvailable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNetworkAvailable;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkAvailable;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$3;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$3;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1502(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 668
    return-void
.end method
