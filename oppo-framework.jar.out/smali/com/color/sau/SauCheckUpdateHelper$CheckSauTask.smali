.class public Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;
.super Landroid/os/AsyncTask;
.source "SauCheckUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/sau/SauCheckUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckSauTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/color/sau/SauPkgUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/sau/SauCheckUpdateHelper;


# direct methods
.method public constructor <init>(Lcom/color/sau/SauCheckUpdateHelper;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    iget-object v1, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    # getter for: Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/color/sau/SauCheckUpdateHelper;->access$000(Lcom/color/sau/SauCheckUpdateHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    # getter for: Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/color/sau/SauCheckUpdateHelper;->access$000(Lcom/color/sau/SauCheckUpdateHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/color/sau/SauCheckUpdateHelper;->getUpdateInfoFromDB(Landroid/content/Context;Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;
    invoke-static {v0, v1, v2}, Lcom/color/sau/SauCheckUpdateHelper;->access$100(Lcom/color/sau/SauCheckUpdateHelper;Landroid/content/Context;Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->doInBackground([Ljava/lang/String;)Lcom/color/sau/SauPkgUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/color/sau/SauPkgUpdateInfo;)V
    .locals 4
    .param p1, "pkgInfo"    # Lcom/color/sau/SauPkgUpdateInfo;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    iget-object v2, p0, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->this$0:Lcom/color/sau/SauCheckUpdateHelper;

    # getter for: Lcom/color/sau/SauCheckUpdateHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/color/sau/SauCheckUpdateHelper;->access$000(Lcom/color/sau/SauCheckUpdateHelper;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/color/sau/SauCheckUpdateHelper;->createUpdateAlertDialog(Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)Z
    invoke-static {v1, v2, p1}, Lcom/color/sau/SauCheckUpdateHelper;->access$200(Lcom/color/sau/SauCheckUpdateHelper;Landroid/content/Context;Lcom/color/sau/SauPkgUpdateInfo;)Z

    move-result v0

    .line 132
    .local v0, "doCreate":Z
    # getter for: Lcom/color/sau/SauCheckUpdateHelper;->DEBUG:Z
    invoke-static {}, Lcom/color/sau/SauCheckUpdateHelper;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SauJar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetUpdateInfoTask.onPostExecute result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "doCreate":Z
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lcom/color/sau/SauPkgUpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/color/sau/SauCheckUpdateHelper$CheckSauTask;->onPostExecute(Lcom/color/sau/SauPkgUpdateInfo;)V

    return-void
.end method
