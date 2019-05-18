.class Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;
.super Landroid/os/FileObserver;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertDataFileListener"
.end annotation


# instance fields
.field observerPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 966
    const/16 v0, 0x108

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->observerPath:Ljava/lang/String;

    .line 967
    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->observerPath:Ljava/lang/String;

    .line 968
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 972
    packed-switch p1, :pswitch_data_0

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 974
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->observerPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->observerPath:Ljava/lang/String;

    const-string v1, "alert_permission_apps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "alert_permission_apps.xml"

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->initAlertAppList(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$2000(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
